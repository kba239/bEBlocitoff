RSpec.describe Item, type: :model do
  let(:user) { User.create!(email: Faker::Internet.unique.email, password: Faker::Internet.password) }

  it { is_expected.to belong_to(:user) }
end
