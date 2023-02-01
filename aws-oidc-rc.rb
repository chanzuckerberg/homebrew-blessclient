# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidcRc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.25.26-7d658e5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.26-7d658e5/aws-oidc_0.25.26-7d658e5_darwin_amd64.tar.gz"
      sha256 "2c6bd2e957fefceb9c52055a2bee1b7196192ee16f0c5e8b1f45441421cff1f3"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.26-7d658e5/aws-oidc_0.25.26-7d658e5_darwin_arm64.tar.gz"
      sha256 "b460011bf8807b2a46714b6e897dabddf14d69a3f9a53291d954bc160841ff8b"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.26-7d658e5/aws-oidc_0.25.26-7d658e5_linux_arm64.tar.gz"
      sha256 "60e15ae7f6624063df547f75836111685d36ac4f63010dd805622bcbaa1b0013"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.26-7d658e5/aws-oidc_0.25.26-7d658e5_linux_amd64.tar.gz"
      sha256 "a822db9f6ec5d7763f28cddb852042f18c0f6f11067fe39e69eb55a93dff5328"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
