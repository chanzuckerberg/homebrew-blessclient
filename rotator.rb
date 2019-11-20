# This file was generated by GoReleaser. DO NOT EDIT.
class Rotator < Formula
  desc "Rotating credentials."
  homepage "https://github.com/chanzuckerberg/rotator"
  version "0.2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/chanzuckerberg/rotator/releases/download/v0.2.0/rotator_0.2.0_darwin_amd64.tar.gz"
    sha256 "5659e0c622900691e20a91503f346c80ec8ed591c1845fa950cd160122bc7908"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/rotator/releases/download/v0.2.0/rotator_0.2.0_linux_amd64.tar.gz"
      sha256 "30ae502f2f3dea0035155276203234d33bf9aefdb521ce8696542edc0472ac15"
    end
  end

  def install
    bin.install "rotator"
  end

  test do
    system "#{bin}/rotator --help"
  end
end
