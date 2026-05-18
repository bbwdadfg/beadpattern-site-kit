<?php

declare(strict_types=1);

namespace BeadPattern\SiteKit;

final class BeadPatternLinks
{
    public const BASE_URL = 'https://beadpattern.net';

    public static function homeUrl(): string
    {
        return self::BASE_URL;
    }

    public static function toolUrl(string $slug): string
    {
        $clean = trim($slug, '/');
        return $clean === '' ? self::BASE_URL : self::BASE_URL . '/' . $clean;
    }

    public static function searchUrl(string $query): string
    {
        return self::BASE_URL . '/search?q=' . rawurlencode($query);
    }
}
