def old_roman_numeral(num)
  # your code here
  $ORNremainder = num
  def counter(magnitude)
	  case 
	    when magnitude == "thousands"
        letter = "M"
        fives = "MMMMM"
        divisor = 1000
	    when magnitude == "hundreds"
	      letter = "C"
		    fives = "D"
        divisor = 100
	    when magnitude == "tens"
	      letter = "X"
		    fives = "L"
        divisor = 10
	    when magnitude == "ones"
	      letter = "I"
		    fives = "V"
        divisor = 1
    end
    tally = $ORNremainder / divisor
    $ORNremainder = $ORNremainder % divisor
    if tally < 5 
      return letter * tally
    else
      return fives + letter * (tally - 5)
    end
  end
  return counter("thousands") + counter("hundreds") + counter("tens") + counter("ones") #thousands#1-4,5,10s,50,100s
end
