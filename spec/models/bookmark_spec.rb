require 'rails_helper'

describe Bookmark do
  let(:bookmark) { create(:bookmark) }

  # ----------------------------------------
  # Validations
  # ----------------------------------------

  it do
    should validate_presence_of(:user)
  end

  it do
    should validate_presence_of(:bookmarkable)
  end

  # ----------------------------------------
  # Associations
  # ----------------------------------------

  it do
    should belong_to(:user)
  end


  it do
    should belong_to(:bookmarkable)
  end
end

