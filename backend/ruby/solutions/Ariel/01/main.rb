evelopers = []

def add(operator)
    puts "What's your name?: "
    name = gets.chomp

    puts "How old are you?: "
    age = gets.chomp.to_i

    skills = []
    friend = []

    id = operator.length + 1
    person = {id: id, name: name, age: age, skills: skills, friends: friend}

    operator << person

    pausa
end

def show (operador)
    return puts "there's no developers" if operador.empty?
    puts "Developers"
    operador.each do |devs| 
        puts "Name: " + "#{devs[:name].to_s}"
    end
end

def add_Skill (operator)
    show(operator)
    puts "What's the name you search?: "
    name = gets.chomp

    operator.each do |dev|
        if dev[:name] == name
          puts "What's your new skill?: "
          skill = gets.chomp
          dev[:skills] << skill 
        end
    end
    pausa
end

def add_Friend(operator)
    show(operator)
    puts "What's the name you search?: "
    name = gets.chomp

    operator.each do |dev|
        if dev[:name] == name
          puts "Write the name of your new friend: "
          friend = gets.chomp
          dev[:friends] << friend    
        end
    end
    
    pausa
end

def pausa ()
    puts "Presiona Enter para continuar..." 
    gets
    system('clear')
end

def show_Devs(operator)
    puts 'There are not Devs' if operator.empty?
  
    operator.each do |dev|
    
      count_friends = dev[:friends].length
  
      puts "#{dev[:name]} is a #{dev[:age]} years old with #{count_friends} friend and is able to #{dev[:skills] * ", "}" + ".\n"
      
    end
    pausa
end

def menu(developers)
    puts "\nMenu.\n1.- Add Dev.\n2.- Add Skills.\n3.- Add Friend.\n4.- Show Devs.\n5.- Exit."
    
    option = gets.chomp.to_i
    
    case option
    when 1
      add(developers)
    when 2
      add_Skill(developers)
    when 3
      add_Friend(developers)
    when 4
      show_Devs(developers)
    when 5
        puts "Presione Enter para salir..." 
        gets
        false
    else 
      puts 'ERROR: Invalid option'
    end
end
  
until menu(developers) == false do
    menu(developers)
end