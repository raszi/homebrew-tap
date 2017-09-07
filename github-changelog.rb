class GithubChangelog < Formula
  desc "Changelog generator based on GitHub PR titles"
  homepage "https://github.com/whitepages/github-changelog"
  url "https://github.com/whitepages/github-changelog/releases/download/v0.1.0/github-changelog-0.1.0.jar",
      :using => :nounzip
  sha256 "1d8657caccf35ae5d4607710b836f81ff99b5cd47300a542fdac891245db0606"

  bottle :unneeded
  depends_on :java

  patch :DATA

  def install
    bin.install "github-changelog"
    pkgshare.install "github-changelog-0.1.0.jar"
  end
end

__END__
diff --git a/github-changelog b/github-changelog
new file mode 100644
index 0000000..5a91c75
--- /dev/null
+++ b/github-changelog
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
+    -jar "$(brew --cellar)/github-changelog/0.1.0/share/github-changelog/github-changelog-0.1.0.jar" \
+    "$@"
