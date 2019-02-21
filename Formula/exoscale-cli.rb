class ExoscaleCli < Formula
  desc "Manage (almost) everything at Exoscale from the command line."
  homepage "https://exoscale.github.io/cli/"
  url "https://github.com/exoscale/cli/releases/download/v1.0.8/exoscale-cli_1.0.8_darwin_amd64.tar.gz"
  version "1.0.8"
  sha256 "6162689b90e4e4487380f88078b11e784e49fa132d5f48792a60037d37a5f0da"

  def install
    bin.install "exo"
    man.install "manpage/exo*.1.gz"
    bash_completion.install "completion/bash/exo"
  end
end
