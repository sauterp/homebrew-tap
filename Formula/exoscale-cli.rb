class ExoscaleCli < Formula
  desc "Manage (almost) everything at Exoscale from the command line."
  homepage "https://exoscale.github.io/cli/"
  url "https://github.com/exoscale/cli/releases/download/v1.2.0/exoscale-cli_1.2.0_darwin_amd64.tar.gz"
  version "1.2.0"
  sha256 "18ea6ff9a2cb3d5e90612bc09c6e6aa6964d88cf4ea3bac5b2622b486efb9ff9"

  def install
    bin.install "exo"
    man1.install Dir["manpage/exo*.1"]
    bash_completion.install "contrib/completion/bash/exo"
  end
end
