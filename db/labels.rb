albums = [
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

albums.each do |name, founder, headquarters, year_founded|
  Album.create(name: name,
               founder: founder,
               headquarters: headquarters,
               year_founded: year_founded)
end

