# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HappyRc < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.26.0-b1fce72"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.26.0-b1fce72/happy_0.26.0-b1fce72_darwin_arm64.tar.gz"
      sha256 "a901d98af5892738d5ec66a8b01f5cac37b60477d7c469926640c8113f615522"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.26.0-b1fce72/happy_0.26.0-b1fce72_darwin_amd64.tar.gz"
      sha256 "eba89d1a0a318be8284aceca218ea9a4f12b3c7d33ae85b95d905d74a99b50a4"

      def install
        bin.install "happy-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.26.0-b1fce72/happy_0.26.0-b1fce72_linux_arm64.tar.gz"
      sha256 "df5d9539ce4b5062435d586da4d053a905b916e650969bd04361b3ec36338beb"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.26.0-b1fce72/happy_0.26.0-b1fce72_linux_amd64.tar.gz"
      sha256 "fd5a3995c8f5b2682d0150a9b95c03a0c375d4acdac0b3205083362683a8f766"

      def install
        bin.install "happy-rc"
      end
    end
  end

  test do
    system "#{bin}/happy-rc"
  end
end
