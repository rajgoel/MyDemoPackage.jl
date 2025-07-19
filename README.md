# MyDemoPackage.jl

[![Run tests](https://github.com/rajgoel/MyDemoPackage.jl/actions/workflows/tests.yml/badge.svg)](https://github.com/rajgoel/MyDemoPackage.jl/actions/workflows/tests.yml)

This repository contains a simple Julia module. It shows how Github Actions can be used to automatically run tests and deploy documentation.

## Deploy documentation

For the documentation to be deployed on Github Pages, follow these steps:

### 1. Generate SSH Keys and Repository Secrets

```julia
import Pkg
Pkg.add("Documenter")
Pkg.add("DocumenterTools")

using DocumenterTools
DocumenterTools.genkeys()
```

This generates an ssh key and a repository secret.

### 2. Add Deploy Key to GitHub
- Go to your GitHub repository → Settings → Deploy keys
- Title: `Documenter`
- Value: paste your ssh key
- Click: Allow write access
- Click: Add key

### 3. Add Secret to GitHub Actions
- Go to your GitHub repository → Settings → Secrets and variables → Actions
- Click New repository secret
- Name: `DOCUMENTER_KEY`
- Value: paste your secret

### 4. Run the Documentation Workflow
- Go to your GitHub repository → Actions
- Select "Create documentation" workflow
- Trigger the workflow by re-running it or pushing a commit to the main branch

### 5. Configure GitHub Pages Deployment
- Go to your your GitHub repository  → Settings → Pages
- Under Build and deployment, set:
  - Source: Deploy from a branch
  - Branch: `gh-pages`
  - Folder: `/ (root)`
- Click Save.
- Wait a few seconds. Your documentation will be available at:
  `https://<your-username>.github.io/<your-repo-name>/`

## Badges

In your `README.md` make sure that username and repository are correct. 
