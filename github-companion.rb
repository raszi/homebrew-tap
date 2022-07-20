# frozen_string_literal: true

class GithubCompanion < Formula
  desc "Small tool to interact with GitHub API"
  homepage "https://github.com/whitepages/github-companion"
  url "https://github.com/whitepages/github-companion/releases/download/v0.5.0/github-companion-0.5.0.jar",
      :using => :nounzip
  sha256 "d4c4cd7d4a7348f3c7ea1fd76a97cb722c6a862057bf4b6f350d318536b0707a"

  depends_on :java

  patch :DATA

  def install
    bin.install "github-companion"
    pkgshare.install "github-companion-0.5.0.jar"
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
+    -jar "$(brew --cellar)/github-companion/0.5.0/share/github-companion/github-companion-0.5.0.jar" \
+    "$@"
