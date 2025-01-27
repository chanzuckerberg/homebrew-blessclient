# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Argus < Formula
  desc "The command line tool for the Argus platform."
  homepage "https://github.com/chanzuckerberg/argus-artifacts"
  version "0.47.3"

  on_macos do
    on_intel do
      url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.47.3/argus_0.47.3_darwin_amd64.tar.gz"
      sha256 "e436b349f6c0ef2f534eada60452a4a6d607f1906c44bc0aa8d5b95630c35f21"

      def install
        bin.install "argus"
      end
    end
    on_arm do
      url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.47.3/argus_0.47.3_darwin_arm64.tar.gz"
      sha256 "6ca9ca27832e45a6356984bf42de93434bc40a82cad98ab2c7939031d20dcba5"

      def install
        bin.install "argus"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.47.3/argus_0.47.3_linux_amd64.tar.gz"
        sha256 "6da0aa28fcd6b8dcf8af23b338a19d23f2fa5a5cd6acb7b3aa3a96aab0e764d6"

        def install
          bin.install "argus"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.47.3/argus_0.47.3_linux_arm64.tar.gz"
        sha256 "c286fb0487b285049539bf9314f42fb90daa564f19f14ad78442a3714b3aefcc"

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
