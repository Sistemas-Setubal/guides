developers = Array.new

def addDev(developers)
  puts "What is his/her name?: "
  name = gets.chomp

  puts "How old are #{name}: "
  age = gets.chomp.to_i
  
  skills = Array.new
  
  friends = Array.new

  id = developers.length + 1
  add = {id: id, name: name, age: age, skills: skills, friends: friends}

  developers << add
  return 
end

def addSkills(developers)

  if developers.empty?
    puts "There are not Devs"
    return
  end
  
  puts "What is the name that you will add skill? \nDevelopers:"
  developers.each{|dev|
    puts "#{dev[:name]}"
  }
  name =  gets.chomp
  
  developers.each{|dev|
    if dev[:name] == name
      puts "Add a new skill: "
      skill = gets.chomp
      
      dev[:skills].push(skill)
      return
    end
  }
  return
end

def addFriend(developers)

  if developers.empty?
    puts "There are not Devs"
    return
  end
  puts "What is the name that you will add friend? \nDevelopers:"
  developers.each{|dev|
    puts "#{dev[:name]}"
  }
  name =  gets.chomp
  
  developers.each{|dev|
    if dev[:name] == name
      puts "What is the name of the new #{name}'s friend: "
      friend = gets.chomp
      
      puts "How old are #{friend}:  "
      age = gets
      
      id = dev[:friends].length + 1
      
      add = {id: id, name: name, age: age}

      dev[:friends].push(add)
    end
  }
end

def showDevs(developers)
  
  if developers.empty?
    puts "There are not Devs"
    return
  end
  
  developers.each{|dev|
  
    countFriends = dev[:friends].length

    puts "#{dev[:name]} is a #{dev[:age]} years old with #{countFriends} friend and is able to #{dev[:skills] * ", "}" + "."
    
  }

  return
end


def Menu(developers)
  puts "\n\nMenu.\n1.- Add Dev.\n2.- Add Skills.\n3.- Add Friend.\n4.- Show Devs.\n5.- Exit."
  
  option = gets.chomp.to_i
  
  case option
  when 1
    addDev(developers)
  when 2
    addSkills(developers)
  when 3
    addFriend(developers)
  when 4
    showDevs(developers)
  when 5
    return false
  else 
    puts "ERROR: Invalid option"
  end
end

until Menu(developers) == false do
  Menu(developers)
end




