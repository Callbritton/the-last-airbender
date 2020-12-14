class SearchController < ApplicationController
  def index
    nation = params[:nation].split('_').join('+')
    conn = Faraday.new(url: 'https://last-airbender-api.herokuapp.com')
    response = conn.get("/api/v1/characters?affiliation=#{nation}")
    parsed_data = JSON.parse(response.body, symbolize_names: true)

    def fetch_member_data(parsed_data)
      parsed_data.map do |data|
        Member.new(data)
      end
    end

    @members = fetch_member_data(parsed_data)
  end
end
