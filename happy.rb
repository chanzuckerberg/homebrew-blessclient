# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Happy < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.36.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.36.0/happy_0.36.0_darwin_arm64.tar.gz"
      sha256 "c3f93b537742e456b667850c3b6aa8f4f081b5d7ebd1f3e94e1a77542e710493"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.36.0/happy_0.36.0_darwin_amd64.tar.gz"
      sha256 "828e84b2c3cafe2f7ea8e88356cf7baddb9497088744f1b024c8df5d3e5e3fb1"

      def install
        bin.install "happy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.36.0/happy_0.36.0_linux_arm64.tar.gz"
      sha256 "b8cd9cb63476749a5b09e732ffa0dbf590b1a5977801d4db9f18de1264b67d8c"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.36.0/happy_0.36.0_linux_amd64.tar.gz"
      sha256 "1340809c54fa494f4310ed8a9fe0e6bf192a50ba3d7025f350fcf40f281e182e"

      def install
        bin.install "happy"
      end
    end
  end

  test do
    system "#{bin}/happy"
  end
end
