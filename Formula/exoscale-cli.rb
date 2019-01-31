class ExoscaleCli < Formula
  desc "Manage (almost) everything at Exoscale from the command line."
  homepage "https://exoscale.github.io/cli/"
  url "https://github.com/exoscale/cli/releases/download/v1.0.7/exoscale-cli_1.0.7_darwin_amd64.tar.gz"
  version "1.0.7"
  sha256 "009a4cf9825f4e69c302e1f3b495f3106c6043fbe41e1490307a7ce45dbde03a"

  def install
    bin.install "exo"
  end
end
