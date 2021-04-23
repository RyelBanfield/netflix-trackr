# frozen_string_literal: true

class ReviewersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.order('updated_at DESC')
  end

  def show
    @user = User.find_by(id: params[:id])
    @reviews = @user.reviews.order('rating DESC, created_at DESC')
  end
end
