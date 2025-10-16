module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Last Generation Last Days"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  # Returns flash messages in tailwind style
  def flash_class_for(flash_type)
    case flash_type.to_sym
    when :notice
      "bg-blue-100 border border-blue-400 text-blue-700"
    when :alert, :error
      "bg-red-100 border border-red-400 text-red-700"
    when :success
      "bg-green-100 border border-green-400 text-green-700"
    else
      "bg-gray-100 border border-gray-400 text-gray-700"
    end
  end

end
