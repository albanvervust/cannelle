module ApplicationHelper
  def title
    base_title = "c-est-moi-qui-invite"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end
