class ExoscaleCli < Formula
  desc "Manage (almost) everything at Exoscale from the command line."
  homepage "https://exoscale.github.io/cli/"
  url "https://github.com/exoscale/cli/releases/download/v1.1.0/exoscale-cli_1.1.0_darwin_amd64.tar.gz"
  version "1.1.0"
  sha256 "2111ad2162cbefa2b19090b0ff4e2c2f28ddbcecb5275c5d29289720607e8eaa"

  def install
    bin.install "exo"
    man1.install Dir["manpage/exo*.1"]
    bash_completion.install "contrib/completion/bash/exo"
  end
end
