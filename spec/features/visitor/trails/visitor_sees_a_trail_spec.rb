require 'rails_helper'

context 'As a visitor' do
  describe 'when I visit the trail show,' do
    before(:each) do
      @trail = create(:trail)
    end
    scenario 'I see the name, address, and length of hike' do
      visit trail_path(@trail)

      expect(page).to have_content(@trail.name)
      expect(page).to have_content(@trail.address)
      expect(page).to have_content(@trail.length)
    end

    scenario 'I see the total number of trips this hike has been included in' do
      visit trail_path(@trail)

      expect(page).to have_content
    end
  end
end
