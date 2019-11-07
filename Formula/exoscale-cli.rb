class ExoscaleCli < Formula
  desc "Manage (almost) everything at Exoscale from the command line."
  homepage "https://exoscale.github.io/cli/"
  url "https://github.com/exoscale/cli/releases/download/v1.6.0/exoscale-cli_1.6.0_darwin_amd64.tar.gz"
  version "1.6.0"
  sha256 "32c4b57b63b2e41ea915da41226f998bda49935c0def3eb105089a2a5ca08ff9"

  def install
    bin.install "exo"
    man1.install Dir["manpage/exo*.1"]
    bash_completion.install "contrib/completion/bash/exo"
  end
end
