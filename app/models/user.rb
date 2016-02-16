class User < ActiveRecord::Base
  before_create :generate_token
  has_secure_password

  has_many :bookmarks, as: :bookmarkable, dependent: :destroy
  has_many :playlists, dependent: :destroy

  validates :first_name, :last_name, :email, presence: true
  validates :password, presence: true, allow_nil: true

  def name
    "#{self.first_name} #{self.last_name}"
  end

  def generate_token
    begin
      self[:auth_token] = SecureRandom.urlsafe_base64
    end while User.exists?(:auth_token => self[:auth_token])
  end

  def regenerate_auth_token
    self.auth_token = nil
    generate_token
    save!
  end
end
