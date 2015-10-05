def shuffle array
  # your code here
  recursive_shuffle array, []
end

def recursive_shuffle array, shuffled
  if array.length == 0
    return shuffled
  end
  rnd_i = rand(array.length)
  shuffled << array[rnd_i]
  array.delete_at(rnd_i)
  recursive_shuffle array, shuffled
end
