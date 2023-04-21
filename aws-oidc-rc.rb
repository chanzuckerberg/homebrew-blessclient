# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidcRc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.25.62-5c61e60"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.62-5c61e60/aws-oidc_0.25.62-5c61e60_darwin_arm64.tar.gz"
      sha256 "830859b72291d7dd0b50326eab33bf9391c0f42fbac7bc539c9a7e2be46b2204"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.62-5c61e60/aws-oidc_0.25.62-5c61e60_darwin_amd64.tar.gz"
      sha256 "e9c19f97d2d110a7da95aa16ad1350e063c9acaddca870ef3843559b4c104d7d"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.62-5c61e60/aws-oidc_0.25.62-5c61e60_linux_amd64.tar.gz"
      sha256 "0404af6185c51f6415e0273e2fa7d5ace67e5e08775d854e192f148b69aabfd7"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.62-5c61e60/aws-oidc_0.25.62-5c61e60_linux_arm64.tar.gz"
      sha256 "62bc2faecc79256bbaeaef96fbad143adab54c29055a3332818180486c6179f9"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
