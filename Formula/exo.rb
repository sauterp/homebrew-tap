class Exo < Formula
  desc "Manage (almost) everything at Exoscale from the command line."
  homepage "https://exoscale.github.io/cli/"
  url "https://github.com/exoscale/cli/releases/download/v1.0.3/cli_1.0.3_darwin_amd64.tar.gz"
  version "1.0.3"
  sha256 "285ecdf91b7f71085d9b696772a433661557388b99511c0a33ebe09aea669735"

  def install
    bin.install "exo"
  end
end
