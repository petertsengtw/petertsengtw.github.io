source "https://rubygems.org"

gem "jekyll"

# 關鍵：加入這一行，讓本地端能直接存取 CSS 原始檔
gem "minimal-mistakes-jekyll"

group :jekyll_plugins do
  gem "jekyll-feed"
  gem "jekyll-sitemap"
  gem "jekyll-paginate"
  gem "jekyll-include-cache" # 這個主題強烈依賴這個外掛
  gem "jekyll-remote-theme"
  gem "jekyll-redirect-from" # 改檔名後讓舊網址轉到新網址
end

# Windows 系統可能需要這行，Mac 通常不需要，但留著無妨
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]