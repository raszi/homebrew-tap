class GithubCompanion < Formula
  desc "Small tool to interact with GitHub API"
  homepage "https://github.com/whitepages/github-companion"
  url "https://github.com/whitepages/github-companion/releases/download/v0.4.1/github-companion-0.4.1.jar",
      :using => :nounzip
  sha256 "a35c585a96dba456fb732c44200bf43b59c294d47a318c7e290015497a8707f6"

  bottle :unneeded
  depends_on :java

  patch :DATA

  def install
    bin.install "github-companion"
    pkgshare.install "github-companion-0.4.1.jar"
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
+    -jar "$(brew --cellar)/github-companion/0.4.1/share/github-companion/github-companion-0.4.1.jar" \
+    "$@"
