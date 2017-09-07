class GithubCompanion < Formula
  desc "Small tool to interact with GitHub API"
  homepage "https://github.com/whitepages/github-companion"
  url "https://github.com/whitepages/github-companion/releases/download/v0.2.0/github-companion-0.2.0.jar",
      :using => :nounzip
  sha256 "d6b2ff157b696b7d8a270377f44d69ebe79a7d5bb25619e33c35a08c98f5f431"

  bottle :unneeded
  depends_on :java

  patch :DATA

  def install
    bin.install "github-companion"
    pkgshare.install "github-companion-0.2.0.jar"
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
+    -jar "$(brew --cellar)/github-companion/0.2.0/share/github-companion/github-companion-0.2.0.jar" \
+    "$@"
