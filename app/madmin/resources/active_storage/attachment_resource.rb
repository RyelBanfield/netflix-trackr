# frozen_string_literal: true

module ActiveStorage
  class AttachmentResource < Madmin::Resource
    # Attributes
    attribute :id, form: false
    attribute :name
    attribute :created_at, form: false

    # Associations
    attribute :record
    attribute :blob
  end
end
