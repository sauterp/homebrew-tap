class ExoscaleCli < Formula
  desc "Manage (almost) everything at Exoscale from the command line."
  homepage "https://exoscale.github.io/cli/"
  url "https://github.com/exoscale/cli/releases/download/v1.0.5/exoscale-cli_1.0.5_darwin_amd64.tar.gz"
  version "1.0.5"
  sha256 "7de964bea65742bc85b0e6994d6d80cab3990a208098fde9f64fe254b2af076c"

  def install
    bin.install "exo"
  end
end
