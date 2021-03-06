# http://ruby.learncodethehardway.org/book/

# An 'octothorpe' is also called a 'pound', 'hash', 'mesh', or any number of names. Pick the one that makes you chill out.

cars = 100
people = 100
puts "there are #{cars} cars for #{people} available."
puts "there are %d cars for %d people available." % [cars, people]

x = "there are #{10} types of people"
binary = "binary"
do_not = "don't"
y = "Those who know #{binary} and those who #{do_not}"
puts x
puts y

puts "I said: #{x}."
puts "I also said: '#{y}'."

hilarious = false
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"
puts joke_evaluation

w = "this is the left side of ..."
e = "a string with a right side."
puts w+e

formatter = "%s %s %s %s "

puts formatter % [1, 2, 3, 4]
puts formatter % ['one', 'two', 'three', 'four']
puts formatter % [true, false, false, true]
puts formatter % [formatter, formatter, formatter, formatter]

months = "Jan\nFeb"
puts months

#hm, quite interesting stuff
puts <<PARAGRAPH
asdf
sdfadsasdadsf
wewe
asda
PARAGRAPH

puts "I am 6'2\" tall"
puts 'I am 6\'2" tall'

tabbed = "\tI'm tabbed in."
split = "I'm split\non a line"
backslashed = "I'm \\ a \\ cat"
lines = <<wtf
let's make a list:
\t* food
\t* fish
\t* else\n\t* grass
wtf
puts tabbed
puts split
puts backslashed
puts lines

# print 'hey, what''s up?'
# mood = gets
# puts 'ok, I got it - ' + mood
puts '----------------'
require 'open-uri'

# open("http://www.ruby-lang.org/en") do |f|
# 	# f.each_line {|line| p line}
# 	puts f.base_uri
# 	puts f.content_type
# 	puts f.charset
# 	puts f.content_encoding
# 	puts f.last_modified
# end


# first, second, third = ARGV
#very cool; you need to run the script from irb to see it
# puts "the script is called #{$0}" #! cool
# puts "first is #{first}"
# puts "second is #{second}"
# puts "third is #{third}"

# puts '-------- ex14'
# user = ARGV.first
# promt = '>'

# puts "hi #{user}, I'm the #{0} script"
# puts "do you like me #{user}?"
# print promt
# Also notice that we're using STDIN.gets instead of plain 'ol gets. That is because if there is stuff in ARGV, the default gets method tries to treat the first one as a file and read from that. To read from the user's input (i.e., stdin) in such a situation, you have to use it STDIN.gets explicitly.

# likes = STDIN.gets.chomp()
# likes = 'yep'

# puts <<MESSAGE
# Alright, you said #{likes}. Nice.
# MESSAGE

# filename = ARGV.first
# promt = ">"
# txt = File.open(filename)
# puts "Here is your file: #{filename}"
# puts txt.read()
# txt.close()

# puts "i am going to delete #{filename}"
# puts "if you don't want it, press Ctrl+C"
# puts "otherwise hit Enter"
# print "? "
# STDIN.gets

# puts 'openining the file'
# target = File.open(filename, 'w')

# puts 'truncating the file. bye file!'
# target.truncate(target.size)

# puts 'now I''m going to ask you for 3 lines'
# print 'line 1: '; line1 = STDIN.gets.chomp()
# print 'line 2: '; line2 = STDIN.gets.chomp()
# print 'line 3: '; line3 = STDIN.gets.chomp()
# puts 'I''m going to write them into the file'

# target.write(line1)
# target.write("\n")
# target.write(line2)
# target.write("\n")
# target.write(line3)
# target.write("\n")

# puts "And finally we close it"
# target.close()

# from_file, to_file = ARGV
# puts "Copying from #{from_file} to #{to_file}"

# input = File.open(from_file)
# indata = input.read()
# puts "the input file is #{indata.length} bytes long"

# puts "does output file exists? #{File.exists? to_file}"

# output = File.open(to_file, 'w')
# output.write(indata)

# puts 'alright, all done'
# output.close()
# input.close()

# See how short you can make the script. I could make this 1 line long.
# File.open(ARGV[1], 'w').write(File.open(ARGV[0]).read())
# File.open(ARGV[0]).close()
# File.open(ARGV[1]).close()

def ok_usual_function(arg1, arg2)
	puts "first is #{arg1}, second is #{arg2}"
end
def unusual_argument(*args)
	arg1, arg2 = *args
	puts "first recognized as #{arg1}, second - as #{arg2}" 
end
puts ok_usual_function("A", "B")
puts unusual_argument("A", "B")

input_file = '\asdf.txt'

def print_all(f)
	puts f.read()
end
def rewind(f)
	f.seek(0, IO::SEEK_SET)
end
def print_a_line(line_count, f)
	puts "#{line_count} #{f.readline()}"
end
current_file = File.open(input_file)
puts "First let's print the whole file:"
print_all(current_file)
puts "Now let's rewind"
rewind(current_file)
puts "Let's print 3 lines:"
current_line = 1
print_a_line(current_line, current_file)
current_line += 1
print_a_line(current_line, current_file)
current_line += 1
print_a_line(current_line, current_file)


