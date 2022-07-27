# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HappyRc < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.27.0-754f58d"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.27.0-754f58d/happy_0.27.0-754f58d_darwin_arm64.tar.gz"
      sha256 "b673b41e43e73fe500a06cf5ac606e44cd4335b773f3f9655ac4812481cfc72b"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.27.0-754f58d/happy_0.27.0-754f58d_darwin_amd64.tar.gz"
      sha256 "96fe7feb9d6c59ca4d0c97dd1047805ee39c1b2bc0d1aa4de51acd65838a8e6d"

      def install
        bin.install "happy-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.27.0-754f58d/happy_0.27.0-754f58d_linux_arm64.tar.gz"
      sha256 "3edec20115a1ec2d46d6ddb4325f7fa229e062afe96e5ce29c6252c01b8d048f"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.27.0-754f58d/happy_0.27.0-754f58d_linux_amd64.tar.gz"
      sha256 "7df448a7b437abe2c37490b87beee5f73d75d7a24e13bf35a462b76b08dff92e"

      def install
        bin.install "happy-rc"
      end
    end
  end

  test do
    system "#{bin}/happy-rc"
  end
end
