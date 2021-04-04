class UserResource < Madmin::Resource
  # Attributes
  attribute :id, form: false
  attribute :email
  attribute :encrypted_password
  attribute :reset_password_token
  attribute :reset_password_sent_at
  attribute :remember_created_at
  attribute :first_name
  attribute :last_name
  attribute :announcements_last_read_at
  attribute :admin
  attribute :created_at, form: false
  attribute :updated_at, form: false
  attribute :avatar, index: false

  # Associations
  attribute :notifications
  attribute :services
end
