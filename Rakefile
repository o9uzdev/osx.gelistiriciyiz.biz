# -*- encoding: utf-8 -*-
require "bundler/setup"
require "date"
require "time"
require "stringex"

FILE_DATE_FORMAT = "%Y-%m-%d"
POST_DATE_FORMAT = "%b %d, %Y %H:%M"

NOW = Time.now.strftime(FILE_DATE_FORMAT)

task :default => ["preview"]

desc "Ön izleme / geliştirme sunucusu"
task :preview do
  system "middleman"
end

desc "Test için build"
task :build do
  system "rm -rf build/"
  system "middleman build --verbose"
end

desc "Deploy"
task :deploy do
  system "rm -rf build/"
  system "middleman deploy"
end

desc "Yeni yazı ekle"
task :post, [:post_title, :post_date] do |t, args|
  post_title = args[:post_title] ? args[:post_title] : "yeni-post"
  post_time = args[:post_date] ? Time.parse(args[:post_date]) : Time.now
  post_file = "source/posts/#{post_time.strftime(FILE_DATE_FORMAT)}-#{post_title.to_url}.md"

  output = []
  output << "---"
  output << "title: \"#{post_title}\""
  output << "date: #{post_time.strftime(POST_DATE_FORMAT)}"
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