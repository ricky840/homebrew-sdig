class SdigFormula6 < Formula
  desc "test"
  homepage "fuck.com"
  url "https://raw.githubusercontent.com/ricky840/sdig/master/sdig.rb"
  sha256 "5a4f0d49d64b688fd68b345d643b9ddb64b78dae0fd4a9e3f7e639b8705c33ca"
  version "0.1"

  def install
    bin.install "sdig_formula6-0.1.rb"
  end

  test do
    system "#{bin}/sdig"
  end
end
