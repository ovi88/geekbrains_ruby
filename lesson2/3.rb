def min_str str
  if str.length < 10 then return true end
end

def check str
   if str[0] == str[0].upcase then return true end
end

names = %w[ambientsketchbook Erik\ Wollo Brian\ Eno Evangelos\ Papathanassiou Shulman]
names.each do |n|
  if min_str(n) && check(n) then puts n end
end
