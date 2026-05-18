import 'package:test/test.dart';
import 'package:beadpattern_site_kit/beadpattern_site_kit.dart' as links;

void main() {
  test('builds BeadPattern URLs', () {
    expect(links.homeUrl(), 'https://beadpattern.net');
    expect(
      links.toolUrl('/photo-to-bead-pattern/'),
      'https://beadpattern.net/photo-to-bead-pattern',
    );
    expect(
      links.searchUrl('perler beads'),
      'https://beadpattern.net/search?q=perler+beads',
    );
  });
}
