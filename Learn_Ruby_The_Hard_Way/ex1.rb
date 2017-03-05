#learn ruby the hardway
firstArg = ARGV.first
first, anotherARG, yetAnotherARG = ARGV
skip = ARGV.empty?
argsArray = ARGV
ARGV.clear

puts "\nEx 1"
puts "I'd much rather you 'not'.'"
puts 'I "said" do not # touch this'

puts "\nEx 2"
puts "Nothing else to see here" #"Can't see this"
#"or this"

puts "\nEx 3"
puts "Is it less or equal? #{5 <= -2}"
puts 'Is it less or equal? #{5 <= -2}'

puts "\nEx 7"
puts "." * 10

var1 = "Hel"
var2 = "lo"
puts var1 + var2

puts "\nEx 8"
formatter = "%{first} %{second} %{third} %{fourth}"
puts formatter % {first: "one", second: 1, third: false, fourth: formatter}

puts "\nEx 9"
puts %q{There's something going on here.
We'll be able to type as much as we like.
Even 4 lines if we want, or 5, or 6.
}

puts "\nEx10"
puts """I'll do a \"list\":
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
"""

puts '''
I\'ll do a "list":
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
'''

puts "I can put two lines on one ", "see"


puts "\nEx 15"
txt = open("test14.txt")
print txt.read
txt.close

puts "\nEx 16"
filename = "test16.txt"
txtFile = open(filename, 'r+') #r,r+,w,w+,a,a+,b,t
storedText = txtFile.read
txtFile.rewind
puts "Here's my file" + "." * 10, storedText

puts "Clear it" + "." * 10
txtFile.truncate(0)
txtFile.rewind #just to be sure it has worked

puts txtFile.read
txtFile.rewind

puts "put all back" + "." * 10
txtFile.write(storedText)
txtFile.rewind

txtFile = open(filename)
puts txtFile.read
txtFile.close

puts "\nEx 17"
puts "does file test17.txt exist(true)? #{File.exist?("test17.txt")}"
puts "does file test17a.txt exist(false)? #{File.exist?("test17a.txt")}"
txt.close

puts "\nEx 17"
puts "Call method" + "." * 10
def print_method() #at this stage I feel hiding method inside code is bad
  puts "Method called"
end
print_method()

print "Call method with array"
def n_dots_please(*argsArray17)
  puts "#{"." * argsArray17[0].to_i}"
end
n_dots_please(10)
puts "those 10 dots means it worked"

puts "\nEx 18"
vtestScope = "Outside Scope"
def testScope(vtestScope)
  vtestScope = "Inside Scope"
  puts vtestScope
end
testScope(vtestScope)
puts vtestScope

puts "\nEx 21"
vtestScope = "Outside Scope"
def testScope()
  return "Inside Scope"
end
vtestScope = testScope()
puts vtestScope

def testScopeImplicit()
  v = "Won't Retun"
  v = "Implicit Return"
end
vtestScope = testScopeImplicit()
puts vtestScope

puts "\nEx 24"
poem = <<ANYNAME
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explanation
\n\t\twhere there is none.
ANYNAME
puts poem

print "Multiple return values"
n_dots_please(10)
def secret_formula(started)
  jelly_beans = started * 500
  jars = jelly_beans / 1000
  crates = jars / 100
  return jelly_beans, jars, crates
end

start_point = 10000
beans, jars, crates = secret_formula(start_point)
puts "With a starting point of: #{start_point}"
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates."

print "Implicit Multiple return values?"
n_dots_please(10)
def secret_formula(started)
  jelly_beans = started * 500
  jars = jelly_beans / 1000
  crates = jars / 100
end

start_point = 10000
beans, jars, crates = secret_formula(start_point)
puts "With a starting point of: #{start_point}"
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates."
puts "nope, just the last"

puts "\nEx 25"
words = "first word word last".split(' ')
print words
puts "\n" + words.shift
puts words.pop
print words
print "\n"

puts "\nEx 32"
fruits = ['Apple', 'Pen', 'uh ApplePen']
fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end

fruits.each {|i| puts "I got #{i}" }

(1..5).each {|i| puts "#{i}"}
puts "Once I caught a fish alive"

(6...11).each do |i|
  puts "#{i}"
end
puts "Then I threw it back again"

puts "\nEx 33"
the_rest = ["Why did you let it go?",
            "Because it bit my finger so.",
            "Which finger did it bite?",
            "This little finger on the right."]
while the_rest.size > 0
  puts the_rest.shift
end

puts "\nEx 38"
puts fruits[-4] #notice no error
puts fruits[-3] #0
puts fruits[-2] #1
puts fruits[-1] #2
puts fruits[0]
puts fruits[1]
puts fruits[2]
puts fruits[3] #notice no error

puts "\nEx 38"
fruits_info = {
  'Name' => "orange",
  'seeds' => "inside",
  'husk' => 'horrible'
}
fruits_info['Juicy'] = true
puts fruits_info['Name']
print fruits_info
print "\n"


if skip == false
  if firstArg.to_f.to_s == firstArg.to_s || firstArg.to_i.to_s == firstArg.to_s
    TestOption = firstArg.to_f
    if TestOption == 11
      puts "\nEx 11"

      print "How old are you? "
      age = gets.chomp

      puts "How tall are you? "
      height = gets.chomp

      puts "So, you're #{age} old and #{height} tall.."
    end #11

    if TestOption == 12
      puts "\nEx 12"

      print "Give me a number: "
      number1 = gets.chomp.to_i

      print "Give me another number: "
      number2 = gets.chomp.to_i

      puts "#{number1} + #{number2} = #{number1 + number2}"
    end #12

    if TestOption == 13
      puts "\nEx 13"

      puts "firstArg: #{firstArg}",
           "first: #{first}", "anotherARG: #{anotherARG}",
          "yetAnotherARG: #{yetAnotherARG}"
    end #13

    if TestOption == 35
      puts "\nEx 35"
      puts "Not going to say goodbye, we will do no more"
      exit(0)
    end #35

  elsif firstArg == "Hi"
    puts "Hi, how are you"
  else
    puts "don't know what to do with that argument"
  end #isNumber
end #skip

puts "\nEx 40"
module MyModule
    def MyModule.apple()
        puts "I AM APPLES!"
    end

    # this is just a variable
    TANGERINE = "Living reflection of a dream"
end

MyModule.apple()
puts MyModule::TANGERINE

class AhigherClass

    def initialize()
        @tangerine = "And now a thousand years between"
    end

    attr_reader :tangerine

    def apple()
        puts "I AM CLASSY APPLES!"
    end

end

thing = AhigherClass.new()
thing.apple()
puts thing.tangerine

puts "\nEx 42"

class MyClass < AhigherClass
end

thing = MyClass.new()
thing.apple()
puts thing.tangerine

puts "\nEx 44a"
class MyCompositionClass
  def initialize()
    @ahigherClass = AhigherClass.new()
    @tangerine = @ahigherClass.tangerine
  end

  attr_reader :alowerClass
  attr_reader :tangerine


  def apple()
    @ahigherClass.apple()
  end

end

thing = MyCompositionClass.new()
thing.apple()
puts thing.tangerine


puts "\nEx 44b"
module MyCompositionModule

  def apple()
    puts "I AM APPLES!"
  end

  TANGERINE = "Living reflection of a dream"
end

class MyCompositionModuleClass
  include MyCompositionModule

  def tangerine()
    return TANGERINE
  end
end

thing = MyCompositionModuleClass.new()
thing.apple
puts thing.tangerine

puts "goodbye"
