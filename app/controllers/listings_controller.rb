class ListingsController < ApplicationController

  def create
    @listing = Listing.new(listing_params)
    respond_to do |format|
      if @listing.save
        format.html { redirect_to root_path, notice: "New asset #{@listing.name} added" }
      else
        format.html { redirect_to root_path, notice: "Error adding asset #{@listing.name}" }
      end
    end
  end

  private

  def listing_params
    params.permit(:name, :equit)
  end

end
