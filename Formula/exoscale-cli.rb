class ExoscaleCli < Formula
  desc "Manage (almost) everything at Exoscale from the command line."
  homepage "https://exoscale.github.io/cli/"
  url "https://github.com/exoscale/cli/releases/download/v1.5.0/exoscale-cli_1.5.0_darwin_amd64.tar.gz"
  version "1.5.0"
  sha256 "ff4bf23bc043d5a88eace982d6e22a725924b9626996f9b60c00d4e63a6a841c"

  def install
    bin.install "exo"
    man1.install Dir["manpage/exo*.1"]
    bash_completion.install "contrib/completion/bash/exo"
  end
end
