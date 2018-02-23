require 'rails_helper'

describe Trip, type: :model do
  context 'relationships' do
    it { should have_many :trail_trips }
    it { should have_many :trails }
  end

  context 'instance methods' do
    describe '#total_hiking_distance' do
      it 'returns the total distance of all trails taken' do

      end
    end
  end
end
