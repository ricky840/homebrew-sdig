class Akasdig < Formula
  desc "A little script does DNS lookup to get Akamai staging network IP address."
  homepage "www.akamai.com"
  url "https://raw.githubusercontent.com/ricky840/homebrew-akasdig/master/sdig"
  sha256 "71c2fc2787d47e6a5407ea763b0386273494e1214b8c062c121380ca1020bfb5"
  version "0.1.3"

  def install
    bin.install "sdig"
  end

  test do
    system "#{bin}/sdig"
  end
end
