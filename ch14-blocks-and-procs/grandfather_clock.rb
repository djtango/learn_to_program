def grandfather_clock &block
  time_now = Time.new.hour
  hour12 = time_now % 12 == 0 ? 12 : time_now % 12
  hour12.times do block[]
  end
end