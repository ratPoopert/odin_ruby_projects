# frozen_string_literal: true

def bubble_sort(list)
  return list if list.length <= 1

  loop do
    swap_values(list)
  end

  list
end

def swap_values(list)
  swapped = false
  (list.length - 1).times do |i|
    if list[i] > list[i + 1]
      list[i], list[i + 1] = list[i + 1], list[i]
      swapped = true
    end
  end
  break unless swapped
end

def make_list(number_of_items)
  list = []

  number_of_items.times do
    list.push(Random.new.rand(number_of_items * 10))
  end

  list
end

list = make_list(10)
p list
sorted_list = bubble_sort(list)
p sorted_list
