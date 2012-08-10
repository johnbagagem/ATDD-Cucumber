begin
	print eval(ARGV[0])
rescue ZeroDivisionError
	print "Bad Boy"
	exit(1)
end

