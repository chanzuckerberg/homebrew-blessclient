# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HappyRc < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.29.0-da34fd8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.0-da34fd8/happy_0.29.0-da34fd8_darwin_amd64.tar.gz"
      sha256 "8d6eb5bb4191cb04be6dd5a190c92c949e0eaf079a9f34226d29bfb39f38018c"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.0-da34fd8/happy_0.29.0-da34fd8_darwin_arm64.tar.gz"
      sha256 "2fa8b197ece47329984b1e6322545853001d27a31063450c17cfd0bfdaeb7d0b"

      def install
        bin.install "happy-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.0-da34fd8/happy_0.29.0-da34fd8_linux_amd64.tar.gz"
      sha256 "9f3bc1c570766f3e2dde70c05d87e5f84700e8f2afd7ec9ca6cf801047cc6716"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.0-da34fd8/happy_0.29.0-da34fd8_linux_arm64.tar.gz"
      sha256 "eb69f8106e24b80ead6fc42b567a64d0b259634857ba482efa815b2f19899b8a"

      def install
        bin.install "happy-rc"
      end
    end
  end

  test do
    system "#{bin}/happy-rc"
  end
end
