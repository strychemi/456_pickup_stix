require 'rails_helper'

describe Following do
  let(:following) { create(:following) }

  # ----------------------------------------
  # Validations
  # ----------------------------------------

  it do
    should validate_presence_of(:follower)
  end

  it do
    should validate_presence_of(:followed)
  end

  # ----------------------------------------
  # Associations
  # ----------------------------------------

  it do
    should belong_to(:follower)
  end


  it do
    should belong_to(:followed)
  end
end


describe User do
  let(:user) { create(:user) }

  # ----------------------------------------
  # Associations
  # ----------------------------------------

  it do
    should have_many(:followers)
  end


  it do
    should have_many(:followeds)
  end
end

