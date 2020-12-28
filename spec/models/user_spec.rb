require 'rails_helper'

describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:uid) }
    it { should validate_presence_of(:provider) }
  end
end
