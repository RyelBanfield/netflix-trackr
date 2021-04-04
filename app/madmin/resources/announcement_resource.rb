class AnnouncementResource < Madmin::Resource
  # Attributes
  attribute :id, form: false
  attribute :published_at
  attribute :announcement_type
  attribute :name
  attribute :description
  attribute :created_at, form: false
  attribute :updated_at, form: false

  # Associations
end
