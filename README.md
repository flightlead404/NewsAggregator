# 📰 Morning News Dashboard

A beautiful, intelligent news aggregation dashboard featuring glassmorphism design, smart AI-powered categorization, and seamless RSS feed integration. Your personalized morning reading experience starts here.

![Version](https://img.shields.io/badge/version-2.9.0-blue)
![License](https://img.shields.io/badge/license-MIT-green)
![HTML5](https://img.shields.io/badge/HTML5-orange)
![CSS3](https://img.shields.io/badge/CSS3-blue)
![JavaScript](https://img.shields.io/badge/JavaScript-yellow)

## 🌟 Overview

The Morning News Dashboard is a single-page application that aggregates news from multiple RSS sources, intelligently categorizes content, and presents it in a stunning glassmorphism interface. No backend required - runs entirely in your browser with all preferences and stories cached locally.

**Perfect for:** Daily news consumption, research, staying informed across multiple topics, and anyone who wants a beautiful, personalized news experience without algorithm-driven feeds.

---

## ✨ Key Features

### 📡 **Intelligent RSS Aggregation**
- Multi-source RSS feed fetching with dual fallback system (RSS2JSON + AllOrigins)
- Concurrent loading for maximum speed
- Automatic retry logic and graceful degradation
- Support for both RSS and Atom feed formats

### 🧠 **Smart Categorization**
- AI-powered content classification using multi-factor scoring
- Source-based routing (highest priority)
- Keyword matching in titles and excerpts
- Automatic tag generation
- Single-category assignment for clean organization

### 🎨 **Glassmorphism Design**
- Beautiful frosted glass UI with customizable transparency
- 20px backdrop blur for premium aesthetic
- Responsive design for desktop, tablet, and mobile
- Smooth animations and hover effects
- Dark mode compatible

### 🖼️ **Custom Backgrounds**
- Upload personal images (Base64 storage)
- Adjustable gradient overlay (0-100% opacity)
- Fixed attachment for parallax effect
- Supports JPG, PNG, GIF, WebP formats

### 🔄 **Auto-Refresh System**
- Configurable intervals (5-60 minutes)
- Silent background updates
- Visual feedback for manual refreshes
- Smart caching prevents unnecessary API calls

### 📌 **Sticky Stories**
- Stories cached in localStorage
- Instant page load with cached content
- Background refresh after page load
- Offline viewing capability

### 🎯 **Drag & Drop Interface**
- Reorder categories by dragging
- Visual feedback during drag operations
- Persistent custom ordering
- Touch-friendly for tablets

### ⚙️ **Comprehensive Settings**
- **Appearance Controls:**
  - Card/button opacity (5-50%)
  - Background overlay opacity (0-100%)
  - Background image upload
  
- **Display Preferences:**
  - Stories per category (5-50)
  - Stories per feed (5-25)
  - Auto-refresh interval (5-60 min)
  
- **Category Management:**
  - Add custom categories with emoji icons
  - Remove unwanted categories
  - Full category descriptions
  
- **Source Management:**
  - Manual RSS source addition
  - Quick setup with 30+ curated sources
  - Source organization by category

---

## 🚀 Quick Start

### Installation

```bash
# Clone the repository
git clone https://github.com/YOUR_USERNAME/NewsAggregator.git
cd NewsAggregator

# Open in browser (that's it!)
open index.html
```

### First-Time Setup

1. **Open `index.html`** in your web browser
2. **Click ⚙️ Settings** (top-left corner)
3. **Click "📰 Add Recommended Sources"** button
4. **Click "🔄 Refresh Stories"** to fetch initial news
5. **Done!** Your dashboard is ready

---

## 📋 Default Categories

| Icon | Category | Description |
|------|----------|-------------|
| 🚨 | **Breaking News** | Latest urgent updates and developing stories |
| 🇺🇸 | **US Politics** | American government, elections, and policy |
| 🌍 | **World Events** | International politics and global developments |
| 💰 | **Financial** | Markets, investing, and economic analysis |
| 🔐 | **Cyber Security** | InfoSec threats and industry developments |
| ₿ | **Cryptocurrency** | Bitcoin, blockchain, and digital assets |
| 🤖 | **AI** | Artificial intelligence and machine learning |
| 😊 | **Positive News** | Uplifting and heartwarming stories |

---

## 🎨 Customization Guide

### Appearance

**Background Images**
- Upload via Settings → Appearance
- Recommended: 1920x1080, under 2MB
- Adjust overlay opacity for readability

**Card Opacity**
- 5-15%: Maximum transparency
- 20-30%: Balanced (default)
- 35-50%: Better text contrast

### Categories

**Adding Custom Categories**
1. Settings → Manage Categories
2. Enter name, emoji icon, description
3. Click "Add Category"

**Reordering**
- Simply drag and drop category cards
- Order persists automatically

---

## 📰 RSS Source Management

### Quick Setup (Recommended)

Click **"📰 Add Recommended Sources"** to instantly add 30+ curated sources including:
- Reuters, AP, BBC, NPR, PBS
- Al Jazeera, Bloomberg, MarketWatch
- Krebs on Security, CoinDesk, MIT Tech Review

### Manual Addition

1. Find RSS feed URL (look for 📡 icon on news sites)
2. Settings → Manage News Sources
3. Enter source name, URL, and category
4. Click "Add Source"

### Recommended Sources

**Breaking News:**
- Reuters: `https://feeds.reuters.com/reuters/breakingNews`
- AP: `https://feeds.feedburner.com/ap-breaking-news`

**US Politics:**
- Reuters: `https://feeds.reuters.com/reuters/politicsNews`
- NPR: `https://feeds.npr.org/1014/rss.xml`

**World News:**
- BBC: `http://feeds.bbci.co.uk/news/world/rss.xml`
- Al Jazeera: `https://www.aljazeera.com/xml/rss/all.xml`

See [docs/RSS_SOURCES.md](docs/RSS_SOURCES.md) for complete list.

---

## 🔧 Technical Details

### Architecture

- **Frontend Only** - Pure HTML, CSS, JavaScript (ES6+)
- **No Backend** - Runs entirely in browser
- **localStorage** - Persistent configuration and caching
- **RSS2JSON API** - Primary RSS conversion
- **AllOrigins** - Fallback CORS proxy

### Data Flow

```
Page Load → Load Config → Display Cached Stories
    ↓
Fetch RSS Feeds (background) → Parse & Categorize
    ↓
Update UI → Cache Stories → Auto-refresh Loop
```

### Smart Categorization

Multi-factor scoring system:
1. **Source match** (100 points) - Highest priority
2. **Title keywords** (20 points each) - High weight
3. **Content keywords** (10 points each) - Medium weight
4. **Priority tiebreaker** - Breaking news ranks highest

Result: Single best-fit category per story

### Storage Schema

```javascript
localStorage = {
  newsConfigVersion: "2.9.0",
  newsCategories: { /* category objects */ },
  newsSources: { /* source arrays */ },
  categoryOrder: [ /* ordered IDs */ ],
  userPreferences: { /* all settings */ },
  cachedStories: { /* story objects */ },
  cacheTimestamp: 1234567890
}
```

---

## 🌐 Browser Compatibility

| Browser | Version | Status |
|---------|---------|--------|
| Chrome/Edge | 90+ | ✅ Recommended |
| Firefox | 88+ | ✅ Full support |
| Safari | 14+ | ✅ Full support |
| Mobile Safari | iOS 14+ | ✅ Responsive |
| Chrome Mobile | Android 90+ | ✅ Touch-optimized |

**Required Features:**
- ES6+ JavaScript
- CSS backdrop-filter
- localStorage, fetch, FileReader APIs

---

## 🎯 Usage Tips

### Daily Workflow

1. Open bookmarked dashboard
2. Cached stories display instantly
3. Fresh content loads in background
4. Scan category counts to prioritize
5. Auto-refresh keeps content current

### Performance Tips

**Faster Loading:**
- Reduce stories per feed (5-10)
- Limit stories per category (10-20)
- Increase auto-refresh interval

**Maximum Coverage:**
- Increase stories per feed (15-25)
- More stories per category (30-50)
- Add multiple sources per category

### Mobile Usage

- Add to Home Screen for app-like experience
- Use higher card opacity (25-30%) for readability
- Adjust auto-refresh for data usage
- Portrait mode optimal for reading

---

## 🐛 Troubleshooting

**No stories loading:**
- Check internet connection
- Verify RSS feed URLs
- Try removing and re-adding sources
- Check browser console (F12)

**Slow performance:**
- Reduce story counts
- Clear localStorage cache
- Check background image size
- Reduce number of sources

**Background image not showing:**
- Ensure image <2MB
- Try different format
- Clear localStorage and re-upload

---

## 🤝 Contributing

Contributions welcome! Please:

1. Fork repository
2. Create feature branch
3. Make changes and test
4. Submit pull request

**Reporting Issues:**
Include browser version, steps to reproduce, and console errors.

---

## 📄 License

MIT License - see [LICENSE](LICENSE) file for details.

---

## 🙏 Acknowledgments

- **RSS2JSON & AllOrigins** for API services
- **News Organizations** providing free RSS feeds
- **Community** for feedback and contributions

---

## 📞 Support

- **Issues:** GitHub Issues
- **Discussions:** GitHub Discussions
- **Documentation:** [docs/](docs/) folder

---

## 🎉 Version History

**v2.9.0** - Card opacity control, glassmorphism refinements
**v2.8.0** - Glassmorphism design implementation
**v2.7.0** - Custom background images
**v2.6.0** - Sticky stories and auto-refresh
**v2.5.0** - Live RSS fetching

---

**Made with ☕ and 📰 for better mornings**

*Last Updated: September 2025*