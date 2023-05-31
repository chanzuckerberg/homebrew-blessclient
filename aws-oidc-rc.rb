# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidcRc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.25.73-48e51fd"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.73-48e51fd/aws-oidc_0.25.73-48e51fd_darwin_arm64.tar.gz"
      sha256 "64e35e5148766da95b454c1458f9aa617ee1a1a00ce883459b9652420e359bb3"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.73-48e51fd/aws-oidc_0.25.73-48e51fd_darwin_amd64.tar.gz"
      sha256 "c23f9cbdd47459208080ac2c70aac23f3bd25017d491bc6a36f875548893334d"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.73-48e51fd/aws-oidc_0.25.73-48e51fd_linux_amd64.tar.gz"
      sha256 "e8e4d034013dda9b7c5558b5e33fe548e97331a9148f784ac5f7ae7418666a9a"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.73-48e51fd/aws-oidc_0.25.73-48e51fd_linux_arm64.tar.gz"
      sha256 "41f025a17afd65bdc747a55329215cf10e148c10da856456bd0283f77e5239ab"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
