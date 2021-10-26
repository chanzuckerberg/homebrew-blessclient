# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BlessclientAT1 < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  version "1.5.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/blessclient/releases/download/v1.5.3/blessclient_1.5.3_darwin_arm64.tar.gz"
      sha256 "0f31ab3c00827a28443165188fcbc7c864fb1246843ba262c2858bdfcc3a22d6"

      def install
        bin.install "blessclient"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/blessclient/releases/download/v1.5.3/blessclient_1.5.3_darwin_amd64.tar.gz"
      sha256 "236aaf5caf63e36299ce86c902c94f5e03e6ffa6b32d2cfb1cda71b1a5bd271d"

      def install
        bin.install "blessclient"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/blessclient/releases/download/v1.5.3/blessclient_1.5.3_linux_arm64.tar.gz"
      sha256 "d13f163ab0622f0144b7c07cb7eada1c231dba4af279afbd1b89b9243ddcab1a"

      def install
        bin.install "blessclient"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/blessclient/releases/download/v1.5.3/blessclient_1.5.3_linux_amd64.tar.gz"
      sha256 "aa2ad272f6d46059d57fe5f32be72f40dacca1256f681004194cc1c1642862ba"

      def install
        bin.install "blessclient"
      end
    end
  end

  test do
    system "#{bin}/blessclient version"
  end
end
