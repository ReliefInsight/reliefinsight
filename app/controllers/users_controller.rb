class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @user = User.find(params[:id])
    case @user.type
    when "Requester"
      @requests = @user.requester_product_relations
    when "Donor"
      @contributes = @user.donor_product_relations
    end
  end

  def create_request
    @user = User.find(params[:request][:requester_id])
    @user.requester_product_relations.create(product_id: params[:request][:product_id], amount: params[:request][:amount])
    redirect_to user_path(@user)
  end

  def destroy_request
    @user = User.find(params[:requester_id])
    @user.requester_product_relations.destroy(params[:id])
    redirect_to user_path(@user)
  end

  def create_contribute
    @user = User.find(params[:contribute][:donor_id])
    @user.donor_product_relations.create(product_id: params[:contribute][:product_id], amount: params[:contribute][:amount])
    redirect_to user_path(@user)
  end

  def destroy_contribute
    @user = User.find(params[:donor_id])
    @user.donor_product_relations.destroy(params[:id])
    redirect_to user_path(@user)
  end
end
