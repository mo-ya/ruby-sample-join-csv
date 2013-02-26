#!/usr/bin/ruby
########################################
#### Settings
DELIM=","

########################################
#### Main Program

if ARGV.size < 3
  print <<-"EOH"

    USAGE: ruby #{$0} <IN-FILE1> <IN-FILE2> <OUT-FILE>

EOH
  exit 1
end

in1, in2, out = ARGV[0..2]

in1lines = File.open(in1).read.split("\n")
in2lines = File.open(in2).read.split("\n")
out_io   = File.open(out, "w")

in1size = in1lines.size
in2size = in2lines.size

line_num = in1size > in2size ? in1size : in2size

for n in 1..line_num
  in1dat = in1lines[n-1] ||= ""
  in2dat = in2lines[n-1] ||= ""
  out_io.puts in1dat + DELIM + in2dat
end

out_io.close
