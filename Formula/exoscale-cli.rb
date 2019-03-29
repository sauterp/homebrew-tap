class ExoscaleCli < Formula
  desc "Manage (almost) everything at Exoscale from the command line."
  homepage "https://exoscale.github.io/cli/"
  url "https://github.com/exoscale/cli/releases/download/v1.1.4/exoscale-cli_1.1.4_darwin_amd64.tar.gz"
  version "1.1.4"
  sha256 "23cce0d7cb0e1aa75a5f43d106350667cc0c476fcc82418674a94bb398b17a35"

  def install
    bin.install "exo"
    man1.install Dir["manpage/exo*.1"]
    bash_completion.install "contrib/completion/bash/exo"
  end
end
