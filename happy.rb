# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Happy < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.74.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.74.0/happy_0.74.0_darwin_arm64.tar.gz"
      sha256 "f823cd188df6387266abc0217e5b3a829db17f09d66a96107192e73f4a22f1ac"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.74.0/happy_0.74.0_darwin_amd64.tar.gz"
      sha256 "5469dff4414ebb5d22dfbc7f78ba90696dbdfbb1a1622a2364f3abd21fc9fdfb"

      def install
        bin.install "happy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.74.0/happy_0.74.0_linux_arm64.tar.gz"
      sha256 "f23eaf112d0f446deb434d367cb16d85a82a78abd2e20c5892db6bbf11745fec"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.74.0/happy_0.74.0_linux_amd64.tar.gz"
      sha256 "37cac8c49b4f8270e0d104c548778977a0b74b16936d5a45fc93063723f74d73"

      def install
        bin.install "happy"
      end
    end
  end

  test do
    system "#{bin}/happy"
  end
end
