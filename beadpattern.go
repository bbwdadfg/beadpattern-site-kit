// Package beadpattern provides stable links for https://beadpattern.net.
package beadpattern

import (
	"net/url"
	"strings"
)

const BaseURL = "https://beadpattern.net"

func HomeURL() string {
	return BaseURL
}

func ToolURL(slug string) string {
	clean := strings.Trim(slug, "/")
	if clean == "" {
		return BaseURL
	}
	return BaseURL + "/" + clean
}

func SearchURL(query string) string {
	values := url.Values{}
	values.Set("q", query)
	return BaseURL + "/search?" + values.Encode()
}
