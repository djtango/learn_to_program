def music_shuffle filenames
  music_files = filenames #music_shuffle(Dir['**/*.{mp3,MP3,wav,WAV,flac,FLAC}'])
  music_files.sort
  pivot = music_files.length / 2
  odds_arr = []
  evns_arr = []
  comb_arr = []
  3.times {
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
    comb_arr
  }
  len = music_files.length
  arr = []
  cut = rand(len) # index of card to cut at
  idx = 0

  while idx < len
    arr.push(comb_arr[(idx+cut)%len])
    idx = idx + 1
  end

  arr
end
