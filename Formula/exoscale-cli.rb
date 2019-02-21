class ExoscaleCli < Formula
  desc "Manage (almost) everything at Exoscale from the command line."
  homepage "https://exoscale.github.io/cli/"
  url "https://github.com/exoscale/cli/releases/download/v1.0.9/exoscale-cli_1.0.9_darwin_amd64.tar.gz"
  version "1.0.9"
  sha256 "1ac786d54ed0e364586569dfe02ba04c4a46e8b8c060b712b16347ee96ce5246"

  def install
    bin.install "exo"
    man1.install Dir["manpage/exo*.1"]
    bash_completion.install "contrib/completion/bash/exo"
  end
end
