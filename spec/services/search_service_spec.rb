require 'rails_helper'

describe SearchService do
  context ".get_members" do
    it "returns the member of a designated nation" do
      search_service = SearchService.get_members("Fire+Nation")

      expect(search_service).to be_a(Array)
      expect(search_service.first).to be_a(Hash)
      expect(search_service.count).to eq(20)

      first_result = search_service[0]
      expect(first_result).to have_key(:_id)
      expect(first_result[:_id]).to be_a(String)
      expect(first_result).to have_key(:name)
      expect(first_result[:name]).to be_a(String)
      expect(first_result).to have_key(:allies)
      expect(first_result[:allies]).to be_a(Array)
      expect(first_result).to have_key(:enemies)
      expect(first_result[:enemies]).to be_a(Array)
    end
  end
end
