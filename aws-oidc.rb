# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.25.37"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.37/aws-oidc_0.25.37_darwin_arm64.tar.gz"
      sha256 "0178a0d4533e274dcd2834654437a7f9269283f9baf78829865f756400d3b88e"

      def install
        bin.install "aws-oidc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.37/aws-oidc_0.25.37_darwin_amd64.tar.gz"
      sha256 "898203cb4ce9845fa411e19e869689d38c21772ff25e103cef5ba81a76e80dba"

      def install
        bin.install "aws-oidc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.37/aws-oidc_0.25.37_linux_amd64.tar.gz"
      sha256 "960b9b2ad6956fd435d45e254b6c27522747237da3dbdc6a84980db83617cbd3"

      def install
        bin.install "aws-oidc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.37/aws-oidc_0.25.37_linux_arm64.tar.gz"
      sha256 "fbf378ae0885c1084a2c7e134852d89fc8979019fbec9cef100da8abf9d481de"

      def install
        bin.install "aws-oidc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
