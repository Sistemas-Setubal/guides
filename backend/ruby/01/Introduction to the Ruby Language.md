## Lesson Objectives

After this training stage the trainee should be able to:

+ Correctly utilize the basic syntax and semantics of the Ruby language
+ Understand the meaning of the phrase **"Everything in Ruby is an Object"**
+ Execute simple Ruby scripts in their own operating system's command line
+ Write basic Ruby code following both the Ruby language's and our's internal style and conventions
  
## Lesson

 Extensive introduction into the basic syntactical, semantical and morphological aspects of the language.

+ Explain and demo IRB
+ Variable Declaration/Assignment/Inspection
+ Everything in Ruby is an Object
+ Loose typed
+ Arithmetic operators
+ Strings and string interpolation
+ Arrays, Hashes
+ Basic methods (size, length, etc..)
+ Basic use of conditionals and flow control
+ Iterators (for..in, each)
+ Ranges
+ Hello, world!

The [[Lesson]] file in this directory contains commented code examples for all of these concepts.

## Practice

In order to complete this practice exercise, make a file named `01.rb`.

Each trainee will practice the previously covered theory by writing a Ruby script according to the following instructions/requirements. Each step represents a different "step" in the script:

1. [Prompt the user]( http://ruby-doc.org/docs/ruby-doc-bundle/Tutorial/part_02/user_input.html) for the name and age of some of the developers in the room. Strip trailing chars of input, look for the appropriate function [here](http://ruby-doc.org/core-2.4.1/String.html).

2. Store each developer in an array of hashes ***(age must be an integer)*** AND autogenerate their id:

```ruby
developers = [
	{ id: 1, name: "Sebastián", age: 21 },
	{ id: 2, name: "Brandon", age: 25 }
]
```

3. Add a skills array to each developer in the hash.
4. Add a friends array to each developer with the id's of each of their friends.
5. Print the developer profile matching the following format:

```text
Sebastián is a 21 year old developer with 3 friends and is able to code, rap, ride a horse.
```
   
## Useful Links

+ [Official Ruby Language Doumentation](https://ruby-doc.org/)
+ [Codecademy Ruby Course](https://www.codecademy.com/courses/learn-ruby)
+ [TryRuby: Learn programming with Ruby](https://ruby.github.io/TryRuby/)
+ [Ruby Guides](https://www.rubyguides.com/)