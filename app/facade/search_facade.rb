class SearchFacade
  def self.fetch_member_data(nation)
    parsed_data = SearchService.get_members(nation)
    parsed_data.map do |data|
      Member.new(data)
    end
  end
end
