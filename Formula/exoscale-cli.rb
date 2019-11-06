class ExoscaleCli < Formula
  desc "Manage (almost) everything at Exoscale from the command line."
  homepage "https://exoscale.github.io/cli/"
  url "https://github.com/exoscale/cli/releases/download/v1.6.0/exoscale-cli_1.6.0_darwin_amd64.tar.gz"
  version "1.6.0"
  sha256 "9ebb4856ce924a802671212f1919cfca50543028be71c2a5c8fdd78803dbce63"

  def install
    bin.install "exo"
    man1.install Dir["manpage/exo*.1"]
    bash_completion.install "contrib/completion/bash/exo"
  end
end
