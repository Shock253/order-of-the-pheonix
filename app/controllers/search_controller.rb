class SearchController < ApplicationController
  def index
    @members = PotterService.new.search_pheonix_members(params[:house])
  end
end
