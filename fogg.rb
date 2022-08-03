# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  version "0.67.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.67.2/fogg_0.67.2_darwin_amd64.tar.gz"
      sha256 "f03138f26fe68d41bf7faefda784dffab6eea510112d22120ea13a5969be25b4"

      def install
        bin.install "fogg"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.67.2/fogg_0.67.2_darwin_arm64.tar.gz"
      sha256 "cea314b2da842f9b2451da7233c1eaa022ca813824936081338031ff80c497a5"

      def install
        bin.install "fogg"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.67.2/fogg_0.67.2_linux_arm64.tar.gz"
      sha256 "5f476b345ca92fd9aa8f81a7ba10d50f89003cb9484ace2401f458e83acbc1b4"

      def install
        bin.install "fogg"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.67.2/fogg_0.67.2_linux_amd64.tar.gz"
      sha256 "4a7826b5aa87e03487646ab541555a1be0669e501aa5782fd04c5f0f3373a20b"

      def install
        bin.install "fogg"
      end
    end
  end

  test do
    system "#{bin}/fogg version"
  end
end
