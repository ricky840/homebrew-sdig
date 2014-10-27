#!/usr/bin/env ruby

unless ARGV.length == 1
  puts "\n"
  puts "Usage:"
  puts "   sdig www.domain.com"
  puts "\n"
  exit
end

def add_ip_to_host(ipaddr, domain)
  arr_ip = ipaddr.split
  if arr_ip.length > 1
    ipaddr = arr_ip.first
  end
  cmd = "sudo sh -c 'echo #{ipaddr.strip} #{domain.strip} >> /etc/hosts'"
  if system(cmd)
    puts "Succesfully added"
  else
    puts "Oops something happend, see if it was added yourself!"
  end
end

domain = ARGV[0]
staging_ip = "NoIPwasFound"
arr_result = %x(dig #{domain} +short).split("\n")
arr_result.each do |each|
  if each =~ /.*akamaiedge\.net\./ or each =~ /.*akamai\.net\./
    staging_domain = each.to_s.gsub(".net.", "-staging.net.")
    staging_ip = %x(dig #{staging_domain} +short)
    puts "Staging IPs:"
    puts staging_ip
  end
end

if not staging_ip == "NoIPwasFound"
  while true
    puts "Would you like to add the IP to the host file?(y/n)"
    ARGV.clear
    answer = gets.chomp
    case answer
      when "y"
        add_ip_to_host(staging_ip, domain)
        break
      when "n"
        puts "Bye!"
        exit
    end
  end
elsif staging_ip =="NoIPwasFound"
 puts "It seems the domain is not on Akamai"
 puts %x(dig #{domain})
end






