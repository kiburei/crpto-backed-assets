class IndexController < ApplicationController

  def index
    @assets = Listing.all
    @users = User.all
  end

end
