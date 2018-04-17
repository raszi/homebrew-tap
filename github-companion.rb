class GithubCompanion < Formula
  desc "Small tool to interact with GitHub API"
  homepage "https://github.com/whitepages/github-companion"
  url "https://github.com/whitepages/github-companion/releases/download/v0.4.0/github-companion-0.4.0.jar",
      :using => :nounzip
  sha256 "9014ada732313ffcd5dc71b57362c093322658a7e053af3c4534cef97e78bfbb"

  bottle :unneeded
  depends_on :java

  patch :DATA

  def install
    bin.install "github-companion"
    pkgshare.install "github-companion-0.4.0.jar"
  end
end

__END__
diff --git a/github-companion b/github-companion
new file mode 100644
index 0000000..5a91c75
--- /dev/null
+++ b/github-companion
@@ -0,0 +1,10 @@
+#!/bin/bash
+
+java \
+    -client \
+    -XX:+TieredCompilation \
+    -XX:TieredStopAtLevel=1 \
+    -XX:+CMSClassUnloadingEnabled \
+    -Xverify:none \
+    -jar "$(brew --cellar)/github-companion/0.4.0/share/github-companion/github-companion-0.4.0.jar" \
+    "$@"
