class ExoscaleCli < Formula
  desc "Manage (almost) everything at Exoscale from the command line."
  homepage "https://exoscale.github.io/cli/"
  url "https://github.com/exoscale/cli/releases/download/v1.5.1/exoscale-cli_1.5.1_darwin_amd64.tar.gz"
  version "1.5.1"
  sha256 "02f63c2ff4fff0953723c4f80c78cad880c5f6dee8feb2333d8e273f0c282f15"

  def install
    bin.install "exo"
    man1.install Dir["manpage/exo*.1"]
    bash_completion.install "contrib/completion/bash/exo"
  end
end
