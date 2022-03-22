# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Happy < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.15.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.15.0/happy_0.15.0_darwin_arm64.tar.gz"
      sha256 "b6c1f161f96ccbf2a6452f3d17b0baff6e4c608e58ca1ffffcd6968bcd624f4c"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.15.0/happy_0.15.0_darwin_amd64.tar.gz"
      sha256 "a438baefd01e0e7d878a6141f44e2b748dd82357a9f3f18a7a6315bd2471adc6"

      def install
        bin.install "happy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.15.0/happy_0.15.0_linux_amd64.tar.gz"
      sha256 "a597ad39238eab72908a8bce7f4010d0318bd5dd293c8b5b038d087dc5610d5e"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.15.0/happy_0.15.0_linux_arm64.tar.gz"
      sha256 "16a2afceff051c4bb9d712d35564967db53eff260e8f082a9cfd7ab2afdfd49d"

      def install
        bin.install "happy"
      end
    end
  end

  test do
    system "#{bin}/happy"
  end
end
