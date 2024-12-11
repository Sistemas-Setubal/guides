REVIEWERS = ['Javier', 'David', 'Sebastián']
REVIEWEES = ['Brandon', 'Amanda', 'Tovar']

def main
    REVIEWEES.each do |reviewee|
        reviewers_selected = REVIEWERS.sample 2
        sendTo = "E-mail to: #{reviewee.downcase}@localsolutionit.com\n"
        greeting = "Body:\n\nHi, #{reviewee}.\n"
        body = "Your reviewers are #{reviewers_selected[0]} and #{reviewers_selected[1]}"
        message =  "#{sendTo}#{greeting}#{body}."
        puts message
        File.open "#{reviewee.downcase}@localsolutionit.txt", "w" do |f|     
            f.write(message)   
        end   
    end
end

main