def music_shuffle filenames
  music_files = filenames #music_shuffle(Dir['**/*.{mp3,MP3,wav,WAV,flac,FLAC}'])
  music_files.sort
  pivot = music_files.length / 2
  odds_arr = []
  evns_arr = []
  comb_arr = []
  for index in (0...pivot)
    odds_arr << music_files[index]
  end

  for index in (pivot..music_files.length)
    evns_arr << music_files[index]
  end

  n = odds_arr.length
  n.times {|index| comb_arr[index*2] = odds_arr[index]}
  m = evns_arr.length
  m.times {|index| comb_arr[(index*2)+1] = evns_arr[index]}
  comb_arr.compact!
  #music_files.each {|file| print ",#{file}"}
  #puts
  #odds_arr.each {|file| print ",#{file}"}
  #puts
  #evns_arr.each {|file| print ",#{file}"}
  #puts
  comb_arr.each {|file| print ",#{file}"}

  cut_arr = []
  pivot = music_files.length / 3
  i = 0
  while i < pivot
    print cut_arr << cut_arr.shift
    i += 1
  end
  cut_arr << comb_arr.shift(pivot)
  i = 0
  while i < cut_arr.length
    print comb_arr.push(cut_arr[i])
    i += 1
  end
  #comb_arr = comb_arr + cut_arr
  comb_arr.each {|file| print ",#{file}"}
  puts
  cut_arr.each {|file| print ",#{file}"}
  puts
  comb_arr
end
music_shuffle [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]

## create playlist
Dir.chdir '/home/deon/Music'
timestamp = Time.new
timestamp = timestamp.to_s
filename = "playlist - #{timestamp}.m3u"


music_files = music_shuffle(Dir['**/*.{mp3,MP3,wav,WAV,flac,FLAC}'])

File.open filename,'w' do |f| music_files.each do |track| f.write track+"\n"
  end
end

puts "djtango"