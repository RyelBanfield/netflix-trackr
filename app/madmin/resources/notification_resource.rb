class NotificationResource < Madmin::Resource
  # Attributes
  attribute :id, form: false
  attribute :type
  attribute :params
  attribute :read_at
  attribute :created_at, form: false
  attribute :updated_at, form: false

  # Associations
  attribute :recipient
end
