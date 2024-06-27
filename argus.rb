# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Argus < Formula
  desc "The command line tool for the Argus platform."
  homepage "https://github.com/chanzuckerberg/argus-artifacts"
  version "0.22.1"

  on_macos do
    on_intel do
      url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.22.1/argus_0.22.1_darwin_amd64.tar.gz"
      sha256 "b8f411e758193be504d1c2f7d805d890c3221459dbadbfc7cc29456ab6a94c83"

      def install
        bin.install "argus"
      end
    end
    on_arm do
      url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.22.1/argus_0.22.1_darwin_arm64.tar.gz"
      sha256 "233eb93af76c1d3844e3f4412925bf1c827a70aea7184b372bedc48491114a5d"

      def install
        bin.install "argus"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.22.1/argus_0.22.1_linux_amd64.tar.gz"
        sha256 "00d673b2a2db875b4ddaeb3c0d2036c66ae09f29a7023b79265793e47287e071"

        def install
          bin.install "argus"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.22.1/argus_0.22.1_linux_arm64.tar.gz"
        sha256 "5a16b45812b28652fcc3f699902d0a5bf42dadbc36a92b5540f78cfeb2a6b56d"

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
