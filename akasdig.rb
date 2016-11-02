class Akasdig < Formula
  desc "A little script does DNS lookup to get Akamai staging network IP address."
  homepage "www.akamai.com"
  url "https://raw.githubusercontent.com/ricky840/sdig/master/sdig"
  sha256 "4ca01e00179f8fa659a606d2675dd2912309d60cac0da4f7dfe1628adec86296"
  version "0.1.2"

  def install
    bin.install "sdig"
  end

  test do
    system "#{bin}/sdig"
  end
end
