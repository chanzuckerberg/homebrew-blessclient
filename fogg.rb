# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  version "0.64.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.64.0/fogg_0.64.0_darwin_arm64.tar.gz"
      sha256 "7969ad3e8850c90530e67792a1c3efa20bd770da3f9ca579ecfd34edecb7887d"

      def install
        bin.install "fogg"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.64.0/fogg_0.64.0_darwin_amd64.tar.gz"
      sha256 "1691371954cf7116b66ab1787f75f20488d08caf3d06101cefd21d263d544a92"

      def install
        bin.install "fogg"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.64.0/fogg_0.64.0_linux_arm64.tar.gz"
      sha256 "c15d42ee44e607db5b359b84636b3209b5fa011312c119bd1b0c4591395b6db4"

      def install
        bin.install "fogg"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.64.0/fogg_0.64.0_linux_amd64.tar.gz"
      sha256 "8844fc2c6fecae09995d1c2e6b563970c1578214fc2542e3628ebcf5cc4e96eb"

      def install
        bin.install "fogg"
      end
    end
  end

  test do
    system "#{bin}/fogg version"
  end
end
