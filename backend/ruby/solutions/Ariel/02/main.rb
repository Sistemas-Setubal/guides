REVIEWERS = ['Javier', 'David', 'Sebastian']
REVIEWEES = ['Alain', 'Amanda', 'Tovar']



def review(filename='review.txt', &block)

  puts 'Select a reviewee to review: '

  show_reviewees

  puts 'Reviewee: '

  revwe = gets.chomp

  reviewee_s = revwe if REVIEWEES.include? (revwe)
  
  puts 'ERROR: Reviewee not found' if reviewee_s.nil?

  reviewer1, reviewer2 = select_reviewer

  reviewers = "Email send: Your reviewers are #{reviewer1} and #{reviewer2}."
  
  file = File.new filename, 'w'
  yield file, reviewee_s, reviewers if block_given?
  file.close
end

def select_reviewer

    show_reviewers

    puts "\nSelect your Reviewers"
    puts '1.- '
    reviewer1 = gets.chomp
    puts '2.- '
    reviewer2 = gets.chomp

    if REVIEWERS.find {|reviewer| reviewer == reviewer1}
        if REVIEWERS.find {|reviewer| reviewer == reviewer2}
            return reviewer1, reviewer2
        end
    end
        
end


def show_reviewers
  puts "\nReviewers: "

  REVIEWERS.each { |reviewers| puts reviewers }
end

def show_reviewees
  puts "\nReviewees: "

  REVIEWEES.each { |reviewees| puts reviewees }
end


def menu
  puts 'Menu.
  1.- Review.
  2.- Show Reviewers.
  3.- Show Reviewees.
  4.- Exit.'
  
  option = gets.chomp.to_i
  
    if option == 1
        return review do |file, reviewee, reviewers|
            puts reviewers
            file.write "Email to: #{reviewee}@localsulutionsit.com\n"
            file.write "Body:\n\n"
            file.write "Hi, #{reviewee}\n"
            file.write reviewers
        end
    end

    return show_reviewers if option == 2
    return show_reviewees if option == 3
    return false if option == 4
    puts 'ERROR: Invalid option' and return
  
end

until menu == false do
  menu
end
