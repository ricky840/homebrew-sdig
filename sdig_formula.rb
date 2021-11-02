class Akasdig < Formula
  desc "A dirty little script does DNS lookup to get Akamai staging network IP address and little more."
  homepage "www.akamai.com"
  url "https://raw.githubusercontent.com/ricky840/sdig/master/sdig"
  sha256 "5298c225170f3aaaa9b60298dc48296e45fe5bc530cc7df4cd3427fad2f71239"
  version "0.2.1"

  # resource 'json' do
  #   url 'https://rubygems.org/downloads/json-1.8.3.gem'
  #   sha256 '8ca2091e26678fb989d66cdb9f0104f1307bc584b429c2fd783d51e4b3f14bdb'
  # end
  #
  # resource 'terminal-table' do
  #   url 'https://rubygems.org/downloads/terminal-table-1.7.3.gem'
  #   sha256 'f10d5ff88f5596dfeb45d2cdf1ad35b8b8e347f58bcc7307a270af44176885a5'
  # end
  #
  # resource 'ruby-progressbar' do
  #   url 'https://rubygems.org/downloads/ruby-progressbar-1.8.1.gem'
  #   sha256 '95ded755295440de814704970d7ccaf3cb259854534f03a03a6d05918f3eece3'
  # end
  #
  # resource 'thread' do
  #   url 'https://rubygems.org/downloads/thread-0.2.2.gem'
  #   sha256 '0ef704d20878d4dc9090fd2e8e99282fdc7bb047b2ee53fe15916bdfd97776f5'
  # end
  #
  #
  def install
    bin.install "sdig"
    
    opoo "Run following command to complete installation"
    opoo "gem install json ruby-progressbar thread terminal-table"

		# resources.each do |r|
    #   r.verify_download_integrity(r.fetch)
    #   system("gem", "install", r.cached_download, "--no-document")
    # end
  end

  test do
    system "#{bin}/sdig"
  end
end
