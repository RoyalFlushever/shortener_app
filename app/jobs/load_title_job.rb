require 'open-uri'

class LoadTitleJob < ApplicationJob
  queue_as :default

  def perform(id)
    link = Link.find_by(id: id)
    if link
      uri = URI.parse(link.url)
      uri.open { |f| parse_html(f, link) }
    end

  rescue OpenURI::HTTPRedirect => redirect
    redirect.uri.open { |f| parse_html(f, link) }
  end

  private

  def parse_html(f, link)
    doc = Nokogiri::HTML(f)
    link.update(title: doc.at_css('title').text)
  end
end