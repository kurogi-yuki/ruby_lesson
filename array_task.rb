languages = ["Ruby", "PHP", "Java"]
s = "Hello World!"

puts <<~T
  様々な言語のHello World

  T

languages.each do |l|
  if l == "Ruby"
    puts %(#{l}:puts "#{s}")
  elsif l == "PHP"
    puts %(#{l}:echo "#{s}";)
  else l == "Java"
    puts %(#{l}:System.out.println("#{s}");)
  end
end
