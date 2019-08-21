# This file was generated by GoReleaser. DO NOT EDIT.
class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  version "0.30.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/chanzuckerberg/fogg/releases/download/v0.30.2/fogg_0.30.2_darwin_amd64.tar.gz"
    sha256 "c4aedf71d338cbc82618bbb8e062edcdf5f020eb92fc9ee01f0d4a5a19cf030b"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.30.2/fogg_0.30.2_linux_amd64.tar.gz"
      sha256 "4b964b124d658a26570d654aac2491c8ee9236d37d8e568e33272c4eaffb9fc1"
    end
  end

  def install
    bin.install "fogg"
  end

  test do
    system "#{bin}/fogg version"
  end
end
