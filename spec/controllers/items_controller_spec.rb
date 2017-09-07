require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

  describe "POST create" do

    it "increases the number of items by one" do
      post :create, item: {name: name}
      expect(user.items.count).to eq(1)
    end
  end

end
