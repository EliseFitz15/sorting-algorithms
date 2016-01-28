require 'benchmark'

def selection_sort(to_sort)
  for index in 0..(to_sort.length - 2)
    # select the first element as the temporary minimum
    index_of_minimum = index

    # iterate over all other elements to find the minimum
    for inner_index in index..(to_sort.length - 1)
      if to_sort[inner_index] < to_sort[index_of_minimum]
        index_of_minimum = inner_index
      end
    end

    if index_of_minimum != index
      to_sort[index], to_sort[index_of_minimum] = to_sort[index_of_minimum], to_sort[index]
    end
  end

  return to_sort
end

def insertion_sort(to_sort)
  # index starts at one, we can skip the first element, since we would
  # otherwise take it and place it in the first position, which it already is
  for index in 1..(to_sort.length - 1)
    for inner_index in 0..(index - 1)
      if to_sort[inner_index] >= to_sort[index]
          to_sort.insert(inner_index, to_sort[index])
          to_sort.delete_at(index + 1)
      end
    end
  end

  return to_sort
end

def bubble_sort(to_sort)
  sorted = false

  until sorted
      sorted = true

      for index in 0..(to_sort.length - 2)
        if to_sort[index] > to_sort[index + 1]
          sorted = false
          # Swap the indexes
          to_sort[index], to_sort[index + 1] = to_sort[index + 1], to_sort[index]
        end
      end
  end

  return to_sort
end

# array = ["a","f","c","b","e","d","g"]
# selection_sort(array)

puts "Small Set"
numbers = (1..100).to_a.shuffle!
Benchmark.bm(15) do |r|
  r.report("Selection Sort") { selection_sort(numbers) }
  r.report("Insertion Sort") { insertion_sort(numbers) }
  r.report("Bubble Sort") { bubble_sort(numbers) }
  r.report("Ruby Sort") { numbers.sort! }

end

puts; puts "---------"; puts

puts "Large Set"
numbers = (1..10000).to_a.shuffle!
Benchmark.bm(15) do |r|
  r.report("Selection Sort") { selection_sort(numbers) }
  r.report("Insertion Sort") { insertion_sort(numbers) }
  r.report("Bubble Sort") { bubble_sort(numbers) }
  r.report("Ruby Sort") { numbers.sort! }
end
