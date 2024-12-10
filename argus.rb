# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Argus < Formula
  desc "The command line tool for the Argus platform."
  homepage "https://github.com/chanzuckerberg/argus-artifacts"
  version "0.43.0"

  on_macos do
    on_intel do
      url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.43.0/argus_0.43.0_darwin_amd64.tar.gz"
      sha256 "cd833839ded9b7410fab34e83dccfc1ae5dfe397a38b0adcd31d5472259575f8"

      def install
        bin.install "argus"
      end
    end
    on_arm do
      url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.43.0/argus_0.43.0_darwin_arm64.tar.gz"
      sha256 "a52b266091e3fab8f73f48a18ea5a75364d62ce03ee3cd101de662e8a9fff42c"

      def install
        bin.install "argus"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.43.0/argus_0.43.0_linux_amd64.tar.gz"
        sha256 "8ac8321f7f19f6d0915c5552bcd093e35d14491ea759e9ce0e48cef7e3ab1856"

        def install
          bin.install "argus"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.43.0/argus_0.43.0_linux_arm64.tar.gz"
        sha256 "13f82c7c8a471abf7fdbcf1368f2eee7663e16364d4f12e86357512866ee38b3"

        def install
          bin.install "argus"
        end
      end
    end
  end

  test do
    system "#{bin}/argus version"
  end
end
