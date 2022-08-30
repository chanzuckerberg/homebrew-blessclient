# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HappyRc < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.29.0-f1b513e"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.0-f1b513e/happy_0.29.0-f1b513e_darwin_arm64.tar.gz"
      sha256 "05c7bf975285abf8fab9a32e32bb0f0e14aad9331d9da814a7d2b93d1305c62d"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.0-f1b513e/happy_0.29.0-f1b513e_darwin_amd64.tar.gz"
      sha256 "65c6f8934f19ad18611aa25d6b3cca3476040d466a356ff78aa3e6f3b635059e"

      def install
        bin.install "happy-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.0-f1b513e/happy_0.29.0-f1b513e_linux_arm64.tar.gz"
      sha256 "57661b0e113496870777ec3ff81fa5c5e6bc3f486f35cee9f52482062a968862"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.0-f1b513e/happy_0.29.0-f1b513e_linux_amd64.tar.gz"
      sha256 "98bd7f5c979203fc44821fdddcd00682f0bfd0198c428314075317f7e2716964"

      def install
        bin.install "happy-rc"
      end
    end
  end

  test do
    system "#{bin}/happy-rc"
  end
end
