module ApplicationHelper

  def default_title(default_title)
    content_for?(:title) ? content_for(:title) : default_title
  end

  def title(page_title)
    content_for(:title) { page_title }
  end

  def menu(menu)
    content_for(:menu) { '<div id="menu">' + menu + '</div>' }
  end


  def script_information(key, value)
    values = content_for(:script_variables)
    content_for(:script_variables) { values + raw('var '+key+' = "'+value+'";')}
  end

  def truncate(text, length = 30, truncate_string = "...")
    if text
      if text.length > length
         text = text[0..length]+truncate_string
      end
    end
    text
  end

end
