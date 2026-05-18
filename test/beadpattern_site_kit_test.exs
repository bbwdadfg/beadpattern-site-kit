defmodule BeadpatternSiteKitTest do
  use ExUnit.Case

  test "builds BeadPattern URLs" do
    assert BeadpatternSiteKit.home_url() == "https://beadpattern.net"
    assert BeadpatternSiteKit.tool_url("/photo-to-bead-pattern/") ==
             "https://beadpattern.net/photo-to-bead-pattern"

    assert BeadpatternSiteKit.search_url("perler beads") ==
             "https://beadpattern.net/search?q=perler+beads"
  end
end
