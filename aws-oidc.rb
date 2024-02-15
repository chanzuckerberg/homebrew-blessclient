# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.28.48"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.48/aws-oidc_0.28.48_darwin_arm64.tar.gz"
      sha256 "ae3abd4d28fba55642b4c432f8b6e05a84a2ff00d5af59e08aa39bde73ae1d36"

      def install
        bin.install "aws-oidc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.48/aws-oidc_0.28.48_darwin_amd64.tar.gz"
      sha256 "53a25f47bbfa5975fa08f9319a99f24afcbd8fb7bce25cb4449e01e555451bdc"

      def install
        bin.install "aws-oidc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.48/aws-oidc_0.28.48_linux_arm64.tar.gz"
      sha256 "662198044934c83d1d459476503bdb81b6dade154d6a5a1fd988f6394e7fb583"

      def install
        bin.install "aws-oidc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.48/aws-oidc_0.28.48_linux_amd64.tar.gz"
      sha256 "b2c1f353e640a40f66d8a627bc661f610fe3d03351cd4b16b6e8310c9be58324"

      def install
        bin.install "aws-oidc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
