# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Argus < Formula
  desc "The command line tool for the Argus platform."
  homepage "https://github.com/chanzuckerberg/argus-artifacts"
  version "0.51.0"

  on_macos do
    on_intel do
      url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.51.0/argus_0.51.0_darwin_amd64.tar.gz"
      sha256 "22841dacb9bfbcda6179162d8f132e896ba0953afb4182d1b47f18f916a7f329"

      def install
        bin.install "argus"
      end
    end
    on_arm do
      url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.51.0/argus_0.51.0_darwin_arm64.tar.gz"
      sha256 "2adf6c910313017118f675b872ccdf03228ded49de57c71a03e9496301375e8c"

      def install
        bin.install "argus"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.51.0/argus_0.51.0_linux_amd64.tar.gz"
        sha256 "2358860fe039ab1f66c57a15a2392055233892f3af7ba84e0dc0be83ce2eda8c"

        def install
          bin.install "argus"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.51.0/argus_0.51.0_linux_arm64.tar.gz"
        sha256 "1395f2bb95997ccf758aee5c18f9ef8ba800a70f45484c83134bfe5155550379"

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
