# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HappyRc < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.24.0-0b4d2de"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.24.0-0b4d2de/happy_0.24.0-0b4d2de_darwin_arm64.tar.gz"
      sha256 "c8d10e7110c2957d2b440e9a614bbe08795bc5add79e21fff91e9a108e64a37d"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.24.0-0b4d2de/happy_0.24.0-0b4d2de_darwin_amd64.tar.gz"
      sha256 "37955610c95b0ff179c0460f75b1a49d6dabe1da915b5edcf9cd05d04377087a"

      def install
        bin.install "happy-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.24.0-0b4d2de/happy_0.24.0-0b4d2de_linux_arm64.tar.gz"
      sha256 "2b6298384f0f114da9db7210ec127d105864d45a15e54aa5d80a77f37be53159"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.24.0-0b4d2de/happy_0.24.0-0b4d2de_linux_amd64.tar.gz"
      sha256 "9b2f8e82860a7031a200cb37234f4abdebd5484bec4b277dc4baf7adcc001f08"

      def install
        bin.install "happy-rc"
      end
    end
  end

  test do
    system "#{bin}/happy-rc"
  end
end
