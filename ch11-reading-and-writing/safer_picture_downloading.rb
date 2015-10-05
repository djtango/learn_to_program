# your code here
Dir.chdir '/home/Desktop/Projects/Playlist_Test'
    # First we find all of the pictures to be moved.
    pic_names = Dir['F:/**/*.jpg']
    puts 'What would you like to call this batch?'
    batch_name = gets.chomp
    puts
    print "Downloading #{pic_names.length} files: "
  # This will be our counter. We'll start at 1 today,
  # though normally I like to count from 0.
  pic_number = 1
  pic_names.each do |name|
    if not File.exist?
      print '.' # This is our "progress bar".
      new_name = if pic_number < 10
	      "#{batch_name}0#{pic_number}.jpg"
	    else
		    "#{batch_name}#{pic_number}.jpg"
      end
    else 
      puts "\n"+'ERROR: Could not process "'+name+
        '" because it\'s not in the proper format!'
      exit
	  end 
    next
  File.rename name, new_name
	pic_number = pic_number + 1
end
