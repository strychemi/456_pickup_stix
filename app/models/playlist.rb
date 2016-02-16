class Playlist < ActiveRecord::Base
  belongs_to :user
  has_many :bookmarks, as: :bookmarkable, dependent: :destroy

  has_many :playlist_selections, dependent: :destroy
  has_many :songs, through: :playlist_selections

  validates :name, :user, presence: true
end
