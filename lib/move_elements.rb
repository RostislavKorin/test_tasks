class MoveElements
  def self.move_elements(list)
    return list if list.size <= 1
    min = list[0]
    max = list[0]
    (1...list.size - 1).each do |i|
      min = list[i] if list[i] < list[i+1] && list[i] < min
      max = list[i] if list[i] > list[i+1] && list[i] > max
    end
    a = list.each_index.select{|i| list[i] == min}
    a.each do |i|
      list[i] = max
    end
    b = list.each_index.select{|i| list[i] == max}
    b = b - a
    b.each do |i|
      list[i] = min
    end
    return list
  end
end
