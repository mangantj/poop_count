require 'rails_helper'

RSpec.describe User, type: :model do
  fixtures :all
  
  describe "fields" do
    it "has an email" do
      user = users(:tyler)
      expect(user.email).to eq "test@test.com"
    end
  end
end
