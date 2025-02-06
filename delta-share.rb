# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class DeltaShare < Formula
  desc "The command line tool for the CZI Databricks Delta Share short-lived tokens."
  homepage "https://github.com/chanzuckerberg/delta-share"
  version "0.0.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/delta-share/releases/download/v0.0.8/delta-share_0.0.8_darwin_amd64.tar.gz"
      sha256 "78d37ba867d0fec0ba2c7006a72fc758d761d37436dc4afecbb0ca6535c6fff0"

      def install
        bin.install "delta-share"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/delta-share/releases/download/v0.0.8/delta-share_0.0.8_darwin_arm64.tar.gz"
      sha256 "57fcef32bdecb749f6a21f729dd586455434866cd442d5df4ba623bc3672420b"

      def install
        bin.install "delta-share"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chanzuckerberg/delta-share/releases/download/v0.0.8/delta-share_0.0.8_linux_amd64.tar.gz"
        sha256 "fda319c0a316a34200c9db06b1a9f059a4662bd2f196650b329fa643e4f0b02d"

        def install
          bin.install "delta-share"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chanzuckerberg/delta-share/releases/download/v0.0.8/delta-share_0.0.8_linux_arm64.tar.gz"
        sha256 "f0c31c79526ae8599564fb9fd39f2a4c115751d01b918d4392110601e0f2c313"

        def install
          bin.install "delta-share"
        end
      end
    end
  end

  test do
    system "#{bin}/delta-share version"
  end
end
