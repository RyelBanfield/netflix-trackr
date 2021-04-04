class ServiceResource < Madmin::Resource
  # Attributes
  attribute :id, form: false
  attribute :provider
  attribute :uid
  attribute :access_token
  attribute :access_token_secret
  attribute :refresh_token
  attribute :expires_at
  attribute :auth
  attribute :created_at, form: false
  attribute :updated_at, form: false

  # Associations
  attribute :user
end
