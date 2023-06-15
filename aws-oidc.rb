# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.25.78"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.78/aws-oidc_0.25.78_darwin_arm64.tar.gz"
      sha256 "33437490f5797e544edc7e0d2a3035aca171119ebb8a579afc226450c05d5033"

      def install
        bin.install "aws-oidc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.78/aws-oidc_0.25.78_darwin_amd64.tar.gz"
      sha256 "eb38f83ac356f470f651bc28a255959de24ee26a9a031d76780d6df195bc22ea"

      def install
        bin.install "aws-oidc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.78/aws-oidc_0.25.78_linux_amd64.tar.gz"
      sha256 "4e53a35bfa11ce71dbe82acbe7f53b4cf0a48e201d0ccd23d6aa08dfd49ce00b"

      def install
        bin.install "aws-oidc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.78/aws-oidc_0.25.78_linux_arm64.tar.gz"
      sha256 "4a7ad167d608dcc3109edf69dc23c4bdcc764de6f9a3b2ebe7c05530c5281ee7"

      def install
        bin.install "aws-oidc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
