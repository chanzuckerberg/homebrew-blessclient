# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Happy < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.42.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.42.1/happy_0.42.1_darwin_amd64.tar.gz"
      sha256 "754284efb322d21ac355d75ec326c0240ade51a3abd91eae171d6997c2ce7823"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.42.1/happy_0.42.1_darwin_arm64.tar.gz"
      sha256 "7078dd0c9e1800c7f6f663e4d07a15b34af49be8218a1b703662b46d23b95709"

      def install
        bin.install "happy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.42.1/happy_0.42.1_linux_arm64.tar.gz"
      sha256 "bcf183b718f0347797ef75c62c566c6909300c3d5263dc5d7423c4e2a1a3be35"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.42.1/happy_0.42.1_linux_amd64.tar.gz"
      sha256 "c2d2fd22dd173248a6ff1e0e1d7f6f22b1ada1f9cac44680f6399ca3744e3efa"

      def install
        bin.install "happy"
      end
    end
  end

  test do
    system "#{bin}/happy"
  end
end
