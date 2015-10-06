$nesting_depth = 0
def log desc, &block
  $nesting_depth += 1
  ind = '  ' * ($nesting_depth-1)
  puts "#{ind}#{desc} commencing"
  returned = block[]*
  puts "#{ind}#{desc} finished, returning:"
  puts "#{ind}#{returned}"  # your code here
end