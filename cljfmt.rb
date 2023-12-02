class Cljfmt < Formula
  desc "Tool for detecting and fixing formatting errors in Clojure code."
  homepage "https://github.com/weavejester/cljfmt"
  url "https://github.com/weavejester/cljfmt/releases/download/0.11.2/cljfmt-0.11.2-darwin-aarch64.tar.gz"
  sha256 "ac9de3e0835f099dc839f2aa69468be417b774902c4062f371237ee3791865a0"
  head "git@github.com:weavejester/cljfmt.git"

  def install
    bin.install "cljfmt"
  end
end
