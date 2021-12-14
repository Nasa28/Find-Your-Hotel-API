require 'rails_helper'

RSpec.describe User, type: :model do
it 'should have many favourites' do
      user = User.reflect_on_association(:favorites).macro
      expect(user).to eq(:has_many)
    end
end

