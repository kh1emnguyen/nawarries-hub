# Push to GitHub Pages — 3 steps

Open PowerShell, `cd` to this folder, then run:

```powershell
# One-time setup (first push only)
cd "C:\Users\Register\Documents\KhiemVault\Second Brain\Skills\lenexa-ops-fleet\nawarries-hub"
git init
git branch -M main
git add -A
git commit -m "Initial nawarries-hub with BMSS pane"
git remote add origin https://github.com/kh1emnguyen/nawarries-hub.git
git push -u origin main
```

Then go to: https://github.com/kh1emnguyen/nawarries-hub/settings/pages
- Source: **Deploy from a branch**
- Branch: **main** / **/ (root)**
- Click Save

Your site will be live at: **https://kh1emnguyen.github.io/nawarries-hub**

---

## Refreshing BMSS data later

1. Run `python run_analysis.py` in the BMSS Order App folder
2. Copy the generated `data/*.json` files into this `data/` folder (overwrite)
3. Then:

```powershell
cd "C:\Users\Register\Documents\KhiemVault\Second Brain\Skills\lenexa-ops-fleet\nawarries-hub"
git add data/
git commit -m "Refresh BMSS data $(Get-Date -Format 'yyyy-MM-dd')"
git push
```

GitHub Pages will update within ~60 seconds.
