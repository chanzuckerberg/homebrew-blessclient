# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidcRc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.28.23-256cfc6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.23-256cfc6/aws-oidc_0.28.23-256cfc6_darwin_arm64.tar.gz"
      sha256 "778703f6e6c614a722e2cb16f71672d67e492dea55ba97e8c4861f13e121a998"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.23-256cfc6/aws-oidc_0.28.23-256cfc6_darwin_amd64.tar.gz"
      sha256 "bf830a57ff5e898bd93b3cce7bde0c899ab3c5092caa98c6635fb79f38d37060"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.23-256cfc6/aws-oidc_0.28.23-256cfc6_linux_arm64.tar.gz"
      sha256 "5078ffeb4da7ed3c54792cf028a6996dac9e04990122afd5fdb1362da6e82d19"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.23-256cfc6/aws-oidc_0.28.23-256cfc6_linux_amd64.tar.gz"
      sha256 "93405f8aec9f002ff62b5850d7ffb130c4648dbfa76b9ad67ae99123309209c9"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
