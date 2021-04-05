json.extract! review, :id, :title, :comment, :rating, :created_at, :updated_at
json.url review_url(review, format: :json)
