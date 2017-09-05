RSpec.describe Item, type: :model do
  let(:user) { User.create!(email: "user@blocitoff.com", password: "password") }

  it { is_expected.to belong_to(:user) }
end
