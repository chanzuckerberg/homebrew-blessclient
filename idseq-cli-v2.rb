# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class IdseqCliV2 < Formula
  desc "A CLI for uploading samples to IDSeq"
  homepage "https://github.com/chanzuckerberg/idseq-cli-v2"
  version "2.2.3"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/idseq-cli-v2/releases/download/v2.2.3/idseq-cli-v2_darwin_amd64.tar.gz"
      sha256 "1bb953bcc5e92a4c03e740378a954f0d608f3cbfa970f80413784f3a0ee2fc10"
    end
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/idseq-cli-v2/releases/download/v2.2.3/idseq-cli-v2_darwin_arm64.tar.gz"
      sha256 "67c62967d4e32f9d22c77696d239ce659368c98472d1b3b60cc81b5d88186f39"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/idseq-cli-v2/releases/download/v2.2.3/idseq-cli-v2_linux_amd64.tar.gz"
      sha256 "6c16de839e9f357b63a009596efa9b6c532fd928ef82d3c4e48c9544bc9ebc03"
    end
  end

  def install
    bin.install "idseq"
    bash_completion.install "bash_completion" => "idseq"
    zsh_completion.install "zsh_completion" => "_idseq"
  end

  test do
    system "#{bin}/idseq --version"
  end
end
