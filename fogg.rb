# This file was generated by GoReleaser. DO NOT EDIT.
class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  version "0.30.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/chanzuckerberg/fogg/releases/download/v0.30.1/fogg_0.30.1_darwin_amd64.tar.gz"
    sha256 "01799ecfee8351ccb5fe2df76c75d07175ccfee1b374ce448dc378d31d20d8c9"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.30.1/fogg_0.30.1_linux_amd64.tar.gz"
      sha256 "88f9bb4582ea890818aac3a9dec37485ad7aa4187e05f76daf13458ce6cb6a95"
    end
  end

  def install
    bin.install "fogg"
  end

  test do
    system "#{bin}/fogg version"
  end
end
