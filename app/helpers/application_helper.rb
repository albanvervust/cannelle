module ApplicationHelper
  def title
    base_title = "j-invite-ce-soir"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end
