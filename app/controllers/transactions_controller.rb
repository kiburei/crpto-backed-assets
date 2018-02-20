class TransactionsController < ApplicationController
  # before_action :set_listing, :only[:listing_to_user]

  def listing_to_user
    # deduct from listing and add to user
    value = transaction_params[:value].to_f
    @listing = Listing.find(transaction_params[:from])
    @user = User.find(transaction_params[:to])
    @listing.update(equity: @listing.equity - value)
    @user.update(balance: @user.balance + value)
    redirect_to root_path
  end

  private

  def set_listing
    @listing = Listing.params[:id]
  end

  def transaction_params
    params.permit(:to, :from, :value)
  end

end
