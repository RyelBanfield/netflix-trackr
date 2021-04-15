module ReviewersHelper
  def checkForReviews(user)
    if user.reviews.length.zero?
      "No Recent Reviews."
    else
      link_to user.reviews.last.title, "/reviews/#{user.reviews.last.id}", class: 'link'
    end
  end
end
