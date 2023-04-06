# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidcRc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.25.56-f8f55fd"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.56-f8f55fd/aws-oidc_0.25.56-f8f55fd_darwin_arm64.tar.gz"
      sha256 "9d1ffd68893a48263582dc618b1dfc4a736fe468b7760fab40a2a38e2d9dfb75"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.56-f8f55fd/aws-oidc_0.25.56-f8f55fd_darwin_amd64.tar.gz"
      sha256 "40e98d58b29229b4c665cd3d500796169abb96997991dc7f77313fbfae3a02a4"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.56-f8f55fd/aws-oidc_0.25.56-f8f55fd_linux_amd64.tar.gz"
      sha256 "080f42c02f624e117a4fb296af3ed7ae98cd4de9aa6285e944193e60f5d5c137"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.56-f8f55fd/aws-oidc_0.25.56-f8f55fd_linux_arm64.tar.gz"
      sha256 "bf35e331e0f5e97eecba68ff1024563dd599c324de6074c44bd8120c0d79ece6"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
