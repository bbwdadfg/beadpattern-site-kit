package net.beadpattern.sitekit;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

class BeadPatternLinksTest {
    @Test
    void buildsUrls() {
        assertEquals("https://beadpattern.net", BeadPatternLinks.homeUrl());
        assertEquals(
            "https://beadpattern.net/photo-to-bead-pattern",
            BeadPatternLinks.toolUrl("/photo-to-bead-pattern/")
        );
        assertEquals(
            "https://beadpattern.net/search?q=perler+beads",
            BeadPatternLinks.searchUrl("perler beads")
        );
    }
}
