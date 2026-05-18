import unittest

import beadpattern_site_kit as links


class BeadPatternSiteKitTest(unittest.TestCase):
    def test_urls(self):
        self.assertEqual(links.home_url(), "https://beadpattern.net")
        self.assertEqual(
            links.tool_url("/photo-to-bead-pattern/"),
            "https://beadpattern.net/photo-to-bead-pattern",
        )
        self.assertEqual(
            links.search_url("perler beads"),
            "https://beadpattern.net/search?q=perler+beads",
        )


if __name__ == "__main__":
    unittest.main()
