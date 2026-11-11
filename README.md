# denisarnaud.com (Personal Website)

Personal website of **Denis Arnaud** — Data Architecture, Travel Tech & Revenue Management, Open Source & Humanities essays.

Published at: [https://denisarnaud.com](https://denisarnaud.com) (and GitHub Pages mirror).

## 🚀 Quick Start

Built with [Hugo](https://gohugo.io/).

```bash
# Start local development server with hot reload
make serve

# Build production static site
make build

# Deploy to GitHub (triggers automated GitHub Pages build & deploy)
make deploy
```

## 📁 Repository Structure

- `content/` : Markdown sources in French (`.fr.md`) and English (`.en.md`)
  - `tech/` : Data engineering, Open Source ecosystem, academic research
  - `humanities/` : Essays (*Syracuse*, *Mike*, *Le Réel*)
  - `ecosystem/` : Hub of 30+ public external profiles
- `layouts/` : Custom semantic HTML5 templates
- `static/` : Pure CSS theme, JS toggle, and CNAME
- `.github/workflows/deploy.yml` : GitHub Actions workflow deploying to GitHub Pages
