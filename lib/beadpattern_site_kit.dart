const baseUrl = 'https://beadpattern.net';

String homeUrl() => baseUrl;

String toolUrl(String slug) {
  final clean = slug.replaceAll(RegExp(r'^/+|/+$'), '');
  return clean.isEmpty ? baseUrl : '$baseUrl/$clean';
}

String searchUrl(String query) {
  return '$baseUrl/search?q=${Uri.encodeQueryComponent(query).replaceAll('%20', '+')}';
}
