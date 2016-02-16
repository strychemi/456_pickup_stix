FactoryGirl.define do
  factory :bookmark do

    factory :artist_bookmark do
      association :bookmarkable, :factory => :artist
    end

    factory :playlist_bookmark do
      association :bookmarkable, :factory => :playlist
    end

    factory :song_bookmark do
      association :bookmarkable, :factory => :song
    end
  end
end

