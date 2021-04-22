# frozen_string_literal: true

module ActiveStorage
  class VariantRecordResource < Madmin::Resource
    # Attributes
    attribute :id, form: false
    attribute :variation_digest
    attribute :image, index: false

    # Associations
    attribute :blob
  end
end
