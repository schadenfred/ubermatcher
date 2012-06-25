module ApplicationHelper

  def title
    base_title = "UberMatcher"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title} "
    end
  end

  def logo
    base_logo = "MerciboQ!"
    if @subdomain_logo.nil?
      base_logo
    else
      "#{@subdomain_logo}.merciboq.com"
    end
  end

  def full_title(page_title)
    base_title = "UberMatcher"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

end
