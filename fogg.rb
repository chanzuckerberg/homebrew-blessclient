# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  version "0.92.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.92.8/fogg_0.92.8_darwin_amd64.tar.gz"
      sha256 "f04eccf23202b2999812b92974a574b3472155cf2b1cef6a0e71afd901119991"

      def install
        bin.install "fogg"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.92.8/fogg_0.92.8_darwin_arm64.tar.gz"
      sha256 "b17de230e5c0646c201d9b3db06f6ede0730e35d971559819c0636b8114d77e7"

      def install
        bin.install "fogg"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.92.8/fogg_0.92.8_linux_amd64.tar.gz"
      sha256 "a34ed39000b14300d88396d975172b4131286b51441fa9c58c4208f5a76e4f38"

      def install
        bin.install "fogg"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.92.8/fogg_0.92.8_linux_arm64.tar.gz"
      sha256 "d884bfb9f059698a42c3e5e1807a8a9d3ab72edc33b95b61482e9bf1f464cc51"

      def install
        bin.install "fogg"
      end
    end
  end

  test do
    system "#{bin}/fogg version"
  end
end
