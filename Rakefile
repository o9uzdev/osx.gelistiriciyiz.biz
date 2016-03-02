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
task :post, :title do |t, args|
  title = args[:title] ? args[:title] : "yeni-post"
  post_file = "source/posts/#{NOW}-#{title.to_url}.md"
  
  output = []
  output << "---"
  output << "title: #{title}"
  output << "date: #{Time.now.strftime("%b %d, %Y %H:%M")}"
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