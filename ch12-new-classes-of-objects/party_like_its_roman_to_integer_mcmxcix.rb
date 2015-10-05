def roman_to_integer roman
  # your code here
  #validate entry
  numerals = roman
  combos = ['I','V','X','L','C','D','M']#levels: only permissible chars
  for i in 0...numerals.length
    if not combos.include?(numerals[i].upcase)
      return 'Please enter a valid string of Roman Numerals'
    end
  end
  #code
  counter = 0
  layers = [['I','V','X'],    #ones[0][i]
            ['X','L','C'],    #tens[1][i]
            ['C','D','M'],    #huns[2][i]
                    ['M']]    #thou[3][0]
  dict = {'I' => 1,'V' => 5,'X' => 10,'L' => 50,
          'C' => 100,'D' => 500,'M' => 1000}
  revnum = numerals.reverse #parse from right to left
  revnum.upcase!
  layer = 0
  while layer < 3
    for i in 0...revnum.length
      if layers[layer].include?(revnum[i])
        if revnum[i] == layers[layer][1] or revnum[i] == layers[layer][2] #check for 4s and 9s
          counter += dict[revnum[i]] - dict[revnum[i+1]] if revnum[i+1] == layers[layer][0]#add4/9s
        elsif revnum[i] != layers[layer][2] # if "ones" or "fives"
          counter += dict[revnum[i]]
        end#49s
      else
        layer += 1
      end#layer
    end
  end #keep going til next layer of numbers
    #split numbers into parsed and "to be parsed"
  counter
end
roman_to_integer "ivxlcdm"
roman_to_integer "ai"
roman_to_integer "ia"
roman_to_integer "ivxlcdem"

    #only allowed combidations
def parse_to_next_layer parse counter

  end
end