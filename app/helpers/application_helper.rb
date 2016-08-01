module ApplicationHelper

	def tel_to(text)
  		groups = text.to_s.scan(/(?:^\+)?\d+/)
  		link_to text, "tel:#{groups.join ' '}"
	end

  def full_title(page_title)
    base_title = 'We Buy Any Stairlift'
    if page_title.empty?
      base_title
    else
      page_title
    end
  end

  def meta_description(description)
    base_description = 'Welcome to We Buy Any Stairlift. Have your stairlift professionally removed quickly and efficiently.'
    if description.empty?
      base_description
    else
      description
    end
  end

end
