using Documenter
using MyDemoPackage

makedocs(
    sitename = "MyDemoPackage",
    format = Documenter.HTML(),
    modules = [MyDemoPackage]
)

# Documenter can automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.
deploydocs(
  repo = "https://github.com/$(ENV["GITHUB_REPOSITORY"]).git",
  devbranch = "main"
)
