require 'rails_helper'

context 'As a visitor' do
  describe 'when I visit the trips index,' do
    describe 'and I click a link to a trip show,' do
      before(:each) do
        @trip = create(:trip)
        @trail_1 = create(:trail, length: 5)
        @trail_2 = create(:trail, length: 2)
        @trail_3 = create(:trail, length: 4)
        create(:trail_trip, trail: @trail_1, trip: @trip)
        create(:trail_trip, trail: @trail_2, trip: @trip)
        create(:trail_trip, trail: @trail_3, trip: @trip)
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

      scenario 'I see the planned total hiking distance' do
        visit trip_path(@trip)

        expect(page).to have_content("Total Hiking Distance: #{11}")
      end

      scenario 'I see the average hiking distance' do
        visit trip_path(@trip)

        expect(page).to have_content("Average Hiking Distance: #{3.67}")
      end
    end
  end
end



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
