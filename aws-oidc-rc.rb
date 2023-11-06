# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidcRc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.28.14-5d70851"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.14-5d70851/aws-oidc_0.28.14-5d70851_darwin_arm64.tar.gz"
      sha256 "12848e14e0476f1ad8025221382f09975a5ec9db506a5dd2c68eaf90a60b4222"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.14-5d70851/aws-oidc_0.28.14-5d70851_darwin_amd64.tar.gz"
      sha256 "a0fa63cb568bd1201bf3588a223458c72d1dfa6ba925545c25e2a6c8b204fee0"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.14-5d70851/aws-oidc_0.28.14-5d70851_linux_arm64.tar.gz"
      sha256 "96ac49b1e448785c9f0b9f80abc995ce8df09db4992b0cf6f0aa2213e6615da6"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.14-5d70851/aws-oidc_0.28.14-5d70851_linux_amd64.tar.gz"
      sha256 "65b87dae8eaa2405113808c522c881e2405a82dab3ce95455855710eaf4c28dc"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
