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

  resource 'optparse' do
    url 'https://rubygems.org/downloads/rubysl-optparse-2.0.1.ge://rubygems.org/downloads/rubysl-optparse-2.0.1.gem'
    sha256 '4fe37d7d7b0fc8a026007d7d3ef3b59d06dbc9386f4e4ff3d8ec11e583f85b02'
  end

  def install
    bin.install "sdig"
		resources.each do |r|
      r.verify_download_integrity(r.fetch)
      system("gem", "install", r.cached_download, "--no-document")
    end
  end

  test do
    system "#{bin}/sdig"
  end
end
