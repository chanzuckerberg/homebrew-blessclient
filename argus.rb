# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Argus < Formula
  desc "The command line tool for the Argus platform."
  homepage "https://github.com/chanzuckerberg/argus-artifacts"
  version "0.36.1"

  on_macos do
    on_intel do
      url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.36.1/argus_0.36.1_darwin_amd64.tar.gz"
      sha256 "3727465e54628a619f704670b06a07280248e84f46204bb9a26bffceefa81268"

      def install
        bin.install "argus"
      end
    end
    on_arm do
      url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.36.1/argus_0.36.1_darwin_arm64.tar.gz"
      sha256 "4d38d1970811a53ec3f3e53b3d5862ed8aadcb2cb27ddc2df354c72f4588beba"

      def install
        bin.install "argus"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.36.1/argus_0.36.1_linux_amd64.tar.gz"
        sha256 "6629355b3b1e211c5caec79583dcb5a3710d832e44107d0cc9806df908eb397e"

        def install
          bin.install "argus"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.36.1/argus_0.36.1_linux_arm64.tar.gz"
        sha256 "54f4568968cf454272fddfef56d073fe495ac9a92a99d01924564a89f30f22b2"

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
