# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  version "0.87.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.87.3/fogg_0.87.3_darwin_arm64.tar.gz"
      sha256 "368da08ab3328d86754564675b951ad523ab501a7ebd3f35e0024ad210300caf"

      def install
        bin.install "fogg"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.87.3/fogg_0.87.3_darwin_amd64.tar.gz"
      sha256 "223a734e53feb14b85ce24f4aceb1fbe36a3c7a5ba23a56b53d218b3c3ffc588"

      def install
        bin.install "fogg"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.87.3/fogg_0.87.3_linux_amd64.tar.gz"
      sha256 "b3bd1445027df5261ba4abd25e5b34ed85ed41e953608028622590e223ec4639"

      def install
        bin.install "fogg"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.87.3/fogg_0.87.3_linux_arm64.tar.gz"
      sha256 "49aa06495f9394f9158d3b60751cb9177bf09853f4efc6705663b0d696038fcb"

      def install
        bin.install "fogg"
      end
    end
  end

  test do
    system "#{bin}/fogg version"
  end
end
