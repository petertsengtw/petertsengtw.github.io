---
# 標題帶上姓名：這頁是人名查詢最主要的落地頁，h1 只寫「關於我」等於浪費一次識別機會。
title: "關於曾建瑋 Peter Tseng"
# 需要自己的描述；沿用站台預設的話，搜尋摘要會跟首頁一模一樣。
description: "曾建瑋（Peter Tseng）：任職花蓮慈濟醫院，從事網站管理、數位服務與系統整合，就讀國立東華大學資訊工程學系碩士在職專班。個人網站記錄 AI、程式開發與生活隨筆。"
permalink: /about/
layout: single
author_profile: true
toc: true
toc_label: "目錄"
---

你好，我是曾建瑋（Peter Tseng），在花蓮慈濟醫院工作，也在花蓮生活。

我的職涯不是從資訊工程起步的。教育計畫、政府專案、跨機關交流、行政管理都做過，習慣先看現實裡卡住的流程，再想辦法用程式、系統整合和 AI 把它變成真的能跑的工具。我在意的不是技術能做什麼，而是它有沒有解決問題。

## 我的工作

我在[花蓮慈濟醫院](https://hlm.tzuchi.com.tw/home/)負責網站管理、數位服務與系統整合。2024 年起，同時在國立東華大學資訊工程學系碩士在職專班進修。

## 我做過的東西

### 醫療資料與 AI

- [口腔癌篩檢異常預測](https://github.com/petertsengtw/Oral-Cancer-Screening-Abnormality-Prediction)：以人口特徵、生活習慣風險因子與歷次篩檢紀錄，用機器學習預測篩檢是否出現異常。資料來自花蓮慈濟醫院四癌篩檢資料庫（去識別化，原始資料不進版控）。
- [粉專留言風險偵測](https://github.com/petertsengtw/Facebook-fan-page-comment-output-and-risk-content-detection)：整合 Facebook Graph API、SQLite、規則篩選與 LLM 分類，從 14,664 則留言中標記出 776 則需要關注的內容。保留人工複核，不自動刪除或隱藏。（[開發紀錄](/ai/2026/08/20/comment-risk-detection.html)）
- [智慧醫療輿情助理](/ai/2025/12/08/TZUCHI_ai_news.html)：用 Groq + Llama 3.1 做醫院新聞輿情監測，含爬蟲、風險評分與自動摘要。
- [圖書館 AI 客服](https://github.com/petertsengtw/REG-TZUCHI-Library)：用 RAG 讓醫院圖書館的常見問題自己回答。
- [花蓮縣長參選人 AI 語音對談實驗](https://github.com/petertsengtw/hualien-candidates-voice-ai)：結合 Claude、Whisper 與 MiniMax，支援文字、語音與多角色對談，優先引用政見資料並標示出處。實驗原型，AI 回答不代表候選人本人發言。（[開發紀錄](/ai/2026/10/04/hualien-candidates-voice-ai.html)）

### 建院四十週年

- [紀念網站](https://hlm.tzuchi.com.tw/anniversary/)：純 HTML/CSS/JS，含開場動畫與特刊互動翻頁書。（[開發紀錄](/project/2026/03/31/ai_anniversary_40th.html)、[原始碼](https://github.com/petertsengtw/tzuchi_hospital-40th)）
- [攝影比賽評分系統](https://rate-photo.petertseng.me)：FastAPI + SQLite，評審匿名互不可見、投稿者資訊全程隔離，另設計了破同分規則。（[設計過程](/diary/2026/07/09/photo-contest.html)、[原始碼](https://github.com/petertsengtw/rate-photo)）
- [活動攝影預約系統](https://photography-booking-5d7b5.web.app/)：React + TypeScript + Firestore，十分鐘一個時段、跨裝置即時同步，含預約統計與 CSV 匯出。（[原始碼](https://github.com/petertsengtw/photography-booking)）

### 流程自動化與系統整合

- [Lotus Notes 自動化與跨系統整合](https://github.com/petertsengtw/lotusnotes-com-tools)：串接 Lotus Notes、Joomla、LINE 與 Firebase，做新聞稿自動上稿、特約商店查詢、職工福利公告與線上申請。
- [Word 轉 Joomla](https://github.com/petertsengtw/doc-to-joomla)：Word 轉 HTML、自動提取圖片上傳，直接接上 Joomla。
- [繁體中文 PDF 校稿工具](https://github.com/petertsengtw/chinese-proofreader)：自動判斷橫書直書，呼叫 Claude API 抓錯別字並產出校稿報告。
- [自動簽到](https://github.com/petertsengtw/Automatic-check-in-via-visual-recognition)：用電腦視覺配合 GUI 自動化，跑完每天的 Lotus Notes 簽到流程。
- [颱風門診公告產生器](/diary/2026/07/10/typhoon.html)：上傳 Excel 自動產生 HTML 公告。
- [公共傳播室網站](https://petertsengtw.github.io/hlm-pc/)：對外形象頁，加上 Joomla 教學文件、傳播成效儀表板與圖片轉 WebP 工具。（[原始碼](https://github.com/petertsengtw/hlm-pc)）
- [多版本 Web Server 環境](https://github.com/petertsengtw/tc_taichung_web)：用 Docker 讓 PHP 7.4 和 8.3 的 Joomla 站並存，由 Nginx Proxy Manager 依 domain 分流。
- [LINE LIFF 訂購與管理系統](https://github.com/petertsengtw/liff-egg-ordering-system)：LINE LIFF 當入口，Flask + Firestore + ECPay，含庫存、分批出貨、操作紀錄與後台報表。

### 在學校寫的

- [文獻分析助手](https://github.com/petertsengtw/paper-analyzer)：上傳論文 PDF，用本機 Ollama + Qwen2.5 產出繁中摘要與優缺點，也能多篇比較。
- [HackMD 筆記同步](https://github.com/petertsengtw/hackmd-sync)：把雲端筆記整批抓成本地 `.md`。
- [AI 猜圖小遊戲](https://github.com/petertsengtw/ai_pictionary)：Flask + Gemini，你在畫布上畫，它用繁中猜。

### 其他

醫院的[大愛溯源館 360° 環景](https://hlm.tzuchi.com.tw/vr/museum.html)與[電視牆播放系統](https://github.com/petertsengtw/Tzu-Chi-museum-tv-broadcast-system)、[2024 醫療科技展環景](https://hlm.tzuchi.com.tw/home/index.php/expo2024-vr)、重陽敬老禮金資格驗證系統，以及[玉里協天宮](https://github.com/petertsengtw/Yuli_Xietian)官網。

## 研究與學習

在東華資工所修電腦網路、資料探勘、人工智慧與資訊安全。研究方向是 AI 輔助醫療假訊息查證與詐騙辨識：從疑似詐騙內容擷取宣稱、查找可信證據、交叉驗證，並評估判斷品質與實際可行性。

AI 輔助開發已經是日常，但完成一個專案不等於理解它。所以除了用 AI 加快開發，我也在慢慢建立自己分析、設計、測試與除錯的能力。

## 在這之前

2000 到 2008 年，我在新竹青草湖社區大學負責行政與學生資訊系統，也帶過國際志工計畫。

2009 年進花蓮慈濟醫院癌症中心，做國家癌症防治計畫的癌症篩檢管理系統，把散落在紙本和各窗口的篩檢流程收攏成能追蹤、提醒、回報的系統，並用 HIS 資料分析轉介成功率、設計獎勵機制提高篩檢率。這套系統拿到 2018 年醫學中心組癌症篩檢創意金獎，以及智慧化癌症篩檢的 SNQ 國家品質標章。

2019 到 2022 年在花蓮縣政府社會處負責智慧福利服務躍升計畫，也做了花蓮縣長 LINEBOT，讓縣民不用打電話就能查社福資訊。2022 年底回到慈濟醫院。

## 這個部落格

這裡有技術筆記（AI Agent、LLM 應用、開發環境設定，多半是邊學邊記），也有生活隨筆（跑步、家人、電影、想不通的事）。之後會多寫旅行、地方、歷史與文化，想法寫在[〈讀一些書，走一些路〉](/diary/2026/08/16/reading-and-walking.html)。

## 找我

對醫療場域的 AI 應用或這裡的任何內容有興趣，歡迎從左側的社群連結找我。
