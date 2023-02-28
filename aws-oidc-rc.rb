# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidcRc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.25.42-45f2de9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.42-45f2de9/aws-oidc_0.25.42-45f2de9_darwin_arm64.tar.gz"
      sha256 "e67ab7a17c0cd73a64b6cfadc4e3098ab8206eaaab2e0c3954c551bf77f8de34"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.42-45f2de9/aws-oidc_0.25.42-45f2de9_darwin_amd64.tar.gz"
      sha256 "2b69f77d8ac50e149df407172d3f8a2cd7d074c91f92a8c38f9cb81a211cf000"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.42-45f2de9/aws-oidc_0.25.42-45f2de9_linux_amd64.tar.gz"
      sha256 "b7e3bf690211d224bee6b7f4a04c7982887a7382e7f018b4949dc9de622e86c1"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.42-45f2de9/aws-oidc_0.25.42-45f2de9_linux_arm64.tar.gz"
      sha256 "dc6d99d8f0104cfaaabb2b4ac2a99e7e99b995078a6c77e5c295df3b88ebccbc"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
