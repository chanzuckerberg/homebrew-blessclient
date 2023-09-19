# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  version "0.90.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.90.1/fogg_0.90.1_darwin_arm64.tar.gz"
      sha256 "1afbdce90dbcbe9ea4d39a9ad493a1bc43b152d6401f0b706b12a061aa99be98"

      def install
        bin.install "fogg"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.90.1/fogg_0.90.1_darwin_amd64.tar.gz"
      sha256 "773e1b5dc09fb31445aebebb0d88d4100f04f66bfc1b9785445b0704ae0f9a16"

      def install
        bin.install "fogg"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.90.1/fogg_0.90.1_linux_arm64.tar.gz"
      sha256 "69d35f8222a6eb4d3a951e8df49524b14b9f8ef6bd0cb7e57482bc794cee89fd"

      def install
        bin.install "fogg"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.90.1/fogg_0.90.1_linux_amd64.tar.gz"
      sha256 "16fef31fc466ac9f0727615175d5187b69931b842e77c9c4be6ffd9820bef9c7"

      def install
        bin.install "fogg"
      end
    end
  end

  test do
    system "#{bin}/fogg version"
  end
end
