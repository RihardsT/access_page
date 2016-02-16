module ApplicationHelper
  def full_title(page_title)
    if admin_login?
      base_title = "Room access|Admin"
    elsif logged_in?
      base_title = "Room access|User"
    else
      base_title = "Room access"
    end
    unless page_title.nil?
      if page_title.empty?
        base_title
      else
        "#{base_title}|#{page_title}"
      end
    end
  end
end
