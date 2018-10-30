class Exo < Formula
  desc "Manage (almost) everything at Exoscale from the command line."
  homepage "https://exoscale.github.io/cli/"
  url "https://github.com/exoscale/cli/releases/download/v1.0.3-alpha/cli_1.0.3-alpha_darwin_amd64.tar.gz"
  version "1.0.3-alpha"
  sha256 "a3033d70bbd93f35caecbee318f20602f1837d6cb54cd7bfe89ce1dd76814a39"

  def install
    bin.install "exo"
  end
end
