# Local-dev shim for Ruby >= 3.2 (we run Ruby 4.0 via Homebrew):
# the taint API was removed, but liquid 4.0.3 (pinned by the github-pages
# gem) still calls String#tainted? during rendering.
# GitHub Pages builds with --safe and ignores _plugins/, so this shim only
# affects local `jekyll serve` and has no effect on the deployed site.
class Object
  def tainted? = false
  def taint = self
  def untaint = self
end
