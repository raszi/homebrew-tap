class KubeHelpers < Formula
  desc 'Kubernetes Helper Tools'
  homepage 'https://github.com/raszi/kube-helpers'
  url 'https://github.com/raszi/kube-helpers/archive/v0.0.2.tar.gz'
  sha256 'bf5a773c64c00fb78c28a3649401846c8a7b5c285617880bec3c54bffc43c276'

  def install
    bin.install 'k-proxy'
  end

  test do
    system 'false'
  end
end
