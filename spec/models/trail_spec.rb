require 'rails_helper'

describe Trail, type: :model do
  context 'relationships' do
    it { should have_many :trail_trips }
    it { should have_many :trips }
  end
end
