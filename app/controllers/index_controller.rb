class IndexController < ApplicationController

  def index
    @assets = Listing.all
  end

end
