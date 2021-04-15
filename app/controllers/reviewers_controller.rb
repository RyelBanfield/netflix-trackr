class ReviewersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
    @reviews = @user.reviews
  end
end
