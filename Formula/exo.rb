class Exo < Formula
  desc "Manage (almost) everything at Exoscale from the command line."
  homepage "https://exoscale.github.io/cli/"
  url "https://github.com/exoscale/cli/releases/download/v1.0.4/cli_1.0.4_darwin_amd64.tar.gz"
  version "1.0.4"
  sha256 "b54f265ced0650802e3c0bb2c9f76b921b02cb6f9cc47c3ec1b34abf38a184db"

  def install
    bin.install "exo"
  end
end
