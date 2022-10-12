# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidcRc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.25.3-eecf02a"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.3-eecf02a/aws-oidc_0.25.3-eecf02a_darwin_arm64.tar.gz"
      sha256 "cd5fe1b74361ee843656f5ce6ae71e041543c03a3328ec42b0f449a5156a9389"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.3-eecf02a/aws-oidc_0.25.3-eecf02a_darwin_amd64.tar.gz"
      sha256 "56ce1a8b9e93a582c94a959f12d4ea776bacb3bc967ac9061c2bf6fa8bc2e9d1"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.3-eecf02a/aws-oidc_0.25.3-eecf02a_linux_amd64.tar.gz"
      sha256 "e34af84d0a5ad64007ff169643f4c63900ea42557b55766f7dd385a5fd0c1db9"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.3-eecf02a/aws-oidc_0.25.3-eecf02a_linux_arm64.tar.gz"
      sha256 "77fb6243808e02ab025516547767286ff588c1e3e8276e9bed92b8de0f8bb3a4"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
