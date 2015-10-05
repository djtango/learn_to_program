class Integer
  def to_roman
    $ORNremainder = self
    def counter(magnitude)
      case
        when magnitude == "thousands"
          letter = "M"
          fives = "MMMMM"
          divisor = 1000
        when magnitude == "hundreds"
          letter = "C"
          fives = "D"
          tens = "M"
          divisor = 100
        when magnitude == "tens"
          letter = "X"
          fives = "L"
          tens = "C"
          divisor = 10
        when magnitude == "ones"
          letter = "I"
          fives = "V"
          tens = "X"
          divisor = 1
      end
      tally = $ORNremainder / divisor
      $ORNremainder = $ORNremainder % divisor
      if not (tally == 4 or tally ==9)
        if tally < 5
          return letter * tally
        else
          return fives + letter * (tally - 5)
        end
      else
        return letter + fives if tally == 4
        return letter + tens if tally == 9
      end
    end
    return counter("thousands") + counter("hundreds") + counter("tens") + counter("ones") #thousands#1-4,5,10s,50,100s
  end
end

class Array
  def shuffle2
    array = self
    shuffled = []
    shuf_count = 0
    while shuf_count < array.length
      rand_index = rand(array.length)
      index = 0
      arr2 = []
      array.each { index == rand_index ? shuffled << array[index] : arr2 << array[index]
        index += 1
      }
      array = arr2
      shuf_count =+ 1
    end
    shuffled
  end
end

class Integer
  def factorial
    return 1 if self <= 1
    self * (self - 1).factorial
  end
end