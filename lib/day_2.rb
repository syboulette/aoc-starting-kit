txt_input = "data/day2.txt"
win = { "A" => "Y", "B" => "Z", "C" => "X" }
draw = { "A" => "X", "B" => "Y", "C" => "Z" }
loose = { "A" => "Z", "B" => "X", "C" => "Y" }
score1 = 0
score2 = 0

data = File.read(txt_input).lines.map(&:split)
data.each do |e|
  # Part 1
  case e[1]
  when "X" then score1 += 1
  when "Y" then score1 += 2
  when "Z" then score1 += 3
  end

  score1 += 6 if win[e[0]] == e[1]
  score1 += 3 if draw[e[0]] == e[1]

  # Part 2
  hand = nil
  case e[1]
  when "X" then hand = loose[e[0]]
  when "Y" then hand = draw[e[0]]
  when "Z" then hand = win[e[0]]
  end

  case hand
  when "X" then score2 += 1
  when "Y" then score2 += 2
  when "Z" then score2 += 3
  end

  score2 += 6 if e[1] == "Z"
  score2 += 3 if e[1] == "Y"
end

p score1
p score2
