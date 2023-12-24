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

  add talks_path, :priority => 0.9, :changefreq => 'weekly'

  Talk.find_each do |talk|
    add talk_path(talk), :lastmod => talk.updated_at
  end
end
