module ModelHelper

  # ----------------------------------------
  # Unique IDs
  # ----------------------------------------

  $uid = 0
  def self.generate_unique_id
    $uid += 1
  end


  # ----------------------------------------
  # Users
  # ----------------------------------------

  def self.first_name
    Faker::Name.first_name
  end


  def self.last_name
    Faker::Name.last_name
  end


  def self.email(name)
    Faker::Internet.email(name)
  end


  def self.username(name)
    Faker::Internet.user_name(name)
  end


  # ----------------------------------------
  # Artists
  # ----------------------------------------

  ARTIST_NAMES = [
    "Diana Ross and the Supremes",
    "Lynyrd Skynyrd",
    "Nine Inch Nails",
    "Booker T. and the MGs",
    "Guns n' Roses",
    "Tom Petty",
    "Carlos Santana",
    "The Yardbirds",
    "Jay-Z",
    "Gram Parsons",
    "Tupac Shakur",
    "Black Sabbath",
    "James Taylor",
    "Eminem",
    "Creedence Clearwater Revival",
    "The Drifters",
    "Elvis Costello",
    "The Four Tops",
    "The Stooges",
    "Beastie Boys",
    "The Shirelles",
    "Eagles",
    "Hank Williams",
    "Radiohead",
    "AC/DC",
    "Frank Zappa",
    "The Police",
    "Jackie Wilson",
    "The Temptations",
    "Cream",
    "Al Green",
    "The Kinks",
    "Phil Spector",
    "Tina Turner",
    "Joni Mitchell",
    "Metallica",
    "Aerosmith",
    "Parliament and Funkadelic",
    "Grateful Dead",
    "Dr. Dre",
    "Eric Clapton",
    "Howlin' Wolf",
    "The Allman Brothers Band",
    "Queen",
    "Pink Floyd",
    "The Band",
    "Elton John"
  ]

  def self.artist_name
    n = rand(0..ARTIST_NAMES.length)
    ARTIST_NAMES[n % ARTIST_NAMES.length]
  end


  # ----------------------------------------
  # Playlists
  # ----------------------------------------

  MUSICAL_TERMS = [
    'remixes',
    'tunes',
    'b-sides',
    'playlist',
    'songs',
    'melodies',
    'oldies',
    'hymns',
    'lullabies',
    'ballads',
    'anthems',
    'electronica',
    'rock',
    'ditties',
    'carols',
    'symphonies',
    'operas',
    'chant',
    'beats',
    'concertos',
    'jigs',
    'dances'
  ]

  def self.playlist_name
    n = rand(0..MUSICAL_TERMS.length)
    "#{Faker::Hacker.ingverb} #{Faker::Hacker.adjective} #{Faker::Team.creature} #{MUSICAL_TERMS[n % MUSICAL_TERMS.length]} #{generate_unique_id}".titleize
  end

  # ----------------------------------------
  # Songs
  # ----------------------------------------

  def self.song_name
    n = rand(0..MUSICAL_TERMS.length)
    "#{Faker::Company.catch_phrase} #{MUSICAL_TERMS[n % MUSICAL_TERMS.length].singularize} #{generate_unique_id}".titleize
  end
end



