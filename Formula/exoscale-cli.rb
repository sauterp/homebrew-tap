# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ExoscaleCli < Formula
  desc "Manage easily your Exoscale infrastructure from the command-line."
  homepage "https://exoscale.github.io/cli/"
  version "1.58.0"

  on_macos do
    url "https://github.com/exoscale/cli/releases/download/v1.58.0/exoscale-cli_1.58.0_darwin_all.tar.gz"
    sha256 "36f50f6223700bfb4c410577f8b6b3893c1c67655c2258e7ba7a4c17655c9a06"

    def install
      bin.install "exoscale-cli" => "exo"
      man1.install Dir["manpage/exo*.1"]
      bash_completion.install "contrib/completion/bash/exo"
      zsh_completion.install "contrib/completion/zsh/_exo"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/exoscale/cli/releases/download/v1.58.0/exoscale-cli_1.58.0_linux_amd64.tar.gz"
      sha256 "1bacb6fd92eaa42188c93d4bddb5dce989e550cdb3ff81789e9fcf899c9be01e"

      def install
        bin.install "exoscale-cli" => "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.58.0/exoscale-cli_1.58.0_linux_armv6.tar.gz"
      sha256 "9eaa4eb942a71a80d7495217b16868e4a007150f9910dab069855281a3fa620c"

      def install
        bin.install "exoscale-cli" => "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.58.0/exoscale-cli_1.58.0_linux_arm64.tar.gz"
      sha256 "ab3ede0fd5a23887a9c1fab406203a60ebc044aaebd7e09e5030785177ee3865"

      def install
        bin.install "exoscale-cli" => "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
  end
end
