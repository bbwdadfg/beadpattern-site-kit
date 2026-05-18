$LOAD_PATH.unshift(File.expand_path("lib", __dir__))
require "beadpattern/site_kit"

raise "home" unless BeadPattern::SiteKit.home_url == "https://beadpattern.net"
raise "tool" unless BeadPattern::SiteKit.tool_url("/photo-to-bead-pattern/") == "https://beadpattern.net/photo-to-bead-pattern"
raise "search" unless BeadPattern::SiteKit.search_url("perler beads") == "https://beadpattern.net/search?q=perler+beads"
