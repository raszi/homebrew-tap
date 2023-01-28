class Eq < Formula
  desc "Tool for querying edn files"
  homepage "https://github.com/raszi/eq"
  url "https://github.com/raszi/eq/releases/download/v0.1.1/eq-0.1.1.jar",
      using: :nounzip
  sha256 "fa0633bb126efb86ce46bb9d390dd2792b951d33d4c749d792c0bc6ce54d43bc"

  depends_on "openjdk"

  patch :DATA

  def install
    bin.install "eq.sh" => "eq"
    pkgshare.install "eq-0.1.1.jar"
  end

  test do
    ENV.java_cache

    require "open3"
    Open3.popen3("#{bin}/eq", "-M", "(-> first inc)") do |stdin, stdout, _|
      stdin.write "[0 :a]"
      stdin.close

      assert_equal "1", stdout.read.chomp
    end
  end
end

__END__
diff --git a/eq.sh b/eq.sh
new file mode 100755
index 0000000..cd9104b
--- /dev/null
+++ b/eq.sh
@@ -0,0 +1,11 @@
+#!/bin/bash
+
+java \
+    -client \
+    -XX:+TieredCompilation \
+    -XX:TieredStopAtLevel=1 \
+    -XX:+UseConcMarkSweepGC \
+    -XX:+CMSClassUnloadingEnabled \
+    -Xverify:none \
+    -jar "$(brew --cellar)/eq/0.1.1/share/eq/eq-0.1.1.jar" \
+    "$@"
