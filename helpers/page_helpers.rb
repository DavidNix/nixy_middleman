module PageHelpers

  def page_author(current_page = nil)
    current_page.data.author || ENV['SITE_AUTHOR']
  end

  def page_title(current_page = nil)
    current_page.data.title || ENV['SITE_TITLE']
  end

  def page_meta_description(current_page = nil)
    current_page.data.meta_description || ENV['DEFAULT_META_DESCRIPTION']
  end

	def copyright_years(start_year)
    end_year = Date.today.year
    if start_year == end_year
      start_year.to_s
    else
      start_year.to_s + '-' + end_year.to_s
    end
	end

end