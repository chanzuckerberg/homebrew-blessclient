# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidcRc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.28.30-c56a88d"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.30-c56a88d/aws-oidc_0.28.30-c56a88d_darwin_arm64.tar.gz"
      sha256 "23e144bb2b886904e1cd4eea010f257110100143350cfbd687e764ec1dc3af51"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.30-c56a88d/aws-oidc_0.28.30-c56a88d_darwin_amd64.tar.gz"
      sha256 "f83cd87c3130fad976caf94c27e7851453c03f276198c131f7c56f39ac1a3e63"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.30-c56a88d/aws-oidc_0.28.30-c56a88d_linux_arm64.tar.gz"
      sha256 "42cbe73906c1847ae0da656bbf3144a7457a84eadcbfbf9144e4755456b1c024"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.30-c56a88d/aws-oidc_0.28.30-c56a88d_linux_amd64.tar.gz"
      sha256 "1a08c8a04fc16222ad6b01dbf1032f6461b69426e345b91cff8b23ecebd3bf18"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
