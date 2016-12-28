class Akasdig < Formula
  desc "A dirty little script does DNS lookup to get Akamai staging network IP address and little more."
  homepage "www.akamai.com"
  url "https://raw.githubusercontent.com/ricky840/homebrew-akasdig/master/sdig"
  sha256 "5298c225170f3aaaa9b60298dc48296e45fe5bc530cc7df4cd3427fad2f71239"
  version "0.1.4"

  # depends_on "optparse"
  # depends_on "json"
  # depends_on "net/http"
  # depends_on "terminal-table"
  # depends_on "ipaddr"
  # depends_on "ruby-progressbar"
  # depends_on "thread/pool"
  #

  resource 'aws-sdk' do
    url 'https://rubygems.org/gems/aws-sdk-2.6.29.gem'
    sha256 '686ecaf63713d7a123cdfb1d746cc660236b6c8c3ac0b4f12b56479fa0542f06'
  end

  def install
    bin.install "sdig"
  end

  test do
    system "#{bin}/sdig"
  end
end
