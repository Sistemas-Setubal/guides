DEVELOPERS = []

def addUser(user)
    user["id"] = DEVELOPERS.length + 1
    DEVELOPERS.push user
    skills_msg = ""

    user[:skills].each do |skill|
        skills_msg = "#{skill}, #{skills_msg}"
    end  
    message = "#{user[:name]} is a #{user[:age]} old developer with #{user[:friends]} friends and is able to #{skills_msg}"
    puts "#{message.strip.chop}." 

end

def validateInteger(message)

    begin
        system("clear")
        puts message
        return Integer(gets)
    rescue ArgumentError => e
        puts "Solo se permiten numeros enteros #{e}"
    retry
    end

end

def getInfoUser()
    puts "Ingresa tu nombre"
    name = gets.chomp.to_s
    age = validateInteger("Ingresa tu edad")
    friends = validateInteger("Ingresa tu número de amigos")

    { name: name, age: age, friends: friends, skills: addSkills }
end

def addSkills()
    skills = []
    addSkill = '1'
    system("clear")
    
    while addSkill == '1'
        puts "Añade una habilidad"
        skill = gets.chomp.to_s
        skills.push skill
        puts "Añadir nueva habilidad?"
        puts "0 No 1 Si"
        addSkill = gets.chomp.to_s
        system("clear")
    end

    return skills

end

def main 
    addNewUser = '1'
    while addNewUser == '1'
        user = getInfoUser
        addUser user

        puts "Añadir un nuevo usuario?"
        puts "0 No 1 Si"
             
        addNewUser = gets.chomp.to_s
    end
end

main
