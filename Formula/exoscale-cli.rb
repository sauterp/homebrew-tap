class ExoscaleCli < Formula
  desc "Manage (almost) everything at Exoscale from the command line."
  homepage "https://exoscale.github.io/cli/"
  url "https://github.com/exoscale/cli/releases/download/v1.4.0/exoscale-cli_1.4.0_darwin_amd64.tar.gz"
  version "1.4.0"
  sha256 "59ffdf8b6bf86063db9d77f06e084846f9588396a6b0d9ecbc22bd54df1d2e8c"

  def install
    bin.install "exo"
    man1.install Dir["manpage/exo*.1"]
    bash_completion.install "contrib/completion/bash/exo"
  end
end
