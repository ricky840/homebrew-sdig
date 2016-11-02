Sdig
====

  A little script does DNS lookup to get Akamai staging network IP address.

Usage
====

  $ sdig www.domain.com [options]

Installation (using homebrew)
====

  $ brew install https://raw.githubusercontent.com/ricky840/sdig/master/akasdig.rb

Options
====

  -v, --verbose                    Verbose output. Print the whole DNS resolution chain.
  -a, --add                        Add staging IP spoofing to /etc/hosts.
  -r, --remove                     Remove all spoofing for the domain from /etc/hosts.
  -e, --etn NUMBER(1~11)           Add etn server spoofing to /etc/hosts.
  -h, --help                       Display help message.

Example
====

