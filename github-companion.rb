class GithubCompanion < Formula
  desc "Small tool to interact with GitHub API"
  homepage "https://github.com/whitepages/github-companion"
  url "https://github.com/whitepages/github-companion/releases/download/v0.3.0/github-companion-0.3.0.jar",
      :using => :nounzip
  sha256 "5842a4a83fdcba85cfebc6af5d65e7eb6f08c786ef8e1b660987471e0e300df1"

  bottle :unneeded
  depends_on :java

  patch :DATA

  def install
    bin.install "github-companion"
    pkgshare.install "github-companion-0.3.0.jar"
  end
end

__END__
diff --git a/github-companion b/github-companion
new file mode 100644
index 0000000..5a91c75
--- /dev/null
+++ b/github-companion
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
+    -jar "$(brew --cellar)/github-companion/0.3.0/share/github-companion/github-companion-0.3.0.jar" \
+    "$@"
