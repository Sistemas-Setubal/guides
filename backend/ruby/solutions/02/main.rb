REVIEWERS = ['Javier', 'David', 'Sebastián']
REVIEWEES = [
  { name: 'Alain', email: 'alain@localsolutionsit.com' },
  { name: 'Amanda', email: 'amanda@localsolutionsit.com' },
  { name: 'Brandon', email: 'brandon@localsolutionsit.com' },
  { name: 'Tovar', email: 'tovar@localsolutionsit.com' },
]



def add_reviewer()
  puts 'What is the name who you will add to reviewers?'
  reviewer = gets.chomp

  REVIEWERS << reviewer

  puts 'OK: Reviewer added successfuly'

  REVIEWERS.map{|r| puts r.to_s}
  
end


def review(filename='review.txt', &block)

  puts "Select a reviewee to review: "
  REVIEWEES.map{|r| puts r[:name].to_s.ljust(20) + r[:email].to_s }
  revwe = gets.chomp

  reviewee = REVIEWEES.find { |r| r[:name] == revwe }

  r1, r2 = select_reviewer

  reviewers = "Email send: Your reviewers are #{r1} and #{r2}."
  
  
  file = File.new filename, 'w'
  yield file, reviewee, reviewers if block_given?
  file.close
end

def select_reviewer
  count_reviewers = REVIEWERS.length

  r1 = REVIEWERS[Random.rand(count_reviewers)]
  r2 = REVIEWERS[Random.rand(count_reviewers)]

  r2 != r1 ? [r1, r2] : select_reviewer
end


def show_reviewers
  puts "Reviewers: "
  REVIEWERS.map{|r| puts r.to_s}
end

def show_reviewees
  puts "Reviewees: "
  REVIEWEES.map{|r| puts r[:name].to_s.ljust(20) + r[:email].to_s }
end

def menu()
  puts "\n\nMenu.\n1.- Add Reviewer.\n2.- Review.\n3.- Show Reviewers.\n4.- Show Reviewees.\n5.- Exit."
  
  option = gets.chomp.to_i
  
  case option
  when 1
    add_reviewer
  when 2
    review do |file, reviewee, reviewers|
      puts reviewers
      file.write "Email to: #{reviewee[:email]}\n"
      file.write "Body:\n\n"

      file.write "Hi, #{reviewee[:name]}\n"
      file.write reviewers
    end
  when 3
    show_reviewers
  when 4
    show_reviewees
  when 5
    return false
  else 
    puts 'ERROR: Invalid option'
  end
end

until menu() == false do
  menu
end
