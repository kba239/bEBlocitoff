require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

  describe "POST create" do
    before do
      sign_in user
    end
    it "increases the number of items by one" do
      post :create, user_id: user.id, item: {name: name}
      expect(user.items.count).to eq(1)
    end
  end

end
