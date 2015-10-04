def roman_numeral num
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