class ExoscaleCli < Formula
  desc "Manage (almost) everything at Exoscale from the command line."
  homepage "https://exoscale.github.io/cli/"
  url "https://github.com/exoscale/cli/releases/download/v1.1.3/exoscale-cli_1.1.3_darwin_amd64.tar.gz"
  version "1.1.3"
  sha256 "28a5a5459a1ae24ad111fe1c3da3ef91334b14f8afc08e6d75c029b93aa24d03"

  def install
    bin.install "exo"
    man1.install Dir["manpage/exo*.1"]
    bash_completion.install "contrib/completion/bash/exo"
  end
end
