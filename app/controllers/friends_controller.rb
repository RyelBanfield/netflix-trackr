# frozen_string_literal: true

class FriendsController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.order('first_name ASC')
    @friends = current_user.friends
  end

  def show; end

  def new; end

  def create
    @requesting_user = current_user
    @receiving_user = User.find_by(id: params[:friend])
    unless @requesting_user.friends_with?(@receiving_user)
      @requesting_user.friend_request(@receiving_user)
      @receiving_user.accept_request(@requesting_user)
    end
    redirect_to '/friends'
  end

  def destroy
    @requesting_user = current_user
    @receiving_user = User.find_by(id: params[:friend])
    @requesting_user.remove_friend(@receiving_user) if @requesting_user.friends_with?(@receiving_user)
    redirect_to '/friends'
  end
end
