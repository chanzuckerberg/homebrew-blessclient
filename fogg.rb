# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  version "0.62.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.62.1/fogg_0.62.1_darwin_arm64.tar.gz"
      sha256 "8146a575bc02312e0f250f8363b9e6e1a4bd965c6ec031c6573b52eb0921bba8"

      def install
        bin.install "fogg"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.62.1/fogg_0.62.1_darwin_amd64.tar.gz"
      sha256 "18e3a45f4936919f8314a42ef79efed96628b1ee57a985329a22d0e85c588a65"

      def install
        bin.install "fogg"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.62.1/fogg_0.62.1_linux_amd64.tar.gz"
      sha256 "1cb3300f874a384c4ff385f96b4d7ed60e2703768b1c0942e657db483a871c35"

      def install
        bin.install "fogg"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.62.1/fogg_0.62.1_linux_arm64.tar.gz"
      sha256 "0390170829db291b1699cf8f95c1c392009ec17109d40f3ae3dacb91cfe62cbb"

      def install
        bin.install "fogg"
      end
    end
  end

  test do
    system "#{bin}/fogg version"
  end
end
