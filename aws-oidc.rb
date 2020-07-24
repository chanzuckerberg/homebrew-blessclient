# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.21.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.21.0/aws-oidc_0.21.0_darwin_amd64.tar.gz"
    sha256 "d29db018e8157879eedf4d40a15c298e3372f282d6f1e7681080e86648b5afee"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.21.0/aws-oidc_0.21.0_linux_amd64.tar.gz"
      sha256 "497f6c6885657069a3a51575776a98497c88b5a97e6419c790467f241897489b"
    end
  end

  def install
    bin.install "aws-oidc"
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
