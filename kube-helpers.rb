class KubeHelpers < Formula
  desc "Kubernetes Helper Tools"
  homepage "https://github.com/raszi/kube-helpers"
  url "https://github.com/raszi/kube-helpers/archive/v0.0.3.tar.gz"
  sha256 "2c327eb42abaf8f87257ea607511856ef169df8312a95237090adf49c37fe7d8"

  def install
    bin.install "k-proxy"
  end

  test do
    system "false"
  end
end
