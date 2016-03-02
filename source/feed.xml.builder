xml.instruct!
xml.feed "xmlns" => "http://www.w3.org/2005/Atom" do
  site_url = config[:site][:production_url]
  xml.title config[:site][:title]
  xml.subtitle config[:site][:subtitle] if config[:site][:subtitle]
  xml.id URI.join(site_url, blog.options.prefix.to_s)
  xml.link "href" => URI.join(site_url, blog.options.prefix.to_s)
  xml.link "href" => URI.join(site_url, current_page.path), "rel" => "self"
  xml.updated(blog.articles.first.date.to_time.iso8601) unless blog.articles.empty?
  xml.author { xml.name config[:site][:main_author][:name] }

  blog.articles[0..10].each do |article|
    xml.entry do
      xml.title article.title
      xml.link "rel" => "alternate", "href" => URI.join(site_url, article.url)
      xml.id URI.join(site_url, article.url)
      xml.published article.date.to_time.iso8601
      xml.updated File.mtime(article.source_file).iso8601
      article_author = config[:site][:main_author][:name]
      if article.metadata[:page]["author"]
        article_author = article.metadata[:page]["author"]["name"] if article.metadata[:page]["author"]["name"]
      end
      xml.author { 
        xml.name article_author
      }
      xml.summary article.summary, "type" => "html"
      # xml.content article.body, "type" => "html"
    end
  end
end