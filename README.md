Sdig
====

  A little script does DNS lookup to get Akamai staging network IP address.

Usage
====
```
  $ sdig www.foo.com [options]
```
Installation (using homebrew)
====
```
  $ brew install https://raw.githubusercontent.com/ricky840/sdig/master/akasdig.rb
```
Options
====
```
  -v, --verbose                    Verbose output. Print the whole DNS resolution chain.
  -a, --add                        Add staging IP spoofing to /etc/hosts.
  -r, --remove                     Remove all spoofing for the domain from /etc/hosts.
  -e, --etn NUMBER(1~11)           Add etn server spoofing to /etc/hosts.
  -h, --help                       Display help message.
```
Example
====

To get Akamai staging network IP address for www.akamai.com
```
$ sdig www.akamai.com
e1699.dscc.akamaiedge-staging.net.
23.62.71.31
```

Spoofing staging IP address for www.akamai.com
```
$ sdig www.akamai.com -a
e1699.dscc.akamaiedge-staging.net.
23.62.71.31
23.62.71.31 was added to the hosts file.
```

Remove www.akamai.com from /etc/hosts file.
```
$ sdig www.akamai.com -r
Removed www.akamai.com from /etc/hosts.
```

Remove existing www.akamai.com from /etc/hosts and add staging IP address.
```
$ sdig www.akamai.com -ra
Removed www.akamai.com from /etc/hosts.
23.62.71.31 was added to the hosts file.
```

Spoofing ETN test server IP address.
```
$ sdig www.akamai.com -e 7
etn7.akamai.com(205.185.220.230) was added to /etc/hosts.
```

