class Akasdig < Formula
  desc "A little script does DNS lookup to get Akamai staging network IP address."
  homepage "www.akamai.com"
  url "https://raw.githubusercontent.com/ricky840/sdig/master/sdig"
  sha256 "014c1a86c4e9e7a2c188174a009d21bdde4d95f1ba15b1dae8dbdc75bd536fa0"
  version "0.1.2"

  def install
    bin.install "sdig"
  end

  test do
    system "#{bin}/sdig"
  end
end
