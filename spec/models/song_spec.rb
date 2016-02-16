require 'rails_helper'

describe Song do
  let(:song) { create(:song) }

  # ----------------------------------------
  # Validations
  # ----------------------------------------

  it do
    should validate_presence_of(:name)
  end

  it do
    should validate_presence_of(:artist)
  end

  # ----------------------------------------
  # Associations
  # ----------------------------------------

  it do
    should belong_to(:artist)
  end


  it do
    should have_many(:bookmarks).dependent(:destroy)
  end


  it do
    should have_many(:playlist_selections).dependent(:destroy)
  end


  it do
    should have_many(:playlists)
  end
end

