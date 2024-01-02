class Cljfmt < Formula
  desc "Tool for detecting and fixing formatting errors in Clojure code."
  homepage "https://github.com/weavejester/cljfmt"
  url "https://github.com/weavejester/cljfmt/releases/download/0.12.0/cljfmt-0.12.0-darwin-aarch64.tar.gz"
  sha256 "24b857a87991edce2f331f64598e76e5dd23df7a3484bbda3a45283cedeab414"
  head "git@github.com:weavejester/cljfmt.git"

  def install
    bin.install "cljfmt"
  end
end
