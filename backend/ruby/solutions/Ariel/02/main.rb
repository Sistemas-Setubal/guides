REVIEWERS = ['Javier', 'David', 'Sebastian']
REVIEWEES = ['Alain', 'Amanda', 'Tovar']

def review(filename='review.txt', &block)
  puts 'Select a reviewee to review: '

  show_reviewees

  puts "\nReviewee: "

  reviwee = gets.chomp

  reviewee_selected = reviwee if REVIEWEES.include? (reviwee)
  
  puts 'ERROR: Reviewee not found' if reviewee_selected.nil?

  reviewer1 = select_reviewer
  reviewer2 = select_reviewer
  
  reviewers = "\nEmail send: Your reviewers are #{reviewer1} and #{reviewer2}.\n"
  
  file = File.new filename, 'w'
  yield file, reviewee_selected, reviewers if block_given?
  file.close
end

def select_reviewer
  show_reviewers

  puts "\nSelect your Reviewer: "
  reviewer_search = gets.chomp

  return reviewer_search if REVIEWERS.find {|reviewer| reviewer == reviewer_search}
end


def show_reviewers
  puts "\nReviewers: "

  REVIEWERS.each { |reviewers| puts reviewers }
end

def show_reviewees
  puts "\nReviewees: "

  REVIEWEES.each { |reviewees| puts reviewees }
end

def send_review

    review do |file, reviewee, reviewers|
        puts reviewers
        file.write "Email to: #{reviewee}@localsulutionsit.com\n"
        file.write "Body:\n\n"
        file.write "Hi, #{reviewee}\n"
        file.write reviewers
    end
end

def menu
  puts 'Menu.
  1.- Review.
  2.- Show Reviewers.
  3.- Show Reviewees.
  4.- Exit.'
  
  option = gets.chomp.to_i
  
    return send_review if option == 1
    return show_reviewers if option == 2
    return show_reviewees if option == 3
    return false if option == 4
    puts 'ERROR: Invalid option' and return
  
end

until menu == false do
  menu
end
