#!/usr/bin/python
import csv

input_file_name = "spainrobotics.csv"
forward_file_name = "spainforward.txt"
reverse_file_name = "spainreverse.txt"
domain_name = ".robotics.spain."

input_file = open(input_file_name,'r')
forward_file = open(forward_file_name,'w')
reverse_file = open(reverse_file_name,'w')
input_reader = csv.reader(input_file)

for line in input_reader:
	host = line[0]
	ip = line[1]
	fqdn = host + domain_name
	padding = ' ' * (30 - len(fqdn))
	forward_file.write(fqdn + padding +'IN A ' + ip + '\n')
	[i1,i2,i3,i4] = ip.split('.')
	revaddr = i4 + '.' + i3 + '.' + i2 + '.' + i1 + '.in-addr.arpa.'
	padding = ' ' * (30 - len(revaddr))
	reverse_file.write(revaddr + padding + 'IN PTR ' + fqdn + '\n')