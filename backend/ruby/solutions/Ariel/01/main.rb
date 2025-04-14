developers = []

def add(operator)
    puts 'Whats your name?: '
    name = gets.chomp

    puts 'How old are you?: '
    age = gets.chomp.to_i

    skills = []
    friend = []

    id = operator.length + 1
    person = {id: id, name: name, age: age, skills: skills, friends: friend}

    operator.push person

    pause
end

def show (operador)
    return puts 'theres no developers' if operador.empty?
    puts 'Developers'
    operador.each do |devs| 
        puts "Name: #{devs[:name].to_s}"
    end
end

def add_skill operator
    show operator
    puts 'Whats the name you search?: '
    name = gets.chomp

    operator.each do |dev|
        if dev[:name] == name
          puts 'Whats your new skill?: '
          skill = gets.chomp
          dev[:skills].push skill
        end
    end

    pause
end

def add_friend operator
    show operator
    puts 'Whats the name you search?: '
    name = gets.chomp

    operator.each do |dev|
        if dev[:name] == name
          puts 'Write the name of your new friend: '
          friend = gets.chomp
          dev[:friends].push friend    
        end
    end
    
    pause
end

def pause
    puts 'Presiona Enter para continuar...' 
    gets
    system 'clear'
end

def show_devs operator
    puts 'There are not Devs' if operator.empty?

    operator.each do |dev|
      count_friends = dev[:friends].length
      puts "#{dev[:name]} is a #{dev[:age]} years old with #{count_friends} friend and is able to #{dev[:skills] * ", "}" + ".\n"
    end

    pause
end

def menu  developers
    puts 'Menu.
    1.- Add Dev.
    2.- Add Skills.
    3.- Add Friend.
    4.- Show Devs.
    5.- Exit.'
    
    puts 'Choose an option: ' 
    option = gets.chomp.to_i
    
    if option == 1
      add developers
    elsif option == 2
      add_skill developers
    elsif option == 3
      add_friend developers
    elsif option == 4
      show_devs developers
    elsif option == 5
        puts 'Presione Enter para salir...' 
        gets
        false
    else 
      puts 'ERROR: Invalid option'
    end
end
  
until menu(developers) == false do
    menu(developers)
end