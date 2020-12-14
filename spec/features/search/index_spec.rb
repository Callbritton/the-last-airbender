require 'rails_helper'

feature "User can get detailed member info for a given nation" do

  scenario "User selects Fire Nation, is redirected to /search, and sees member info" do
    visit '/'

    select "Fire Nation", from: :nation

    click_button 'Search For Members'

    expect(current_path).to eq("/search")

    expect(page).to have_content("Total Members: 20")

    within(first('.member')) do
      expect(page).to have_content("Chan (Fire Nation admiral)")
      expect(page).to have_content("Affiliation: Fire Nation Navy")
      expect(page).to have_content("Allies: Ozai")
      expect(page).to have_content("Enemies: Earth Kingdom")
    end
  end
end
