# your code here
## create playlist

Dir.chdir '/home/deon/Music'
timestamp = time.new
timestamp.to_s!
filename = "playlist - #{timestamp}.m3u"

File.open filename 'w' #{}

music_files = shuffle(Dir['!/**/*.{jpg,JPG,WAV,flac,FLAC,wav}'])



File.open 'playlist','w' { |f| music_files.each { |track| f.write track+"\n"
  }
}

puts "djtango"