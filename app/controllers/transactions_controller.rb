class TransactionsController < ApplicationController
  # before_action :set_listing, :only[:listing_to_user]

  def listing_to_user
    # deduct from listing and add to user
    value = transaction_params[:value].to_f
    @listing = Listing.find(transaction_params[:from])
    @user = User.find(transaction_params[:to])
    if @listing.equity >= value
      @listing.update(equity: @listing.equity - value)
      @user.update(balance: @user.balance + value)
    else
      # rails error
    end
    redirect_to root_path
  end

  def user_to_listing
    value = transaction_params[:value].to_f
    @user = User.find(transaction_params[:from])
    @listing = Listing.find(transaction_params[:to])
    if @user.balance >= value
      @user.update(balance: @user.balance - value)
      @listing.update(equity: @listing.equity + value)
      redirect_to root_path
    else
      redirect_to error
    end
  end

  private

  def set_listing
    @listing = Listing.params[:id]
  end

  def transaction_params
    params.permit(:to, :from, :value)
  end

end
