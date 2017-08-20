class MoveElements
  # move_elements - swaps minimum and maximum values in array
  def self.move_elements(list)
    return list if list.size <= 1
    min = list.first
    max = list.last
    (1...list.size - 1).each do |i|
      min = list[i] if list[i] < list[i+1] && list[i] < min
      max = list[i] if list[i] > list[i+1] && list[i] > max
    end
    a = list.each_index.select{|i| list[i] == min}
    a.each { |i| list[i] = max }

    b = list.each_index.select{|i| list[i] == max} 
    b = b - a
    b.each { |i| list[i] = min }
    return list
  end
end
