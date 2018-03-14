
labels = [
  ["Columbia", "Edward Easton", "New York", 1888],
  ["Riverside", "Bill Grauer", "New York", 1953],
  ["ECM", "Manfred Eicher", "Munich", 1970],
  ["Motown", "Berry Gordy", "Detroit", 1958],
  ["Atlantic", "Ahmet Ertegun", "New York", 1947],
  ["Verve", "Norman Granz", "Santa Monica", 1956],
  ["Warner Bros.", "James Conklin", "Burbank", 1958],
  ["Stax", "Estelle Axton", "Memphis", 1957],
  ["Megaforce", "John Zazula", "New York", 1982],
  ["Polydor", "Gustav Brachhausen", "London", 1913]
]

labels.each do |name, founder, headquarters, year_founded|
  RecordLabel.create(:name => name,
                     :founder => founder,
                     :headquarters => headquarters,
                     :year_founded => year_founded)
end

artists = [
  ["Miles Davis", 1945, 1991, "Jazz", "Cool"],
  ["John Coltrane", 1946, 1967, "Jazz", ""],
  ["Bill Evans", 1955, 1980, "Jazz", "Cool"],
  ["Thelonious Monk", 1944, 1972, "Jazz", "Be-bop"],
  ["Keith Jarrett", 1967, 2017, "Jazz", "Modal"],
  ["Weather Report", 1970, 1986, "Jazz", "Fusion"],
  ["Pink Floyd", 1965, 2014, "Rock", ""],
  ["Led Zeppelin", 1968, 1980, "Rock", "Hard rock"],
  ["Metallica", 1981, 2017, "Rock", "Heavy Metal"],
  ["R.E.M.", 1980, 2011, "Rock", "Alternative"],
  ["Talking Heads", 1975, 1991, "Rock", "New wave"],
  ["Brian Eno", 1972, 2017, "Electronic", "Ambient"],
  ["Otis Redding", 1958, 1967, "R&B", ""],
  ["B.B. King", 1948, 2015, "Blues", ""],
]

artists.each do |name, year_active_start, year_active_end, genre, style| 
  Artist.create(name: name, 
                year_active_start: year_active_start,
                year_active_end: year_active_end,
                genre: genre,
                style: style)
end


columbia = RecordLabel.find_by(:name => "Columbia")
miles = Artist.find_by(:name => "Miles Davis")

Album.create(:title => "Kind of Blue", 
  :year => 1959, 
  :artist => miles, 
  :review => "The best jazz album of all time, according to some", 
  :record_label => columbia)

Album.create(:title => "Sketches of Spain", 
  :year => 1960, 
  :artist => miles, 
  :review => "", 
  :record_label => columbia)

Album.create(:title => "In a Silent Way", 
  :year => 1969, 
  :artist => miles,
  :review => "The beginning of the end, say the moldy figs", 
  :record_label => columbia)

atlantic = RecordLabel.find_by(:name => "Atlantic")
coltrane = Artist.find_by(:name => "John Coltrane")

Album.create(:title => "Giant Steps", 
  :year => 1960, 
  :artist => coltrane, 
  :review => "", 
  :record_label => atlantic)

verve = RecordLabel.find_by(:name => "Verve")

Album.create(:title => "Crescent", 
  :year => 1964, 
  :artist => coltrane, 
  :review => "", 
  :record_label => verve)

riverside = RecordLabel.find_by(:name => "Riverside")
evans = Artist.find_by(:name => "Bill Evans")

Album.create(:title => "Sunday at the Village Vanguard", 
  :year => 1961, 
  :artist => evans, 
  :review => "Redefined the piano trio", 
  :record_label => riverside)

polydor = RecordLabel.find_by(:name => "Polydor")
eno = Artist.find_by(:name => "Brian Eno")

Album.create(:title => "Ambient 1: Music for Airports", 
  :year => 1978, 
  :artist => eno, 
  :review => "",
  :record_label => polydor)
 
zep = Artist.find_by(:name => "Led Zeppelin")

Album.create(:title => "Physical Graffiti", 
  :year =>1975, 
  :artist => zep, 
  :review => "", 
  :record_label => atlantic)

Album.create(:title => "In through the Out Door", 
  :year => 1979, 
  :artist => zep, 
  :review => "", 
  :record_label => atlantic)

metallica = Artist.find_by(:name => "Metallica")
megaforce = RecordLabel.find_by(:name => "Megaforce")

Album.create(:title => "Ride the Ligtning", 
  :year => 1984, 
  :artist => metallica, 
  :review => "", 
  :record_label => megaforce)

otis = Artist.find_by(:name => "Otis Redding")
stax = RecordLabel.find_by(:name => "Stax")

Album.create(:title => "Live at the Whisky a Go Go", 
  :year => 1966, 
  :artist => otis,
  :review => "", 
  :record_label => stax)

floyd = Artist.find_by(:name => "Pink Floyd")

Album.create(:title => "Dark Side of the Moon", 
  :year => 1973, 
  :artist => floyd,
  :review => "",
  :record_label => columbia)

Album.create(:title => "Piper at the Gates of Dawn", 
  :year => 1967,
  :artist => floyd,
  :review => "",
  :record_label => columbia)

rem = Artist.find_by(:name => "R.E.M.")
warner = RecordLabel.find_by(:name => "Warner Bros.")

Album.create(:title => "Fables of the Reconstruction", 
   :year => 1985, 
   :artist => rem,
   :review => "",
   :record_label => warner)
   
Album.create(:title => "Document", 
  :year => 1987,
  :artist => rem,
  :review => "",
  :record_label => warner) 
  
heads = Artist.find_by(:name => "Talking Heads")

Album.create(:title => "More Songs about Buildings and Food", 
  :year => 1978,
  :artist => heads,
  :review => "",
  :record_label => warner) 
  
monk = Artist.find_by(:name => "Thelonious Monk")

Album.create(:title => "Brilliant Corners",
  :year => 1956, 
  :artist => monk,
  :review => "",
  :record_label => riverside)

report = Artist.find_by(:name => "Weather Report")

Album.create(:title => "Mysterious Traveller", 
  :year => 1974,
  :artist => report,
  :review => "",
  :record_label => columbia)

