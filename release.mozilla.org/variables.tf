# release.mozilla.org configuration

variable "github_token" {}

variable "service_name" {
  default = "webops-release-mozilla-org"
}

variable "source_repository" {
  type    = "map"
  default = {
    "https_url"   = "https://github.com/mozilla/release-blog.git",
    "owner"       = "mozilla"
    "name"        = "release-blog"
    "branch"      = "gh-pages"
  }
}

variable "website_domains" {
  type    = "list"
  default = [
    "release-new.hartnell.me"
  ]
}

variable "description" {
  default = "The Mozilla Release blog"
}

variable "build_container" {
  default = "jekyll/jekyll:latest"
}
