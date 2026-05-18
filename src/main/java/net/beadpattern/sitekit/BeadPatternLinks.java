package net.beadpattern.sitekit;

import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

/**
 * URL helpers for BeadPattern.
 */
public final class BeadPatternLinks {
    /** BeadPattern homepage. */
    public static final String BASE_URL = "https://beadpattern.net";

    private BeadPatternLinks() {
    }

    /**
     * Returns the BeadPattern homepage URL.
     *
     * @return homepage URL
     */
    public static String homeUrl() {
        return BASE_URL;
    }

    /**
     * Builds a BeadPattern tool URL from a path slug.
     *
     * @param slug tool path slug
     * @return tool URL
     */
    public static String toolUrl(String slug) {
        String clean = slug == null ? "" : slug.replaceAll("^/+|/+$", "");
        return clean.isEmpty() ? BASE_URL : BASE_URL + "/" + clean;
    }

    /**
     * Builds a BeadPattern search URL for a query.
     *
     * @param query search query
     * @return search URL
     */
    public static String searchUrl(String query) {
        return BASE_URL + "/search?q=" + URLEncoder.encode(query.trim(), StandardCharsets.UTF_8);
    }
}
