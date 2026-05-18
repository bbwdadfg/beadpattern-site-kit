pub const BASE_URL: &str = "https://beadpattern.net";

pub fn home_url() -> &'static str {
    BASE_URL
}

pub fn tool_url(slug: &str) -> String {
    let clean = slug.trim_matches('/');
    if clean.is_empty() {
        BASE_URL.to_string()
    } else {
        format!("{BASE_URL}/{clean}")
    }
}

pub fn search_url(query: &str) -> String {
    format!("{BASE_URL}/search?q={}", query.replace(' ', "+"))
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn builds_links() {
        assert_eq!(home_url(), "https://beadpattern.net");
        assert_eq!(tool_url("/photo-to-bead-pattern/"), "https://beadpattern.net/photo-to-bead-pattern");
        assert_eq!(search_url("perler beads"), "https://beadpattern.net/search?q=perler+beads");
    }
}
