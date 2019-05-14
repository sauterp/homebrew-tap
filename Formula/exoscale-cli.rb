class ExoscaleCli < Formula
  desc "Manage (almost) everything at Exoscale from the command line."
  homepage "https://exoscale.github.io/cli/"
  url "https://github.com/exoscale/cli/releases/download/v1.3.0/exoscale-cli_1.3.0_darwin_amd64.tar.gz"
  version "1.3.0"
  sha256 "89cca16d7e5d15c6a5a845bf975f879005c5ed84bea75395e04302f70706a3ce"

  def install
    bin.install "exo"
    man1.install Dir["manpage/exo*.1"]
    bash_completion.install "contrib/completion/bash/exo"
  end
end
