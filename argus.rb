# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Argus < Formula
  desc "The command line tool for the Argus platform."
  homepage "https://github.com/chanzuckerberg/argus-artifacts"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.9.0/argus_0.9.0_darwin_amd64.tar.gz"
      sha256 "65118137f9864373abddfec97b05195cb21493a9cfa74303e3ef39b24dc91ae2"

      def install
        bin.install "argus"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.9.0/argus_0.9.0_darwin_arm64.tar.gz"
      sha256 "f0ee7d702af8766294934105d6074c2ff2341c5a0baa17d35380bf4f8e5bc223"

      def install
        bin.install "argus"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.9.0/argus_0.9.0_linux_amd64.tar.gz"
      sha256 "adcbc890efb667e3e80cbb71aa624fcfa1957a273ce41afed6610105a1685331"

      def install
        bin.install "argus"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.9.0/argus_0.9.0_linux_arm64.tar.gz"
      sha256 "5fd04b324863843dd6baeec6d59507dda8c2220ec6dc8ca2e199d8c839fc5d28"

      def install
        bin.install "argus"
      end
    end
  end

  test do
    system "#{bin}/argus version"
  end
end
