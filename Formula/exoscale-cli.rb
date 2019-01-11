class ExoscaleCli < Formula
  desc "Manage (almost) everything at Exoscale from the command line."
  homepage "https://exoscale.github.io/cli/"
  url "https://github.com/exoscale/cli/releases/download/v1.0.6/exoscale-cli_1.0.6_darwin_amd64.tar.gz"
  version "1.0.6"
  sha256 "413add3a3a76a193ab72ecb2adb1964ec2ca657d789749091be7a544b2b2feb5"

  def install
    bin.install "exo"
  end
end
