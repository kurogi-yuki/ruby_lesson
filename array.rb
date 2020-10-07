languages = ["Ruby", "PHP", "Java"]
str = "Hello World!"

puts <<~TEXT
  様々な言語のHello World

TEXT

languages.each do |language|
  case language
  when "Ruby"
    puts %(#{language}:puts "#{str}")
  when "PHP"
    puts %(#{language}:echo "#{str}";)
  when "Java"
    puts %(#{language}:System.out.println("#{str}");)
  end
end
