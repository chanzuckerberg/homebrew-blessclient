# This file was generated by GoReleaser. DO NOT EDIT.
class CrcSquared < Formula
  desc "Light speed crc32c checksums"
  homepage "https://github.com/chanzuckerberg/crc-squared"
  version "0.1.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/chanzuckerberg/crc-squared/releases/download/v0.1.1/crc-squared_0.1.1_darwin_amd64.tar.gz"
    sha256 "ed12268b22a20dc59c98adf737d3673e8f83818b56e0ca386e1b1e76da4471f0"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/crc-squared/releases/download/v0.1.1/crc-squared_0.1.1_linux_amd64.tar.gz"
      sha256 "e7db23debc3ce16496e8b36bffe542d963dce291092de96c4727d7e9581f80af"
    end
  end

  def install
    bin.install "crc-squared"
    bash_completion.install "completions/bash" => "crc-squared"
    zsh_completion.install "completions/zsh" => "_crc-squared"
  end

  test do
    system "#{bin}/crc-squared --version"
  end
end
