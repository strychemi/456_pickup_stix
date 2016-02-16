require 'rails_helper'

describe User do
  let(:user) { create(:user) }

  # ----------------------------------------
  # Validations
  # ----------------------------------------  

  it do
    should validate_presence_of(:first_name)
  end

  it do
    should validate_presence_of(:last_name)
  end

  it do
    should validate_presence_of(:email)
  end

  # ----------------------------------------
  # Associations
  # ----------------------------------------

  it do
    should have_many(:bookmarks).dependent(:destroy)
  end


  it do
    should have_many(:playlists).dependent(:destroy)
  end
end

