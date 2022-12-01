require "csv"

data_file = "data/day1.csv"

arr = []
num = 0

CSV.foreach(data_file) do |e|
  num += e[0].to_i unless e[0].nil?
  if e[0].nil?
    arr.push(num)
    num = 0
  end
end

p arr.max

p arr.sort.reverse.first(3).sum
