lang = ["Ruby", "Python", "JavaScript", "Java", ".NET", "HTML", "Clojure"]
w_hash={}
lang.inject(0) do  |start,word|
  w_hash[word] = word.length
end
puts w_hash
