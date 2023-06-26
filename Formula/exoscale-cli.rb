# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ExoscaleCli < Formula
  desc "Manage easily your Exoscale infrastructure from the command-line."
  homepage "https://exoscale.github.io/cli/"
  version "1.70.182"

  on_macos do
    url "https://github.com/sauterp/cli/releases/download/1.70.182/exoscale-cli_1.70.182_darwin_all.tar.gz"
    sha256 "b005bf803c2f9350683c4f9968da0359e43771c42720f804d663fb000cf484de"

    def install
      bin.install "exo"
      man1.install Dir["manpage/exo*.1"]
      bash_completion.install "contrib/completion/bash/exo"
      zsh_completion.install "contrib/completion/zsh/_exo"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sauterp/cli/releases/download/1.70.182/exoscale-cli_1.70.182_linux_arm64.tar.gz"
      sha256 "2dc4586093565d742cc801eb77bd93821906da585a60b19e747e25207ab7c44a"

      def install
        bin.install "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sauterp/cli/releases/download/1.70.182/exoscale-cli_1.70.182_linux_amd64.tar.gz"
      sha256 "44a799f21c6a913240e806d5e792f11f65abab9334da3b5f6354bb6eee8319be"

      def install
        bin.install "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/sauterp/cli/releases/download/1.70.182/exoscale-cli_1.70.182_linux_armv6.tar.gz"
      sha256 "6935bf798a8c4d62e9c2cc8436b85df2ab749b02ebe60140e6474ecfd53aff30"

      def install
        bin.install "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
  end
end
