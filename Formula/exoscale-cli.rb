# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ExoscaleCli < Formula
  desc "Manage easily your Exoscale infrastructure from the command-line."
  homepage "https://exoscale.github.io/cli/"
  version "1.38.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/exoscale/cli/releases/download/v1.38.0/exoscale-cli_1.38.0_darwin_amd64.tar.gz"
    sha256 "e16df337cf6eced2fde7eb65355e71bd90fbb3efb3dfb25fc7f04084121d92be"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/exoscale/cli/releases/download/v1.38.0/exoscale-cli_1.38.0_darwin_arm64.tar.gz"
    sha256 "8108096d8752d07f9e52948a9073fe796a065acc89c5a818ec995fac36cc8e96"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/exoscale/cli/releases/download/v1.38.0/exoscale-cli_1.38.0_linux_amd64.tar.gz"
    sha256 "7911f807ab34ed99168cdd646c524eb64cfd86c28e55d2a0af494883b9960cb2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/exoscale/cli/releases/download/v1.38.0/exoscale-cli_1.38.0_linux_armv6.tar.gz"
    sha256 "e8987cd8345bf52df5c295130c72593f5f834ca97a292c6939a0e884ac35178b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/exoscale/cli/releases/download/v1.38.0/exoscale-cli_1.38.0_linux_arm64.tar.gz"
    sha256 "e9f9a97256a66fa5c23a5e1b995fe59c2e64ff5b9a86a2f6f336d4f958b84d42"
  end

  def install
    bin.install "exo"
    man1.install Dir["manpage/exo*.1"]
    bash_completion.install "contrib/completion/bash/exo"
    zsh_completion.install "contrib/completion/zsh/_exo"
  end
end
