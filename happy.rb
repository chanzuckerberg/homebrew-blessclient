# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Happy < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.72.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.72.0/happy_0.72.0_darwin_arm64.tar.gz"
      sha256 "725833fadf2f50c126e297eb9a3235b077d4d01cb6a80e41599bf63cbc81225c"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.72.0/happy_0.72.0_darwin_amd64.tar.gz"
      sha256 "ec2e2e11a3402fe1ee3972c5adf879d07fcfc26a69d2827a90165966cf270d8d"

      def install
        bin.install "happy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.72.0/happy_0.72.0_linux_arm64.tar.gz"
      sha256 "fe878e0bd47e0d196b64e65568f7d8492e33c0599dd1a211b94763b7e24e4d21"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.72.0/happy_0.72.0_linux_amd64.tar.gz"
      sha256 "36b0367f40e8382707fc89d97a18e3fff9e28c9364c11c68ea72fe47053a2350"

      def install
        bin.install "happy"
      end
    end
  end

  test do
    system "#{bin}/happy"
  end
end
