from urllib.parse import quote_plus

BASE_URL = "https://beadpattern.net"


def home_url() -> str:
    return BASE_URL


def tool_url(slug: str) -> str:
    clean = slug.strip("/")
    return BASE_URL if clean == "" else f"{BASE_URL}/{clean}"


def search_url(query: str) -> str:
    return f"{BASE_URL}/search?q={quote_plus(query)}"
