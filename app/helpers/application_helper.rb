module ApplicationHelper
  def item(tag, name, path, link_options = {})
    options = {}
    options[:class] = :active if current_page?(path)
    link = link_to(name, path, link_options)
    content_tag(:li, link, options)
  end

  def item_page(tag, page, link_options = {})
    path = page_path(page)
    item(tag, page, path, link_options)
  end

  def organizators_and_partners_content
    @organizators_and_partners ||= Page.find_by_uri('org')
    @organizators_and_partners.body if @organizators_and_partners
  end

end
