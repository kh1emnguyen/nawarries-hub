# nawarries-hub

Operational dashboard hub — hosted at https://kh1emnguyen.github.io/nawarries-hub

## Structure
- `index.html` — hub landing page
- `bmss.html` — BMSS Order App (Bottlemart Sunshine)
- `data/` — pre-computed JSON from the BMSS Python backend

## Refreshing BMSS data
1. In the BMSS Order App folder, run `python run_analysis.py` (or the FastAPI backend)
2. Copy the generated `data/*.json` files into this repo's `data/` folder
3. Commit and push — GitHub Pages will serve the updated data automatically

## Deploying
Push this repo to `kh1emnguyen/nawarries-hub` on GitHub.
In repo Settings → Pages → Source: Deploy from branch → `main` → `/ (root)`.
