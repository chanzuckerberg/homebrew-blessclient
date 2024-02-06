# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Happy < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.126.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.126.2/happy_0.126.2_darwin_arm64.tar.gz"
      sha256 "38a6ed1eba9dc3346ff5f2c5e0fafae0cec804f37d353dd6e5f5848287819c9d"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.126.2/happy_0.126.2_darwin_amd64.tar.gz"
      sha256 "04715ca9919064f2885be81a27879489f0b832fb0c03b9be4de9bed39f27dda3"

      def install
        bin.install "happy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.126.2/happy_0.126.2_linux_arm64.tar.gz"
      sha256 "e9fabb12e97324fcd0f7e872ad3190877f2f99b2f6faf6317c0ebc12c61e392b"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.126.2/happy_0.126.2_linux_amd64.tar.gz"
      sha256 "4115f122180bbe14b504fa1b3fef28ae25b0b764ffaa1689a2bdebedaea0eeaa"

      def install
        bin.install "happy"
      end
    end
  end

  test do
    system "#{bin}/happy"
  end
end
