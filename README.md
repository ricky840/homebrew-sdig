Sdig
====

A little script does DNS lookup to get Akamai staging IP address.

Usage
====

$ sdig.rb www.domain.com options


Options
====

 -:   Remove domain from the host file.


Example
====

To add staging network IP to host file.
```
[ryu@workbox ~ ]$ sdig www.samsung.com
Staging IPs:
23.62.71.46
Would you like to add the IP to the host file?(y/n)
y
Password:
Succesfully added
```

To remove from the host file.
```
[ryu@workbox]$ sdig www.samsung.com -
Password:
Entry removed
```
