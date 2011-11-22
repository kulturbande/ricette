module ApplicationHelper

  def default_title(default_title)
    content_for?(:title) ? content_for(:title) : default_title
  end

  def title(page_title)
    content_for(:title) { page_title }
  end

end
