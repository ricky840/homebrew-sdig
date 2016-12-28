class Akasdig < Formula
  desc "A dirty little script does DNS lookup to get Akamai staging network IP address and little more."
  homepage "www.akamai.com"
  url "https://raw.githubusercontent.com/ricky840/homebrew-akasdig/master/sdig"
  sha256 "5298c225170f3aaaa9b60298dc48296e45fe5bc530cc7df4cd3427fad2f71239"
  version "0.1.5"

  # depends_on "optparse"
  # depends_on "json"
  # depends_on "net/http"
  # depends_on "terminal-table"
  # depends_on "ipaddr"
  # depends_on "ruby-progressbar"
  # depends_on "thread/pool"

  resource 'json' do
    url 'https://rubygems.org/downloads/json-1.8.3.gem'
    sha256 '8ca2091e26678fb989d66cdb9f0104f1307bc584b429c2fd783d51e4b3f14bdb'
  end

  def install
    bin.install "sdig"
		resources.each do |r|
      r.verify_download_integrity(r.fetch)
      system("sudo", "gem", "install", r.cached_download, "--no-document")
    end
  end

  test do
    system "#{bin}/sdig"
  end
end
