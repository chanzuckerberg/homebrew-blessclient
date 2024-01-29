# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hvm < Formula
  desc "An environment manager for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.126.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.126.0/hvm_0.126.0_darwin_arm64.tar.gz"
      sha256 "0cd6dc7a520ba7e65387419b4897303399bc80e1fcba7a890ba10c45fc9e7d3f"

      def install
        bin.install "hvm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.126.0/hvm_0.126.0_darwin_amd64.tar.gz"
      sha256 "b1ae46859404b3d37138d46afe28cc478534c8d23a0ac4c39f6146e2b1d3d912"

      def install
        bin.install "hvm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.126.0/hvm_0.126.0_linux_arm64.tar.gz"
      sha256 "2a186283ea3f8d856e6ae3647f5bc3a1f5347d2182e3ec9e0346277cb3b46953"

      def install
        bin.install "hvm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.126.0/hvm_0.126.0_linux_amd64.tar.gz"
      sha256 "79a819df1b8138282885931e0db7a0b39e29a8b0ec806dddcfa7bf58fcf80194"

      def install
        bin.install "hvm"
      end
    end
  end

  test do
    system "#{bin}/hvm"
  end
end
