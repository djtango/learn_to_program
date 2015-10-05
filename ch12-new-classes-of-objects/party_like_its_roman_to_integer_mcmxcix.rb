def roman_to_integer roman
  # your code here
  #validate entry
  numerals = roman
  combos = ["I","V","X","L","C","D","M"]#levels: only permissible chars
  for i in 0...numerals.length
    if not combos.include?(numerals[i].upcase)
      return 'Please enter a valid string of Roman Numerals'
    end
  end

  #code
  counter = 0
  dict = {"I" => 1,"V" => 5,"X" => 10,"L" => 50,
          "C" => 100,"D" => 500,"M" => 1000}
  revnum = numerals.reverse #parse from right to left
  revnum.upcase!
  i = 0
    while i < revnum.length
      chk4_9 =  if i == 0
                  true
                else
                  dict[revnum[i]] >= dict[revnum[i-1]]
                end
    chk4_9 ? counter += dict[revnum[i]] : counter -= dict[revnum[i]] #numerals are reversed. If numeral greater than preceding one, add, if not subtract value
    i += 1
  end
  counter
end
