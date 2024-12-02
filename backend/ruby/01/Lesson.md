---
aliases:
  - First Ruby Practice Lesson
---
## Docs:
https://ruby-doc.org/3.3.6/

## Using IRB
Ruby includes a command called IRB (which means 'interactive ruby') that allows to execute ruby code directly into the terminal, to run it simply execute `irb` into your favorite shell.

Try the following code inside irb:

```ruby
software_roles = ['backend', 'frontend', 'design']

software_roles.first # Will return 'backend'

software_roles.last # Will return 'design'
```

To exit irb simply execute `exit`
## Declaring variables in Ruby
### Highlights:

- There are no types
- You can reassign them to anything you want at anytime

### Integer example

```ruby
local_members_count = 19
```

### Float example

```ruby
total_amount = 104.26
```

### String example

```ruby
my_name = 'Javier' # Prefer single quotes
```

### Or with double quotes

```ruby
my_name = "Javier"
```

### Concatenating strings
#### There are two(maybe more) ways in Ruby to concatenate strings:

```ruby
my_full_name = 'Javier ' + 'Ornelas'
```

#### By interpolation

```ruby
my_full_name = "#{my_name} Ornelas"
my_full_name = '#{my_name} Ornelas' # This will return '#{my_name} Ornelas', as the interpolation does not work with simple quotes
```

### Symbol example

```ruby
my_inmmutable_name = :javier
```

## Arrays
### Highlights:

- It is a collection of elements of any type
- It's size is dynamic

```ruby
card_names = ["Spades", "Hearths", "Clubs", "Diamonds"]
card_values = [1,2,3,4,5,6,7,8,9,10,11,12,13]
my_favorite_card = [4, "Clubs"]
```

### Accessing array elements

```ruby
card_names[0] # This will return "Spades"
card_values[3] # This will return 4
```

### Setting an array value

```ruby
card_names[0] = "Coins" # This will set the value on index 0 to Coins, so Spades is going to be substituted
```

### Pushing elements to an array

```ruby
card_names << "Arrows" # This will add an element at the end of the array with the value of "Arrows"
card_names.push "Arrows"
```

### Get size of the array

```ruby
card_names.size # Will return the actual size of the collection
card_names.length # Will return the actual size of the collection
```

### Merge two or more arrays

```ruby
[1,2,3,4] + [5,6,7,8] # Will return [1,2,3,4,5,6,7,8]
```

### Loop or iterate through arrays
#### For loop (not so common)

```ruby
for card_name in card_names do
  puts card_name # `puts` print to the console
end
```

#### Each iterator (very common)

```ruby
card_names.each do |card_name|
  puts card_name # `puts` print to the console
end
```

## Hashes or Dictionaries
### Highlights:

- It is a collection of elements based on key value
- If you are familiar with JSON, if follows the same syntax
- You can have any value as the key, and anything as the value

```ruby
developer = {
  name: "Javier",
  age: 29,
  job_title: "Backend Developer",
  "description" => "A human being",
  "name" => "Enrique"
}
```

### Accessing hash elements
You access the elements of a hash the same way as an array, but instead of the index you use the key:
 
```ruby
developer[:name] # This will return "Javier"
```

### Updating a hash element
Update the developer name to something else:

```ruby
developer[:name] = "Sebastián"
```

### Adding elements to a hash
You can just declare new keys dynamically, and they will automatically be added into the hash

```ruby
developer[:github_url] = "https://github.com/javierornelasv"
```

### Get size of a hash

```ruby
developer.size # This will return 4 in this case due to the new added key
developer.length
```

### Merging two hashes

```ruby
new_developer_info = {
  name: "Javier Ornelas",
  country: "MX"
}
```

```ruby
developer.merge new_developer_info
```
### The line above will return as hash like:

```ruby
{
	name: "Javier Ornelas",
	age: 29,
	job_title: "Backend Developer",
	country: "MX"
}
```

### Get hash keys

```ruby
develper.keys # This will return an array of the key names => [:name, :age, :job_title, :country]
develper.values # This will return an array of the values => ["Javier Ornelas", 29, "Backend Developer", "MX"]
```

## Ranges
http://ruby-doc.org/core-2.4.0/Range.html

```ruby
numbers = 1..20
numbers.min # 3
numbers.max # 20
numbers.to_a # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
```

```ruby
letters = "a".."f"
letters.to_a # ["a", "b", "c", "d", "e", "f"]
```

### Iterate through ranges

```ruby
(1..100).each do |number|
  puts number if number % 2 == 0
end
```