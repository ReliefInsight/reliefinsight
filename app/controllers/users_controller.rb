class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @user = User.find(params[:id])
    @requests = @user.requester_product_relations
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
end
