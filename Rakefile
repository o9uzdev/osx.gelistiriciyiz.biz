# -*- encoding: utf-8 -*-
require "bundler/setup"
require "date"
require "stringex"

DATE_FORMAT = "%Y-%m-%d"
NOW = Time.now.strftime(DATE_FORMAT)

task :default => ["preview"]

desc "Ön izleme / geliştirme sunucusu"
task :preview do
  system "middleman"
end

desc "Deploy"
task :deploy do
  system "rm -rf build/"
  system "middleman deploy"
end

desc "Yeni yazı ekle"
task :post, :post_title, :post_date do |t, args|
  post_title = args[:post_title] ? args[:post_title] : "yeni-post"
  post_date = args[:post_date] ? Date.parse(args[:post_date]) : Time.now.strftime("%b %d, %Y %H:%M")
  post_file = "source/posts/#{NOW}-#{post_title.to_url}.md"

  output = []
  output << "---"
  output << "title: #{post_title}"
  output << "date: #{post_date}"
  output << "# tags: tag1,tag2"
  output << "# subtitle: "
  output << "# published: false"
  output << "# cover: "
  output << "# author:"
  output << "#   name: "
  output << "#   email:"
  output << "#   link:"
  output << "#   bio:"
  output << "---"
  File.write post_file, output.join("\n")

  puts "Yeni post edit edilmek için hazır: #{post_file}"
end