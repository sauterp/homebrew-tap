class ExoscaleCli < Formula
  desc "Manage (almost) everything at Exoscale from the command line."
  homepage "https://exoscale.github.io/cli/"
  url "https://github.com/exoscale/cli/releases/download/v1.1.2/exoscale-cli_1.1.2_darwin_amd64.tar.gz"
  version "1.1.2"
  sha256 "c251413d590a65e5ad999522c3a62785d642db47a43f380e914ab7aa1816c726"

  def install
    bin.install "exo"
    man1.install Dir["manpage/exo*.1"]
    bash_completion.install "contrib/completion/bash/exo"
  end
end
