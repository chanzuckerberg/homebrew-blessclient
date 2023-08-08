# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Happy < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.97.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.97.0/happy_0.97.0_darwin_arm64.tar.gz"
      sha256 "7c87067d5446a7c4163f22e293d0e8381de98fca83e18f66f73286fc0e7b7975"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.97.0/happy_0.97.0_darwin_amd64.tar.gz"
      sha256 "ecb4d322b0eab04630c1b8cf1115e168dad76f213fccae0e7a0b89bb1511ba8a"

      def install
        bin.install "happy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.97.0/happy_0.97.0_linux_arm64.tar.gz"
      sha256 "bb7cc0a9a6ceff79e31bb37036f4416bca81d17b00554a3e71ce80b7276a30e5"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.97.0/happy_0.97.0_linux_amd64.tar.gz"
      sha256 "abb7cddfb90fc4eaf7c9e743e4c12f1165b14c0d4efab5d265828c311057aec0"

      def install
        bin.install "happy"
      end
    end
  end

  test do
    system "#{bin}/happy"
  end
end
