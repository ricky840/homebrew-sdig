class Sdig < Formula
  desc "A little script does DNS lookup to get Akamai staging network IP address."
  homepage "https://origin-sfo.datswatsup.com"
  url "https://github.com/ricky840/sdig/blob/master/sdig.rb"
  version "1.0.0"
  sha256 "9bfd5e810f97582201d1a3c0f03a681a0bc1fb1ea21c281708a7e06d6480f4eb"
  license "MIT"

  def install
    ohai "Installing.."
    bin.install "sdig.rb" => "sdig"
  end

  test do
    system "#{bin}/sdig", "-h"
  end
end
