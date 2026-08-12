#!/bin/bash
# Cleanup script for jvzhu/Python-Fundamentals
# Run this from a local clone of the repo (or clone fresh first):
#   git clone https://github.com/jvzhu/Python-Fundamentals.git
#   cd Python-Fundamentals

set -e

# 1. Create a notes/ subfolder and move the personal summary files into it
mkdir -p notes
git mv D-Lab-GitHub-Org-Summary.md notes/D-Lab-GitHub-Org-Summary.md
git mv Python-Fundamentals-Summary.md notes/Python-Fundamentals-Summary.md
git mv Python-Fundamentals-Aug17-2026-Registration.md notes/Python-Fundamentals-Aug17-2026-Registration.md

# 2. Remove the duplicate registration file (keep the non-numbered one, which has the confirmed details)
git rm Python-Fundamentals-Aug17-2026-Registration-2.md

# 3. Commit and push
git add -A
git commit -m "Organize personal notes into notes/ folder, remove duplicate registration file"
git push origin main
