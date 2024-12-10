developers = []

def add_dev(developers)
  puts 'What is his/her name?: '
  name = gets.chomp

  puts "How old are #{name}: "
  age = gets.chomp.to_i
  skills = []
  friends = []

  id = developers.length + 1
  add = { id: id, name: name, age: age, skills: skills, friends: friends }

  developers << add
end

def add_skills(developers)
  puts 'There are not Devs' if developers.empty?
  puts "What is the name that you will add skill? \nDevelopers:"
  developers.each do |dev|
    puts dev[:name].to_s
  end
  name = gets.chomp
  developers.each do |dev|
    if dev[:name] == name
      puts 'Add a new skill: '
      skill = gets.chomp
      dev[:skills] << skill
    end
  end
end

def add_friend(developers)
  puts 'There are not Devs' if developers.empty?
  puts "What is the name that you will add friend? \nDevelopers:"
  developers.each do |dev|
    puts dev[:name].to_s
  end

  name = gets.chomp
  developers.each do |dev|
    if dev[:name] == name
      puts "What is the name of the new #{name}'s friend: "
      friend = gets.chomp
      puts "How old are #{friend}:  "
      age = gets
      id = dev[:friends].length + 1
      add = { id: id, name: name, age: age }

      dev[:friends]  << add
    end
  end
end

def show_devs(developers)
  
  puts 'There are not Devs' if developers.empty?

  developers.each do |dev|
  
    count_friends = dev[:friends].length

    puts "#{dev[:name]} is a #{dev[:age]} years old with #{countFriends} friend and is able to #{dev[:skills] * ", "}" + "."
    
  end
end


def menu(developers)
  puts "\n\nMenu.\n1.- Add Dev.\n2.- Add Skills.\n3.- Add Friend.\n4.- Show Devs.\n5.- Exit."
  
  option = gets.chomp.to_i
  
  case option
  when 1
    add_dev(developers)
  when 2
    add_skills(developers)
  when 3
    add_friend(developers)
  when 4
    show_devs(developers)
  when 5
    return false
  else 
    puts 'ERROR: Invalid option'
  end
end

until menu(developers) == false do
  menu(developers)
end




