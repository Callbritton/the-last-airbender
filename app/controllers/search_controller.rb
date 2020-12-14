class SearchController < ApplicationController
  def index
    nation = params[:nation].split('_').join('+')
    @members = SearchFacade.fetch_member_data(nation)
  end
end
