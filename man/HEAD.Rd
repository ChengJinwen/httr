% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/http-head.r
\name{HEAD}
\alias{HEAD}
\title{Get url HEADers.}
\usage{
HEAD(url = NULL, config = list(), ..., handle = NULL)
}
\arguments{
\item{url}{the url of the page to retrieve}

\item{config}{Additional configuration settings such as http
authentication (\code{\link{authenticate}}), additional headers
(\code{\link{add_headers}}), cookies (\code{\link{set_cookies}}) etc.
See \code{\link{config}} for full details and list of helpers.}

\item{...}{Further named parameters, such as \code{query}, \code{path}, etc,
passed on to \code{\link{modify_url}}. Unnamed parameters will be combined
with \code{\link{config}}.}

\item{handle}{The handle to use with this request. If not
  supplied, will be retrieved and reused from the \code{\link{handle_pool}}
  based on the scheme, hostname and port of the url. By default \pkg{httr}
  requests to the same scheme/host/port combo. This substantially reduces
  connection time, and ensures that cookies are maintained over multiple
  requests to the same host. See \code{\link{handle_pool}} for more
  details.}
}
\description{
Get url HEADers.
}
\section{RFC2616}{

The HEAD method is identical to GET except that the server MUST NOT return
a message-body in the response. The metainformation contained in the HTTP
headers in response to a HEAD request SHOULD be identical to the
information sent in response to a GET request. This method can be used for
obtaining metainformation about the entity implied by the request without
transferring the entity-body itself. This method is often used for testing
hypertext links for validity, accessibility, and recent modification.

The response to a HEAD request MAY be cacheable in the sense that the
information contained in the response MAY be used to update a previously
cached entity from that resource. If the new field values indicate that the
cached entity differs from the current entity (as would be indicated by a
change in Content-Length, Content-MD5, ETag or Last-Modified), then the
cache MUST treat the cache entry as stale.
}
\examples{
HEAD("http://google.com")
headers(HEAD("http://google.com"))
}
\seealso{
Other http methods: \code{\link{BROWSE}};
  \code{\link{DELETE}}; \code{\link{GET}};
  \code{\link{VERB}}
}

