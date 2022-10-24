# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ExoscaleCli < Formula
  desc "Manage easily your Exoscale infrastructure from the command-line."
  homepage "https://exoscale.github.io/cli/"
  version "1.60.0"

  on_macos do
    url "https://github.com/exoscale/cli/releases/download/v1.60.0/exoscale-cli_1.60.0_darwin_all.tar.gz"
    sha256 "305423674790e948666bf4a8274cdb50090bfe12dc84b7dfbe58f0d1d0517f6c"

    def install
      bin.install "exoscale-cli" => "exo"
      man1.install Dir["manpage/exo*.1"]
      bash_completion.install "contrib/completion/bash/exo"
      zsh_completion.install "contrib/completion/zsh/_exo"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.60.0/exoscale-cli_1.60.0_linux_armv6.tar.gz"
      sha256 "5fc308a537eeb1fe505a565c907fb40a5e45e894b1d0e0d39e84de1152565c1d"

      def install
        bin.install "exoscale-cli" => "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.60.0/exoscale-cli_1.60.0_linux_arm64.tar.gz"
      sha256 "cd2dd619268ecccf408ba595a3af6bb6a2bc56fd71eba5e31ccf7306c83b45b3"

      def install
        bin.install "exoscale-cli" => "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/exoscale/cli/releases/download/v1.60.0/exoscale-cli_1.60.0_linux_amd64.tar.gz"
      sha256 "e9bb891bfb38972031b9ac359d664c0ceede0ce9acc3e028d57faadefcdbb76c"

      def install
        bin.install "exoscale-cli" => "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
  end
end
