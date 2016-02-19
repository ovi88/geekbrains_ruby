
player = { name: 'johnny', color: :red}
colors = [:blue, :white, :green, :red, :orange]

r_color = colors.shuffle.at(1)
j_color = player[:color]

def check_color(color1,color2)
  if color1 == color2
    puts "Джонни, ты прав!"
  elsif color1.length == color2.length
    puts "Джонни, букв столько же, но значение иное!"
  else
    puts "Ты ошибся, попробуй еще раз"
  end
end

check_color(r_color,j_color)
