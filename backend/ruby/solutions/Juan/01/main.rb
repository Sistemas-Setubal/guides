DEVELOPERS = []

def add_user(user)
    user[:id] = DEVELOPERS.length + 1
    DEVELOPERS.push user
    skills_msg = ''
    user[:skills].each do |skill|
        skills_msg = "#{skill}, #{skills_msg}"
    end
    message = "#{user[:name]} is a #{user[:age]} old developer with #{user[:friends]} friends and is able to #{skills_msg}"
    puts message.strip.chop 
end

def validate_integer(message)
    begin
        system 'clear'
        puts message
        Integer gets
    rescue ArgumentError => e
        puts "Solo se permiten numeros enteros #{e}"
    retry
    end
end

def get_info_user
    puts 'Ingresa tu nombre'
    name = gets.chomp.to_s
    age = validate_integer 'Ingresa tu edad'
    friends = validate_integer 'Ingresa tu número de amigos'
    { name: name, age: age, friends: friends, skills: add_skills }
end

def add_skills
    skills = []
    add_skill = '1'
    system('clear')
    
    while add_skill == '1'
        puts 'Añade una habilidad'
        skill = gets.chomp.to_s
        skills.push skill
        puts 'Añadir nueva habilidad?'
        puts '0 No 1 Si'
        add_skill = gets.chomp.to_s
        system 'clear'
    end
    skills
end

def main 
    add_new_user = '1'
    while add_new_user == '1'
        user = get_info_user
        add_user user
        puts 'Añadir un nuevo usuario?'
        puts '0 No 1 Si'        
        add_new_user = gets.chomp.to_s
    end
end

main
