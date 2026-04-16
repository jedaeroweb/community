# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://community.jedaeroweb.co.kr"

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:

  add blogs_path, :priority => 0.9, :changefreq => 'weekly'

  Blog.find_each do |blog|
    add blog_path(blog), :lastmod => blog.updated_at
  end

  add notices_path, :priority => 0.9, :changefreq => 'weekly'

  Notice.find_each do |notice|
    add notice_path(notice), :lastmod => notice.updated_at
  end

  add questions_path, :priority => 0.9, :changefreq => 'weekly'

  Question.find_each do |question|
    add question_path(question), :lastmod => question.updated_at
  end

  add markets_path, :priority => 0.9, :changefreq => 'weekly'

  Market.find_each do |market|
    add market_path(market), :lastmod => market.updated_at
  end

  add galleries_path, :priority => 0.9, :changefreq => 'weekly'

  Gallery.find_each do |gallery|
    add gallery_path(gallery), :lastmod => gallery.updated_at
  end

  add jobs_path, :priority => 0.9, :changefreq => 'weekly'

  Job.find_each do |job|
    add job_path(job), :lastmod => job.updated_at
  end

  add talks_path, :priority => 0.9, :changefreq => 'weekly'

  Talk.find_each do |talk|
    add talk_path(talk), :lastmod => talk.updated_at
  end

  Tag.find_each do |tag|
    taggings = tag.taggings.where(taggable_type: ["Blog", "Talk", "Question"])

    next if taggings.count < 5

    lastmod = {
      "Blog" => Blog,
      "Talk" => Talk,
      "Question" => Question
    }.map do |type, model|
      model.where(id: taggings.where(taggable_type: type).select(:taggable_id))
           .maximum(:updated_at)
    end.compact.max

    add tag_path(tag: tag.name),
        priority: 0.6,
        changefreq: 'weekly',
        lastmod: lastmod
  end
end
