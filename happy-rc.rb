# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HappyRc < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.29.1-e64cb16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.1-e64cb16/happy_0.29.1-e64cb16_darwin_arm64.tar.gz"
      sha256 "e7daa1c53fa4e5486d21f2274a36a4d612079217cc0ea7f459ebd2da27f95b2c"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.1-e64cb16/happy_0.29.1-e64cb16_darwin_amd64.tar.gz"
      sha256 "3f74c785ea4d055f32823a8493d9af4c3664d52524fc8272f2facf356fc8735f"

      def install
        bin.install "happy-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.1-e64cb16/happy_0.29.1-e64cb16_linux_arm64.tar.gz"
      sha256 "7a475d59bb2718788cf8f55e291a9021d2caf7b54a3fd080030dd9136280e9cd"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.1-e64cb16/happy_0.29.1-e64cb16_linux_amd64.tar.gz"
      sha256 "47a13941fc4c325180980480c406325a18cfbe759387829dcc846b5d6c4f6e49"

      def install
        bin.install "happy-rc"
      end
    end
  end

  test do
    system "#{bin}/happy-rc"
  end
end
