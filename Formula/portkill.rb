
# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Portkill < Formula
  desc "PortKiller is a command-line application designed to kill a process running on a specified port"
  homepage "https://github.com/mertmr/portkill"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mertmr/portkill/releases/download/v0.1.4/portkill_Darwin_arm64.tar.gz"
      sha256 "ce081665373f99fbd84ef271dc332d7c8181e7864f8c2dec0fd8d508d4249ef3"

      def install
        bin.install "portkill"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mertmr/portkill/releases/download/v0.1.4/portkill_Darwin_x86_64.tar.gz"
      sha256 "b76bc338487a6b69647e7dcad54d00f064038f6afa2b90fdc5fe0d115e96f3e9"

      def install
        bin.install "portkill"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mertmr/portkill/releases/download/v0.1.4/portkill_Linux_arm64.tar.gz"
      sha256 "a4bbb2cbaa34466b17bb7aceb882e626421bc1df0a21e35e96ebb3f8487ec34a"

      def install
        bin.install "portkill"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mertmr/portkill/releases/download/v0.1.4/portkill_Linux_x86_64.tar.gz"
      sha256 "e073312010d135f81a0305b1a74c94ec8396613ab81e6512e69c90b2bc6f1551"

      def install
        bin.install "portkill"
      end
    end
  end

  test do
    system "#{bin}mockery --version"
  end
end
