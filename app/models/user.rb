class User < ActiveRecord::Base
  has_many :bookmarks, as: :bookmarkable, dependent: :destroy
  has_many :playlists, dependent: :destroy

  validates :first_name, :last_name, :email, presence: true
end
