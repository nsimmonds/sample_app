module ApplicationHelper
  # Returns the full title on a per-page basis.
  # @param [Object] page_title
  def full_title(page_title)
    base_title = "Ruby on Rails Tutorial Sample App"
    unless page_title.empty?
      base_title += " | #{page_title}"
    end
    base_title
  end
end
