require 'rails_helper'

describe SearchFacade do
  context ".fetch_member_data" do
    it "can fetch member data" do
      member_data = SearchFacade.fetch_member_data("Fire+Nation")
      expect(member_data.last).to be_a(Member)
      expect(member_data.last.name).to be_a(String)
      expect(member_data.last.photo).to be_a(String)
      expect(member_data.last.allies).to be_an(Array)
      expect(member_data.last.enemies).to be_an(Array)
    end
  end
end
