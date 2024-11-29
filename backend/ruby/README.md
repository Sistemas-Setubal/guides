---
aliases:
  - Ruby Overview
---
# Ruby Guide

## Overview

This guide contains a full week's worth of lessons, practice exercises and relevant resources. Each numbered subdirectory contains resources (files, documents and relevant links) for the respective practice.

## Objective

The main objective for this guide is for the trainee to become proficient in their use of the Ruby programming language for basic program development.

By the end of the week, the trainee should be able to complete simple and slightly more complex command line applications in native Ruby.

## Table of contents

* [[Setting Up|00 - Setting Up]]
* [[Introduction to the Ruby Language|01 - Introduction to the Ruby Language]]
* [[Functions and Methods in Ruby|02 - Functions and Methods in Ruby]]
* [[Data and Behavior Encapsulation in Ruby|03 - Data and Behavior Encapsulation in Ruby]]
* [[Ruby's Libraries Working with Gems|04 - Ruby's Libraries Working with Gems]]
* [[IO Working with Files in Ruby|05 - IO: Working with Files in Ruby]]
* [[Web Scraping in Ruby|06 - Web Scraping in Ruby]]
* [[Serving Web Pages with Ruby using Rack and ERB|07 - Serving Web Pages with Ruby using Rack and ERB]]
* [[Your first Blog Ruby Web App|08 - Your first Blog Ruby Web App]]

## Things to keep in mind about Ruby

* It is an interpreted programming language
* It is not strongly typed
* It has an interactive console through the `irb` command
* Its philosophy is to keep the developer **happy**
* Everything in Ruby is an **object**
* It always returns some object, no `void` methods
* `dot-notation` is always present

## Local Solution IT Ruby Code conventions

* Use snake case for variable and method naming
* Use camel case for naming your classes/modules
* Avoid use of parenthesis whenever possible
* Use `UTF-8` for file encoding
* Use `SCREAMING_SNAKE_CASE` for constants.
* The names of predicate methods (methods that return a boolean value)
  should end in a question mark.
* The names of potentially "dangerous" methods (i.e. methods that modify `self` or the
  arguments, `exit!`, etc.) should end with an exclamation mark.