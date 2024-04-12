module ApplicationHelper

  def formatter_break_line(object)
    object.gsub("\n", "<br>").html_safe
  end
end
