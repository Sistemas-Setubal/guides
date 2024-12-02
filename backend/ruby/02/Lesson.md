---
aliases:
  - Second Ruby Practice Lesson
---
## Docs:
https://ruby-doc.org/3.3.6/

## Functions

```ruby
def square(number)
  number * number
end

square 10 #=> This will return 100
```

```ruby
def plus(a, b)
  a + b
end

plus 5, 8 #=> This will return 13
```

```ruby
def greeting(name)
  "Hi my name is #{name}, nice to meet you!"
end

greeting 'Abraham' #=> Hi my name is Javier, nice to meet you!
```

```ruby
def concatenator(string1, string2)
  "#{string1} #{string2}"
end

concatenator 'Hola', 'Mundo' #=> Hola Mundo
```

```ruby
def repeater(string, repeat)
  repeat.times do
    puts string
  end
end

repeater 'Hi all', 10 #=> Hi all \n Hi all ...
```

## Blocks & Yield

This cool feature by Ruby helps developers to built highly scalable DSL's
as well as templates for repeating content

As you can see a default value is being set to the email
argument, so you can call the method without that

```ruby
def email_to(email = 'servidores@localsolutionsit.com', &block)
  puts "Hi #{email}"
  yield if block_given?
  puts 'It was nice talking to you, see you!'
end

email_to 'javier@localsolutionsit.com' do
  puts 'I want to know more about magic'
end

#=> Hi javier@localsolutionsit.com
#=> I want to know more about magic
#=> It was nice talking to you, see you!

email_to do
  puts 'I want to know more about magic'
end

#=> Hi servidores@localsolutionsit.com
#=> I want to know more about magic
#=> It was nice talking to you, see you!

email_to 'javier@localsolutionsit.com'

#=> Hi javier@localsolutionsit.com
#=> It was nice talking to you, see you!
```

This method will provide an interface for the developers
that will close the stream automatically for them

```ruby
def write_to(filename = 'tmp.txt', &block)
  file = File.new filename, 'w'
  file.write '---\n'
  yield file if block_given?
  file.write '---'
  file.close
end

write_to 'sample.txt' do |file|
  file.write "Hi, my name is Javier\n"
  file.write "I'm 29 years old\n"
  file.write "And love to play videogames\n"
end
```

## Lambdas and functional stuff

```ruby
greeting = -> (name) { "Hi my name is #{name}, nice to meet you!" }
greeting.yield 'Javier' # Hi my name is Javier, nice to meet you!

square = -> (number) { number * number}
square.yield 10 # 100

plus = -> (a, b) { a + b }
plus.yield 5, 8 # 13
```

## Map
Apply a function to a collection of elements

```ruby
(1..5).map do |n|
  n * n
end

#=> 1, 4, 9, 16, 25

(1..5).map { |n| n * n } # 1,4,9,16,25

(1..5).map(&:square) # 1,4,9,16,25

(1..5).map(&square) # 1,4,9,16,25
```

## Reduce
Reduce a collection of elements to one value

```ruby
(1..5).reduce {|acum, number| acum + number }

(1..5).reduce(&:+)
```