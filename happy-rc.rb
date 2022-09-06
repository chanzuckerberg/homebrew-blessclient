# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HappyRc < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.29.1-264bea0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.1-264bea0/happy_0.29.1-264bea0_darwin_arm64.tar.gz"
      sha256 "9fb3b0c8ef8702e057e21b3f4b92a34393de50646e5e447357562354f469ff36"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.1-264bea0/happy_0.29.1-264bea0_darwin_amd64.tar.gz"
      sha256 "520871930370614e6122542d15484dec49c8a28a1cbe56f496b40c730315a842"

      def install
        bin.install "happy-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.1-264bea0/happy_0.29.1-264bea0_linux_arm64.tar.gz"
      sha256 "4467648b3f1aeb8ea5dd5dd1fd1f8a0868fba2cf80697d3619b85c0b678d0f62"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.1-264bea0/happy_0.29.1-264bea0_linux_amd64.tar.gz"
      sha256 "41aaaa49c6b1c5e33f55e4d66bc8e61e5ab55fa1dd98336c87df549a4f7aba01"

      def install
        bin.install "happy-rc"
      end
    end
  end

  test do
    system "#{bin}/happy-rc"
  end
end
