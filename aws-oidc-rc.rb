# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidcRc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.25.92-3e37b6f"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.92-3e37b6f/aws-oidc_0.25.92-3e37b6f_darwin_arm64.tar.gz"
      sha256 "ad02e50833c75805a63400a4065bf7dac3148d601b73c373f07b8ad19e46222b"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.92-3e37b6f/aws-oidc_0.25.92-3e37b6f_darwin_amd64.tar.gz"
      sha256 "a39f3ee3811f9839671d2e2fcfef214a26822d08d4234229e5ab5c98e109999d"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.92-3e37b6f/aws-oidc_0.25.92-3e37b6f_linux_amd64.tar.gz"
      sha256 "dd3b9bb326f23e8d2ab8e2e4966d0a748d9dbf8fdf008cd41c21acb0f705bb9a"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.92-3e37b6f/aws-oidc_0.25.92-3e37b6f_linux_arm64.tar.gz"
      sha256 "60200ae1b2adf1e7f6be3de69b05cf878394681ec6f8fa814a2d603f6e60f1dc"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
