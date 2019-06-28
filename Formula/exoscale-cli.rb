class ExoscaleCli < Formula
  desc "Manage (almost) everything at Exoscale from the command line."
  homepage "https://exoscale.github.io/cli/"
  url "https://github.com/exoscale/cli/releases/download/v1.4.1/exoscale-cli_1.4.1_darwin_amd64.tar.gz"
  version "1.4.1"
  sha256 "295b650eb262e96b54b594964d98b4ef4330eb996239117605fd00e9fb6734d4"

  def install
    bin.install "exo"
    man1.install Dir["manpage/exo*.1"]
    bash_completion.install "contrib/completion/bash/exo"
  end
end
