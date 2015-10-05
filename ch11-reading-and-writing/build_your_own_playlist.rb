# your code here
## create playlist
def shuffle arr
  arr.shuffle
end
Dir.chdir '/home/deon/Music'
timestamp = Time.new
timestamp = timestamp.to_s
filename = "playlist - #{timestamp}.m3u"


music_files = shuffle(Dir['**/*.{mp3,MP3,wav,WAV,flac,FLAC}'])

File.open filename,'w' do |f| music_files.each do |track| f.write track+"\n"
  end
end

puts "djtango"

