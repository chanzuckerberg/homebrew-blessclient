# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.25.41"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.41/aws-oidc_0.25.41_darwin_arm64.tar.gz"
      sha256 "5d15e76564c5463bd39bf8ff5238f95000e941305c3312aa2788479f97e236ee"

      def install
        bin.install "aws-oidc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.41/aws-oidc_0.25.41_darwin_amd64.tar.gz"
      sha256 "13c2d6501eb95691c5d6b49fc3306e5cd0bbf956ed5f05eb8b162a3c2baa3d89"

      def install
        bin.install "aws-oidc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.41/aws-oidc_0.25.41_linux_amd64.tar.gz"
      sha256 "bae4a8bec5b674d102df05ddb20f4476ad57b014b6c5be5243d8348c69f37f10"

      def install
        bin.install "aws-oidc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.41/aws-oidc_0.25.41_linux_arm64.tar.gz"
      sha256 "d7a37a8578d2938307f7cef6507f62a5fc8d5ff2fc05b7aae53238e17e301096"

      def install
        bin.install "aws-oidc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
