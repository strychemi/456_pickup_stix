require 'rails_helper'

describe Playlist do
  let(:playlist) { create(:playlist) }

  # ----------------------------------------
  # Validations
  # ----------------------------------------

  it do
    should validate_presence_of(:name)
  end

  it do
    should validate_presence_of(:user)
  end

  # ----------------------------------------
  # Associations
  # ----------------------------------------

  it do
    should belong_to(:user)
  end


  it do
    should have_many(:bookmarks).dependent(:destroy)
  end


  it do
    should have_many(:playlist_selections).dependent(:destroy)
  end


  it do
    should have_many(:songs)
  end
end

