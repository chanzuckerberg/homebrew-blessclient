# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Happy < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.62.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.62.0/happy_0.62.0_darwin_arm64.tar.gz"
      sha256 "c6e59d5899012e980d7ca3b3f4f01bd867b6cfc12eb95084f72a2753d6c4bea3"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.62.0/happy_0.62.0_darwin_amd64.tar.gz"
      sha256 "fe8abb2a42a5d5ed4c047296d592255602fe3ac7c704a68a751fe70808c60fe8"

      def install
        bin.install "happy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.62.0/happy_0.62.0_linux_arm64.tar.gz"
      sha256 "8a9f0b63553196eebb879e1f2c4580748273504d1a656ae2df02f202dd440c20"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.62.0/happy_0.62.0_linux_amd64.tar.gz"
      sha256 "d37abed435fa59b2e58b6166150ba33704c06c3068180c61333f85456eb415a1"

      def install
        bin.install "happy"
      end
    end
  end

  test do
    system "#{bin}/happy"
  end
end
