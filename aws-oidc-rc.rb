# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidcRc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.28.44-27a8719"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.44-27a8719/aws-oidc_0.28.44-27a8719_darwin_arm64.tar.gz"
      sha256 "787aaa3bbfb78d817105dbdf09f7bbfb57571732f0c837d77278cc83fe6859a9"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.44-27a8719/aws-oidc_0.28.44-27a8719_darwin_amd64.tar.gz"
      sha256 "60a463d1e411c465b1d7c5340272d0639656f9e7540a2140fb4d44c00c4ea300"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.44-27a8719/aws-oidc_0.28.44-27a8719_linux_arm64.tar.gz"
      sha256 "861fc91280473c3c29fb7b64fb4d8f68e1ad84826f9bf1e45d8f5bae1c58cdd5"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.44-27a8719/aws-oidc_0.28.44-27a8719_linux_amd64.tar.gz"
      sha256 "cfa08341b1a4af48d91071cf42cff2d5aea888efb7953c3f5b8905dff4edf879"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
