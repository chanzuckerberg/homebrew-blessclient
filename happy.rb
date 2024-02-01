# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Happy < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.126.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.126.1/happy_0.126.1_darwin_arm64.tar.gz"
      sha256 "b36e0482eb71e22def05c5b49b07a937de7d7ec7a66527add214bc62974acc7f"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.126.1/happy_0.126.1_darwin_amd64.tar.gz"
      sha256 "6de5e8b1edc6779eed4f2a80068bd12bc13b9928527ce24e9a3d0b616d3a8fb7"

      def install
        bin.install "happy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.126.1/happy_0.126.1_linux_arm64.tar.gz"
      sha256 "3b3288a28d15e6bdcc8c9cadc78f040c753d460c86b89cab569c83f6017a09d0"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.126.1/happy_0.126.1_linux_amd64.tar.gz"
      sha256 "3c0b5a96e11bc1fe0ca88f286dd9444423021f5c1d2a55f3f688800f5db254f9"

      def install
        bin.install "happy"
      end
    end
  end

  test do
    system "#{bin}/happy"
  end
end
