class ExoscaleCli < Formula
  desc "Manage (almost) everything at Exoscale from the command line."
  homepage "https://exoscale.github.io/cli/"
  url "https://github.com/exoscale/cli/releases/download/v1.1.4/exoscale-cli_1.1.4_darwin_amd64.tar.gz"
  version "1.1.4"
  sha256 "4a6cc4636bd18f07cf764c3d7829a27093a07c37fdd75a400c2ad008b0bb5dbf"

  def install
    bin.install "exo"
    man1.install Dir["manpage/exo*.1"]
    bash_completion.install "contrib/completion/bash/exo"
  end
end
