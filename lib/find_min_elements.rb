class FindMinElements
  # find_min_elements - finds indexex of two smallest elements in array
  def self.find_min_elements(list)
    return [0] if list.size <= 1
    return [0, 1] if list.size <= 2
    min1 = list.first
    min2 = list.last
    (0...list.size - 1).each do |i|
      min1 = list[i] if list[i] < list[i + 1] && min1 > list[i]
      min2 = list[i] if min2 > list[i] && list[i] != min1
    end
    array = (list.each_index.select{|i| list[i] == min1} + (list.each_index.select{|i| list[i] == min2})).uniq
    return [array[0], array[1]]
  end
end
