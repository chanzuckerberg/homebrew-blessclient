# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Happy < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.29.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.2/happy_0.29.2_darwin_amd64.tar.gz"
      sha256 "caa2a45afeeae9ed63e7d2bbf24563ab1fe287b860e49225043a368bd167befd"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.2/happy_0.29.2_darwin_arm64.tar.gz"
      sha256 "9c5538158950737ee28a7672950308a491b50f93adfbbbb93c077c53ae02328e"

      def install
        bin.install "happy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.2/happy_0.29.2_linux_arm64.tar.gz"
      sha256 "f940471425a8fbbf1e352b475915633ffe6ce97a1d91585943e00c777ec7905e"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.2/happy_0.29.2_linux_amd64.tar.gz"
      sha256 "2be82f3ff8e48eafd2c5169be16fdff18b3e2cf4285830a2e5290861f91ae363"

      def install
        bin.install "happy"
      end
    end
  end

  test do
    system "#{bin}/happy"
  end
end
