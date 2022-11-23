# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  version "0.77.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.77.0/fogg_0.77.0_darwin_arm64.tar.gz"
      sha256 "269aa83d028c0c67d903b38f68d362e856ecdc3ab850f0f71929fdf6f7480e29"

      def install
        bin.install "fogg"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.77.0/fogg_0.77.0_darwin_amd64.tar.gz"
      sha256 "20eb5904cc6f390b20a21a0bb7946fd185e65ec75689dedeaed3477850f08a3b"

      def install
        bin.install "fogg"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.77.0/fogg_0.77.0_linux_amd64.tar.gz"
      sha256 "e3aba25cdb1b2d957dff4d597e59a5f69565c8780be16db3df3aa902370bfb98"

      def install
        bin.install "fogg"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.77.0/fogg_0.77.0_linux_arm64.tar.gz"
      sha256 "f178fb1d7f80d7387d6e74cac8bf86ab324064378a9943d6dab27f714d17cd92"

      def install
        bin.install "fogg"
      end
    end
  end

  test do
    system "#{bin}/fogg version"
  end
end
