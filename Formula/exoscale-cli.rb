class ExoscaleCli < Formula
  desc "Manage (almost) everything at Exoscale from the command line."
  homepage "https://exoscale.github.io/cli/"
  url "https://github.com/exoscale/cli/releases/download/v1.1.1/exoscale-cli_1.1.1_darwin_amd64.tar.gz"
  version "1.1.1"
  sha256 "97448254ed4579a87dcc0736ad838e0cbebb598a7ab879fa45906664ddf75a8a"

  def install
    bin.install "exo"
    man1.install Dir["manpage/exo*.1"]
    bash_completion.install "contrib/completion/bash/exo"
  end
end
