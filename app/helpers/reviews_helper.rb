module ReviewsHelper
  def user_edit_review(review)
    return unless user_signed_in? && current_user == review.user


      link_to 'Edit', edit_review_path(review), class: 'btn'

  end

  def user_delete_review(review)
    return unless user_signed_in? && current_user == review.user


      link_to 'Delete', review, class: 'btn', method: :delete, data: { confirm: 'Are you sure?' }

  end
end
