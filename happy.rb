# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Happy < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.6.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.6.1/happy_0.6.1_darwin_amd64.tar.gz"
      sha256 "dd8829ace9ed4af55f585d00de20fd26297bc279fd84e3bd7c19f50b4e4bdc3b"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.6.1/happy_0.6.1_darwin_arm64.tar.gz"
      sha256 "95e65f4daa4988f656035c9498c1e8143e49cb790b5f7fc4ac976174e22a4342"

      def install
        bin.install "happy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.6.1/happy_0.6.1_linux_arm64.tar.gz"
      sha256 "58f34931de4d3ac9ec88e63f5a4951a9bc473ce4413ef1e8fa2f148e74f5d8e2"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.6.1/happy_0.6.1_linux_amd64.tar.gz"
      sha256 "73eaa17f50c5ba78cfea3080586617cfa7c0b25dc9736401eaa22d6dfe92ccea"

      def install
        bin.install "happy"
      end
    end
  end

  test do
    system "#{bin}/happy"
  end
end
