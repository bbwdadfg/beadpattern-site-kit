const BASE_URL = "https://beadpattern.net";

function homeUrl() {
  return BASE_URL;
}

function toolUrl(slug = "") {
  const clean = String(slug).replace(/^\/+|\/+$/g, "");
  return clean ? `${BASE_URL}/${clean}` : BASE_URL;
}

function searchUrl(query) {
  return `${BASE_URL}/search?q=${encodeURIComponent(String(query)).replace(/%20/g, "+")}`;
}

module.exports = {
  BASE_URL,
  homeUrl,
  toolUrl,
  searchUrl
};
