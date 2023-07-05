# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ExoscaleCli < Formula
  desc "Manage easily your Exoscale infrastructure from the command-line."
  homepage "https://exoscale.github.io/cli/"
  version "1.70.128283"

  on_macos do
    url "https://github.com/sauterp/cli/releases/download/v1.70.128283/exoscale-cli_1.70.128283_darwin_all.tar.gz"
    sha256 "800887a3612fff6024e868b2eabcf257261bc2569f1295bb4daac65c12e67673"

    def install
      bin.install "exo"
      man1.install Dir["manpage/exo*.1"]
      bash_completion.install "contrib/completion/bash/exo"
      zsh_completion.install "contrib/completion/zsh/_exo"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/sauterp/cli/releases/download/v1.70.128283/exoscale-cli_1.70.128283_linux_armv6.tar.gz"
      sha256 "47d7c46a41313d7f82295efc54352998119f7e1d83d5f53a1082b49a59704a81"

      def install
        bin.install "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sauterp/cli/releases/download/v1.70.128283/exoscale-cli_1.70.128283_linux_amd64.tar.gz"
      sha256 "79167094831b73094b9432c6e1430f36f61ac085b6c7a8b2ce64f9619e8b0c74"

      def install
        bin.install "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sauterp/cli/releases/download/v1.70.128283/exoscale-cli_1.70.128283_linux_arm64.tar.gz"
      sha256 "183c58b8c5ee593e2f0fde66c4578f46335afd387c4bda19dcfe2c358c368b1c"

      def install
        bin.install "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
  end
end
