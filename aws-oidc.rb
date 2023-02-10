# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.25.34"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.34/aws-oidc_0.25.34_darwin_arm64.tar.gz"
      sha256 "e8c7ef688132855bf08f5778adf7a2605fc6b51598a74f7ccc2150c203b571eb"

      def install
        bin.install "aws-oidc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.34/aws-oidc_0.25.34_darwin_amd64.tar.gz"
      sha256 "4ee776339a0a13c019989e2793216f094709aa7a8a8a7d5ae280f49e41e31a42"

      def install
        bin.install "aws-oidc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.34/aws-oidc_0.25.34_linux_amd64.tar.gz"
      sha256 "c9832f8a640a17172f71b9eb4e07aab27a89962e900aedd63b63740f91a74e6b"

      def install
        bin.install "aws-oidc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.34/aws-oidc_0.25.34_linux_arm64.tar.gz"
      sha256 "268c13ca6d7b869c01551f3a0c23afd7a02878e52d4c62df534d8fdd1322abe7"

      def install
        bin.install "aws-oidc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
