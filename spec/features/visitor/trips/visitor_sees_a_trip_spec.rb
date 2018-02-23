require 'rails_helper'

context 'As a visitor' do
  describe 'when I visit the trips index,' do
    describe 'and I click a link to a trip show,' do
      before(:each) do
        @trip = create(:trip)
        @trail_trips = create_list(:trail_trip, 3, trip: @trip)
      end
      scenario 'I see a list of trails included in the trip' do
        visit trips_path
        click_link "#{@trip.name}"

        expect(current_path).to eq(trip_path(@trip))
        @trip.trails.each do |trail|
          expect(page).to have_content(trail.name)
          expect(page).to have_content(trail.address)
          expect(page).to have_content(trail.length)
        end
      end
    end
  end
end

#
#
# As a visitor,
# when I visit a trip show,
# I see the planned total hiking distance
# ```
#
# ```
# As a visitor,
# when I visit a trip show,
# I see the average hiking distance
# ```
#
# ```
# As a visitor,
# when I visit a trip show,
# I see the longest hiking distance
# ```
#
# ```
# As a visitor,
# when I visit a trip show,
# I see the shortest hiking distance
# ```
#
# ```
# As a visitor,
# when I visit a trip show,
# I a list of names for each hike
