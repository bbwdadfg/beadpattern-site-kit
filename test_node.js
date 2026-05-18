const assert = require("node:assert/strict");
const links = require("./index");

assert.equal(links.homeUrl(), "https://beadpattern.net");
assert.equal(links.toolUrl("/photo-to-bead-pattern/"), "https://beadpattern.net/photo-to-bead-pattern");
assert.equal(links.searchUrl("perler beads"), "https://beadpattern.net/search?q=perler+beads");
