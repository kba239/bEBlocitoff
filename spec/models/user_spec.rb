RSpec.describe User, type: :model do
  let(:user) { User.create!(email: Faker::Internet.unique.email, password: Faker::Internet.password) }

  describe "invalid user" do
    let(:user_with_invalid_email) { User.new(email: "", password: 'password') }

    it "should be an invalid user due to blank email" do
      expect(user_with_invalid_email).to_not be_valid
    end
  end

  describe "after create" do
    before do
      @new_user = User.new(email: Faker::Internet.unique.email, password: Faker::Internet.password)
    end
  end
end
