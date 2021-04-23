# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :masqueradable, :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable,
         :omniauthable

  has_one_attached :avatar
  has_person_name

  has_many :notifications, as: :recipient
  has_many :services

  has_many :reviews

  has_friendship

  def on_friendship_created(friendship); end

  def on_friendship_accepted(friendship); end

  def on_friendship_blocked(friendship); end

  def on_friendship_destroyed(friendship); end
end
