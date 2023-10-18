# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidcRc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.28.6-5068557"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.6-5068557/aws-oidc_0.28.6-5068557_darwin_arm64.tar.gz"
      sha256 "adf3aec31cf29ce41ffdd37faa4dcba5595272bdc4bb5b1d351c21b6b7847ee2"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.6-5068557/aws-oidc_0.28.6-5068557_darwin_amd64.tar.gz"
      sha256 "1825cafadde2ee31667cee5f14e51135600f65d8400fda3693d9dd973f4c7397"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.6-5068557/aws-oidc_0.28.6-5068557_linux_arm64.tar.gz"
      sha256 "4420fd85d64edd36626189578a2b91037e98bca973ef17a5a36e70f8f838724b"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.6-5068557/aws-oidc_0.28.6-5068557_linux_amd64.tar.gz"
      sha256 "2cd7d3f155144e91cb67e6320fae0c93c5006bcca7d0fe9651a45d9e6702d043"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
