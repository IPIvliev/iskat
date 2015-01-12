# encoding: UTF-8

module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Социальная городская геолокационная игры 'АнтиГород'"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def is_active(action)       
    params[:action] == action ? "active" : nil        
  end

end