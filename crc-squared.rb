# This file was generated by GoReleaser. DO NOT EDIT.
class CrcSquared < Formula
  desc "Copy large files to, from, and between s3 buckets with parallelism"
  homepage "https://github.com/chanzuckerberg/crc-squared"
  version "0.1.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/chanzuckerberg/crc-squared/releases/download/v0.1.0/crc-squared_0.1.0_darwin_amd64.tar.gz"
    sha256 "f97f569a09843f8500f64c732852a9604e033e1c158a4f110a7b231156fd7ddc"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/crc-squared/releases/download/v0.1.0/crc-squared_0.1.0_linux_amd64.tar.gz"
      sha256 "898b3b8bbb4a4d33d2ce8a69a186076c82fa2007cedefe6958df246d1ff8dd2a"
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
