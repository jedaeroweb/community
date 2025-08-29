xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title @application_name
    xml.author 'Sleeping-Lion'
    xml.description @meta_description
    xml.link t(:site_full_url)
    xml.language I18n.locale.to_s

    for article in @blogs
      xml.item do
        if article.title
          xml.title article.title
        else
          xml.title ''
        end
        xml.author  article.user.name
        xml.pubDate article.created_at.strftime("%a, %d %b %Y %H:%M:%S %z")
        xml.link t(:site_full_url)+ '/blogs/' + article.id.to_s
        xml.guid article.id

        text = article.content.to_plain_text
        # if you like, do something with your content text here e.g. insert image tags.
        # Optional. I'm doing this on my website.
        xml.description "<p>" + text + "</p>"
      end
    end

    for article in @questions
      xml.item do
        if article.title
          xml.title article.title
        else
          xml.title ''
        end
        xml.author article.user.name
        xml.pubDate article.created_at.strftime("%a, %d %b %Y %H:%M:%S %z")
        xml.link t(:site_full_url)+ '/questions/' + article.id.to_s
        xml.guid article.id

        text = article.content.to_plain_text
		# if you like, do something with your content text here e.g. insert image tags.
		# Optional. I'm doing this on my website.
        xml.description "<p>" + text + "</p>"
      end
    end

    for article in @talks
      xml.item do
        if article.title
          xml.title article.title
        else
          xml.title ''
        end
        xml.author article.user.name
        xml.pubDate article.created_at.strftime("%a, %d %b %Y %H:%M:%S %z")
        xml.link t(:site_full_url)+ '/talks/' + article.id.to_s
        xml.guid article.id

        text = article.content.to_plain_text
		# if you like, do something with your content text here e.g. insert image tags.
		# Optional. I'm doing this on my website.
        xml.description "<p>" + text + "</p>"
      end
    end

  end
end
