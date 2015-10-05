def sort array
  # your code here
  recursive_sort array, []
end

def sort array
  # your code here
  recursive_sort array, []
end

def recursive_sort unsorted, sorted
  unsorted.compact!
  if unsorted == []
    return sorted
  else
    sorted << unsorted.min
    unsorted.delete_at(unsorted.index(unsorted.min))
  end
  recursive_sort unsorted, sorted
end
