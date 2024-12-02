## Lesson Objectives

After this training stage the trainee should be able to:

+ Declare and write functions/methods in a global scope to carry out simple operations
+ Design function signatures with conventionally acceptable method names and a reasonable amount and selection of function parameters.
+ Call and execute functions/methods of their own design in global scope scripts to solve more complex problems/exercises
+ Apply conventional method naming and calling practices in special circumstances (Predicate `?` and Mutator `!` methods, when to use parentheses, the "hash as last parameter" rule, etc...)
+ Recognize and write methods with Blocks, Procs and Lambdas in Ruby
  
## Lesson

This lesson consists of a detailed exploration of the Ruby syntax and conventions of method and function writing in a global scope (without getting into code grouping or instance/class method distinction).

+ Introduce method blocks and their scope with the `def` and `end` keywords
+ The `return` keyword and implicit returns
+ No return or parameter types
+ Default attribute values (optional parameters)
+ Optional parentheses
+ Method calls
+ Blocks, Procs and Lambdas
+ Functional programming methods in Ruby (`.map()`, `.reduce()`, etc.)
+ Higher order functions

The [[backend/ruby/02/Lesson|Lesson]] file in this directory contains commented code examples for all of these concepts.

## Practice

In order to complete this practice exercise, make a file named `main.rb` inside a folder named 02.

Each trainee will practice the previously covered theory by writing a Ruby script according to the following instructions/requirements:

In this exercise, you will write a script to set up core reviews for all reviewees.

The rules for the script are:

1. Two **random** reviewers per reviewee.
2. When the reviewers are selected, 'send' an email (print the email contents to the console) to the reviewee informing them of the selection.
3. After the email is 'sent', create a txt file format of the email for each reviewee, with the following format:

   ```text
   E-mail to: javier@localsulutionsit.com
   Body:

   Hi, Javier Ornelas.
   Your reviewers are Sebastián and David.
   ```

4. Please use the following constant global arrays for `REVIEWERS` and `REVIEWEES` as your 'database' for your script.
```
REVIEWERS = ['Javier', 'David', 'Sebastián']
REVIEWEES = ['Brandon', 'Amanda', 'Tovar']
```
## Useful Links

+ [Ruby Methods: W3Resource](https://www.w3resource.com/ruby/ruby-methods.php)
+ [Closures in Ruby: Blocks, Procs and Lambdas (Highly Recommended Read)](https://blog.appsignal.com/2018/09/04/ruby-magic-closures-in-ruby-blocks-procs-and-lambdas.html)
+ [Ruby Guides](https://www.rubyguides.com/)