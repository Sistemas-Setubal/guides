$developers = [];

def addUser(user)
    user["id"] = $developers.length + 1
    $developers.push(user)
    skillsMsg = ""

    for skill in user["skills"]
        skillsMsg = "#{skill}, #{skillsMsg}"
    end  
    message = "#{user["name"]} is a #{user["age"]} old developer with #{user["friends"]} friends and is able to #{skillsMsg}"
    puts "#{message.strip.chop}." 

end

def validateInteger(message)

    begin
        system("clear")
        puts message
        return Integer(gets)
    rescue ArgumentError => e
        puts "Solo se permiten numeros enteros"
    retry
    end

end

def getInfoUser()
    puts "Ingresa tu nombre"
    name = gets.chomp.to_s;
    age = validateInteger("Ingresa tu edad")
    friends = validateInteger("Ingresa tu número de amigos")

    user = {}
    user["name"] = name
    user["age"] = age
    user["skills"] = addSkills()
    user["friends"] = friends


    return user
end


def addSkills()
    skills = []
    addSkill = true
    system("clear")
    
    while addSkill == true
        puts "Añade una habilidad"
        skill = gets.chomp.to_s
        skills.push(skill)
        puts "Añadir nueva habilidad?"
        puts "0 No; 1 Si"
        
        add = gets.chomp.to_i

        if add == 1
            addSkill = true

        else 
            addSkill = false
        end
        system("clear")
    end

    return skills

end

def main 
    addNewUser = true
    while addNewUser == true
        user = getInfoUser()
        addUser(user)

        puts "Añadir un nuevo usuario?"
        puts "0 No; 1 Si"
        
        add = gets.chomp.to_i

        if add == 1
            addNewUser = true

        else 
            addNewUser = false

        end
    end
end

main()
