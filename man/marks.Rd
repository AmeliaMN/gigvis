\name{marks}
\alias{mark_arc}
\alias{mark_area}
\alias{mark_image}
\alias{mark_line}
\alias{mark_rect}
\alias{mark_symbol}
\alias{mark_text}
\alias{marks}
\title{Vega mark properties.}
\usage{
  mark_symbol(...)

  mark_image(...)

  mark_arc(...)

  mark_area(...)

  mark_line(...)

  mark_rect(...)

  mark_text(...)
}
\arguments{
  \item{x}{The first (typically left-most) x-coordinate.}

  \item{x2}{The second (typically right-most)
  x-coordinate.}

  \item{width}{The width of the mark (if supported).}

  \item{y}{The first (typically top-most) y-coordinate.}

  \item{y2}{The second (typically bottom-most)
  y-coordinate.}

  \item{height}{The height of the mark (if supported).}

  \item{opacity}{The overall opacity.}

  \item{fill}{The fill color.}

  \item{fillOpacity}{The fill opacity}

  \item{stroke}{The stroke color.}

  \item{strokeWidth}{The stroke width, in pixels.}

  \item{strokeOpacity}{The stroke opacity.}

  \item{size}{[symbol] The pixel area of the symbol. For
  example in the case of circles, the radius is determined
  in part by the square root of the size value.}

  \item{shape}{[symbol] The symbol shape to use. One of
  circle (default), square, cross, diamond, triangle-up, or
  triangle-down (symbol only)}

  \item{innerRadius}{[arc] The inner radius of the arc, in
  pixels.}

  \item{outerRadius}{[arc] The outer radius of the arc, in
  pixels.}

  \item{startAngle}{[arc] The start angle of the arc, in
  radians.}

  \item{endAngle}{[arc] The end angle of the arc, in
  radians.}

  \item{interpolate}{[area, line] The line interpolation
  method to use. One of linear, step-before, step-after,
  basis, basis-open, cardinal, cardinal-open, monotone.}

  \item{tension}{[area, line] Depending on the
  interpolation type, sets the tension parameter.}

  \item{url}{[image] The URL from which to retrieve the
  image.}

  \item{align}{[image, text] The horizontal alignment of
  the object. One of left, right, center.}

  \item{baseline}{[image, text] The vertical alignment of
  the object. One of top, middle, bottom.}

  \item{text}{[text] The text to display.}

  \item{dx}{[text] The horizontal margin, in pixels,
  between the text label and its anchor point. The value is
  ignored if the align property is center.}

  \item{dy}{[text] The vertical margin, in pixels, between
  the text label and its anchor point. The value is ignored
  if the baseline property is middle.}

  \item{angle}{[text] The rotation angle of the text, in
  degrees.}

  \item{font}{[text] The typeface to set the text in (e.g.,
  Helvetica Neue).}

  \item{fontSize}{[text] The font size, in pixels.}

  \item{fontWeight}{[text] The font weight (e.g., bold).}

  \item{fontStyle}{[text] The font style (e.g., italic).}
}
\description{
  These functions define the properties that that each vega
  mark has. To each of this you can assign any property
  (\code{\link{prop}}) either locally (i.e. in the mark
  function), or in a parent \code{\link{node}}. There are
  many available property types to choose from:
  \code{\link{variable}} and \code{\link{constant}} are the
  most commonly used.
}

