#!/usr/bin/env ruby
# 產生新文章的社群分享文案草稿（標題 + 開頭鉤子 + 連結 + hashtag）
#
# 用法：
#   ruby bin/share_draft.rb                          # 用 _posts 裡最新的一篇
#   ruby bin/share_draft.rb _posts/2026-06-18-xxx.md # 指定某一篇

require "yaml"
require "date"

SITE_URL = "https://petertsengtw.github.io"

def latest_post
  Dir.glob("_posts/*.md")
     .select { |f| File.basename(f) =~ /^\d{4}-\d{2}-\d{2}-/ }
     .max_by { |f| File.basename(f) }
end

def parse_post(path)
  content = File.read(path)
  _, front_matter, body = content.split(/^---\s*$/, 3)
  data = YAML.safe_load(front_matter, permitted_classes: [Date, Time])
  [data, body.to_s.strip]
end

# Jekyll 把沒加中括號、含空白的 categories 字串拆成多個分類（例如 "AI CLI" -> ["ai","cli"]）
def jekyll_categories(raw)
  return [] if raw.nil?
  arr = raw.is_a?(Array) ? raw : raw.to_s.split(/\s+/)
  arr.map { |c| c.to_s.downcase }
end

def post_url(path, data)
  basename = File.basename(path, ".md")
  date_str, slug = basename.match(/^(\d{4}-\d{2}-\d{2})-(.+)$/).captures
  year, month, day = date_str.split("-")
  cats = jekyll_categories(data["categories"])
  cat_path = cats.empty? ? "" : "#{cats.join('/')}/"
  "#{SITE_URL}/#{cat_path}#{year}/#{month}/#{day}/#{slug}.html"
end

# 取文章正文前兩行非空白文字，當作貼文的開頭鉤子
def hook(body)
  body.lines
      .map(&:strip)
      .reject(&:empty?)
      .reject { |line| line.start_with?("#", "![", "---") }
      .first(2)
      .join(" ")
end

def hashtags(data)
  tags = Array(data["tags"]) + jekyll_categories(data["categories"])
  tags.flatten.compact.map(&:to_s).map(&:strip).reject(&:empty?).uniq
      .map { |t| "##{t.gsub(/\s+/, '')}" }
      .join(" ")
end

path = ARGV[0] || latest_post
abort "找不到文章檔案，請確認 _posts/ 目錄或指定路徑" unless path && File.exist?(path)

data, body = parse_post(path)

puts <<~DRAFT
  ── 分享文案草稿 (#{File.basename(path)}) ──

  #{data["title"]}

  #{hook(body)}

  完整內容：#{post_url(path, data)}

  #{hashtags(data)}
DRAFT
