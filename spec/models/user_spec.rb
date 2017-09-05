RSpec.describe User, type: :model do
  let(:user) { User.create!(email: "user@blocitoff.com", password: "password") }

  describe "invalid user" do
    let(:user_with_invalid_email) { User.new(email: "", password: 'password') }

    it "should be an invalid user due to blank email" do
      expect(user_with_invalid_email).to_not be_valid
    end
  end

  describe "duplicate email" do
    before do
      user
    end

    let(:duplicate_user) { User.new(email: "user@blocitoff.com", password: "password")}

    it "should be an invalid due to duplciate email" do
      expect(duplicate_user).to_not be_valid
    end
  end

  describe "after create" do
    before do
      @new_user = User.new(email: 'new_user@example.com', password: 'password')
    end
  end
end
