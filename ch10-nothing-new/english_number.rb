def english_number number
  if number < 0 # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end
  num_string = '' # This is the string we will return.
  ones_place = ['one','two', 'three',
                'four','five','six',
                'seven','eight','nine']
  tens_place = ['ten','twenty','thirty',
                'forty','fifty','sixty',
                'seventy','eighty','ninety']
  teenagers = ['eleven','twelve','thirteen',
                'fourteen', 'fifteen', 'sixteen',
                'seventeen', 'eighteen', 'nineteen']
  thousands_place = ['thousand','million','billion','trillion','quadrillion','quintillion']

  #inser section for thousands here:
  left = number
  tnum = number
  while left >= 1000
    d = 0
    while tnum >= 1000
      if tnum < 1000000
        modulo = tnum % 1000
        puts modulo
      end
      tnum /= 1000
      d += 1
    end
    thousands = english_number tnum
    num_string = num_string + thousands + ' ' + thousands_place[d-1]
    if modulo > 0 and d>1
      num_string = num_string + ' ' + english_number(modulo) + ' ' + thousands_place[d-2]
    end
    write = left/1000
    left = left - write*1000
    if left > 0
       num_string = num_string + ' '
    end
  end
    write = left/100
    #Hundreds
    left = left - write*100 # Subtract off those hundreds.
    if write > 0
      hundreds = english_number write
      num_string = num_string + hundreds + ' hundred'
      if left > 0
        num_string = num_string + ' '
      end
    end
    #Tens
    write = left/10
    left = left - write*10
    if write > 0
      if ((write == 1) and (left > 0))
        num_string = num_string + teenagers[left-1]
        left = 0
      else
        num_string = num_string + tens_place[write-1]
      end
      if left > 0
        num_string = num_string + '-'
      end
    end
    #Ones
    write = left
    left = 0
    if write > 0
      num_string = num_string + ones_place[write-1]
    end
    num_string
end
