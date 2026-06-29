# petertseng0517.github.io

曾建瑋的部落格，用 [Jekyll](https://jekyllrb.com/) + [minimal-mistakes](https://github.com/mmistakes/minimal-mistakes) 主題，部署在 GitHub Pages。

## 環境需求

- Ruby（建議跟 `Gemfile.lock` 一致的版本，3.3+）
- Bundler

第一次使用，或換了一台電腦，先安裝套件：

```bash
bundle install
```

## 本機預覽

寫文章時想先看渲染後的樣子：

```bash
bundle exec jekyll serve
```

啟動後在瀏覽器打開 `http://localhost:4000`。按 `Ctrl+C` 結束。

## 寫新文章

1. 在 `_posts/` 底下新增檔案，檔名格式固定是 `YYYY-MM-DD-slug.md`，例如：

   ```
   _posts/2026-06-25-proofreader.md
   ```

2. 檔案開頭要有 front matter，可以照抄其他文章的格式：

   ```yaml
   ---
   title: "文章標題"
   date: 2026-06-25 09:00:00 +0800
   categories: diary
   tags: [diary, 小說, ai]
   header:
     og_image: /assets/images/xxx.jpg
     teaser: /assets/images/xxx.jpg
   ---
   ```

3. 圖片放在 `assets/images/`，再用 `![說明](/assets/images/xxx.jpg)` 或在 front matter 的 `og_image` / `teaser` 引用。

4. 想先不公開的草稿，放在 `_posts/private/`（這個目錄已經被 `.gitignore` 排除，不會被推上去）。

## 產生社群分享文案草稿

文章寫完後，可以用這個小工具自動產生一段分享用的文案（標題、開頭鉤子、連結、hashtag）：

```bash
ruby bin/share_draft.rb                          # 預設抓 _posts 裡日期最新的一篇
ruby bin/share_draft.rb _posts/2026-06-25-proofreader.md   # 或指定某一篇
```

## 發布

這個 repo 推到 `main` 之後，GitHub Actions 會自動 build 並部署到 GitHub Pages（看 `.github/workflows/jekyll.yml`），**不需要手動 build 或 deploy**。流程大概是：

```bash
git status                       # 看看改了什麼、加了什麼新檔案
git add <檔案路徑>                # 把新文章、新圖片加進去（不要用 -A，避免不小心加進不該上傳的東西）
git commit -m "說明這次改了什麼"
git push origin main
```

push 完之後，到 GitHub repo 的 **Actions** 分頁可以看 build 進度，幾分鐘後網站就會更新。
