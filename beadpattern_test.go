package beadpattern

import "testing"

func TestURLs(t *testing.T) {
	if HomeURL() != "https://beadpattern.net" {
		t.Fatalf("unexpected home URL: %s", HomeURL())
	}
	if ToolURL("/photo-to-bead-pattern/") != "https://beadpattern.net/photo-to-bead-pattern" {
		t.Fatalf("unexpected tool URL")
	}
	if ToolURL("") != "https://beadpattern.net" {
		t.Fatalf("unexpected empty tool URL: %s", ToolURL(""))
	}
	if SearchURL("perler beads") != "https://beadpattern.net/search?q=perler+beads" {
		t.Fatalf("unexpected search URL: %s", SearchURL("perler beads"))
	}
}
