def dictionary_sort array
  d_rec_sort array, []
end

def d_rec_sort unsorted, sorted
  if unsorted == []
    return sorted
  end
  clone_array = []
  min_e = unsorted.pop
  unsorted.each {|cf_e| 
    if min_e.downcase < cf_e.downcase
      clone_array.push cf_e
    else
      clone_array.push min_e
      min_e = cf_e
    end
    }
  sorted.push(min_e)
  d_rec_sort clone_array, sorted
end

dictionary_sort ["Banana","banana","BAnANAna","Apple","apple","cherry","zebra","elephand"]
