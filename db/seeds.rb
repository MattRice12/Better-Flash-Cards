category = Category.find_or_create_by!(name: "Great Programmers of the 21st Century")

FlashCard.find_or_create_by!(
  question: "Who are the greatest developers of the 21st century?", 
  answer: "Matt Rice and Vivek Patel",
  link: "https://www.duh.com",
  category: category
)

1.upto(8) do |n|
  FlashCard.find_or_create_by!(
    question: "What comes after #{n}",
    answer: (n + 1).to_s,
    category: category
  )
end