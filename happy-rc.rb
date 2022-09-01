# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HappyRc < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.29.0-9714f2c"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.0-9714f2c/happy_0.29.0-9714f2c_darwin_arm64.tar.gz"
      sha256 "3cfa269d3c3eed670f5b0a4fad62870c49b7fef8b493cd104bac26145d77d28a"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.0-9714f2c/happy_0.29.0-9714f2c_darwin_amd64.tar.gz"
      sha256 "2a893170529fe41a8b693ec6a323c809925560bfab8e834c055f7b0b7b8bc1f4"

      def install
        bin.install "happy-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.0-9714f2c/happy_0.29.0-9714f2c_linux_arm64.tar.gz"
      sha256 "46d20de95e354dede04bcb40e86097a449695ffc2394a65833646b33961f1b15"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.0-9714f2c/happy_0.29.0-9714f2c_linux_amd64.tar.gz"
      sha256 "b346f54d8f446c53a1021bc6733604cf2cdb66fc519782e11740733b3405169b"

      def install
        bin.install "happy-rc"
      end
    end
  end

  test do
    system "#{bin}/happy-rc"
  end
end
