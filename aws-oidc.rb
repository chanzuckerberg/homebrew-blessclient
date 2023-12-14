# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.28.22"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.22/aws-oidc_0.28.22_darwin_arm64.tar.gz"
      sha256 "775665740a446d2b0f17e3149a7cb0fa5c18d7ca0feb6b8affa64aa848a965c0"

      def install
        bin.install "aws-oidc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.22/aws-oidc_0.28.22_darwin_amd64.tar.gz"
      sha256 "4ca29f6d75fa210719703681d07a981da05996fb45b7e5c1579b26a1626e2faf"

      def install
        bin.install "aws-oidc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.22/aws-oidc_0.28.22_linux_arm64.tar.gz"
      sha256 "33769db443f63abc1d66532d06df8c1aedad75e3d10fd91410c37442ddb1e844"

      def install
        bin.install "aws-oidc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.22/aws-oidc_0.28.22_linux_amd64.tar.gz"
      sha256 "d53fc0976e0ae39dfd81da65542714899c337707e1ed7837503ff1a6c880a36a"

      def install
        bin.install "aws-oidc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
