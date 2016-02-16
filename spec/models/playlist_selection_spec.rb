require 'rails_helper'

describe PlaylistSelection do
  let(:playlist_selection) { create(:playlst_selection) }

  # ----------------------------------------
  # Validations
  # ----------------------------------------

  it do
    should validate_presence_of(:song)
  end

  it do
    should validate_presence_of(:playlist)
  end

  # ----------------------------------------
  # Associations
  # ----------------------------------------

  it do
    should belong_to(:playlist)
  end


  it do
    should belong_to(:song)
  end
end

