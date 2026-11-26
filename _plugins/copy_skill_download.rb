# frozen_string_literal: true

require "fileutils"

# The skill file carries its own YAML front matter. Jekyll would otherwise
# render it as a page, so _config.yml excludes it and this hook publishes the
# original bytes at the download path.
Jekyll::Hooks.register :site, :post_write do |site|
  relative = "assets/skills/paper-figure-code/SKILL.md"
  source = File.join(site.source, relative)
  next unless File.file?(source)

  destination = File.join(site.dest, relative)
  FileUtils.mkdir_p(File.dirname(destination))
  FileUtils.cp(source, destination)

  html_page = File.join(site.dest, "assets/skills/paper-figure-code/SKILL.html")
  FileUtils.rm_f(html_page) if File.file?(html_page)
end
