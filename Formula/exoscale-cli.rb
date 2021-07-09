# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ExoscaleCli < Formula
  desc "Manage easily your Exoscale infrastructure from the command-line."
  homepage "https://exoscale.github.io/cli/"
  version "1.36.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/exoscale/cli/releases/download/v1.36.0/exoscale-cli_1.36.0_darwin_amd64.tar.gz"
    sha256 "ad5265ff54205d6e9ded5cd20e91f346896171667c15792dc18f47d90dba73ba"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/exoscale/cli/releases/download/v1.36.0/exoscale-cli_1.36.0_darwin_arm64.tar.gz"
    sha256 "9f7dca68366fdb734239f8bbdb209f8a8b2f229d9c9a77f66c16443c3c01d7cf"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/exoscale/cli/releases/download/v1.36.0/exoscale-cli_1.36.0_linux_amd64.tar.gz"
    sha256 "15594b24a24cb6070a5fe7cefbecc5b396114d67426db780f257eff864368dc1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/exoscale/cli/releases/download/v1.36.0/exoscale-cli_1.36.0_linux_armv6.tar.gz"
    sha256 "56f990e008de8db054d665052392d57e7c6942781a8af806e17f884e321c1e45"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/exoscale/cli/releases/download/v1.36.0/exoscale-cli_1.36.0_linux_arm64.tar.gz"
    sha256 "8732f656f35805126f4695b18b9730eb84f241b08fb9e63b3d3f3daa33215c5e"
  end

  def install
    bin.install "exo"
    man1.install Dir["manpage/exo*.1"]
    bash_completion.install "contrib/completion/bash/exo"
    zsh_completion.install "contrib/completion/zsh/_exo"
  end
end
