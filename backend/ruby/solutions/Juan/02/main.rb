REVIEWERS = ['Javier', 'David', 'Sebastián']
REVIEWEES = ['Brandon', 'Amanda', 'Tovar']

def main

    for reviewee in REVIEWEES
        reviewersSelected = REVIEWERS.sample(2)
        sendTo = "E-mail to: #{reviewee.downcase}@localsolutionit.com\n"
        greeting = "Body:\n\nHi, #{reviewee}.\n"
        body = "Your reviewers are #{reviewersSelected[0]} and #{reviewersSelected[0]}"
        message =  "#{sendTo}#{greeting}#{body}."
        puts message
        File.open("#{reviewee.downcase}@localsolutionit.txt", "w") do |f|     
            f.write(message)   
        end   
    end
end

main()