class GithubChangelog < Formula
  desc "Changelog generator based on GitHub PR titles"
  homepage "https://github.com/whitepages/github-changelog"
  url "https://github.com/whitepages/github-changelog/releases/download/v0.2.0/github-changelog-0.2.0.jar",
      :using => :nounzip
  sha256 "78afa8969cc116c65c3f14873d711cd14a29dc1e95fb2e4b49854b79ad31a3a3"

  bottle :unneeded
  depends_on :java

  patch :DATA

  def install
    bin.install "github-changelog"
    pkgshare.install "github-changelog-0.2.0.jar"
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
+    -jar "$(brew --cellar)/github-changelog/0.2.0/share/github-changelog/github-changelog-0.2.0.jar" \
+    "$@"
