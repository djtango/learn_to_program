def profile block_description, &block
  $profile_on == true
  if $profile_on
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"  # your code here
    $profile_on = !$profile_on
  else
    block.call
  end
end

profile_on
