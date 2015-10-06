def log desc, &block
  puts "#{desc} commencing"
  returned = block[]
  puts "#{desc} finished, returning #{returned}"
end