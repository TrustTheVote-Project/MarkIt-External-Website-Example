# MarkIt-External-Website-Example
A generator of static pages with content that the MarkIt app links out to.

The generator is template-based; it uses a simple XSLT stylesheet to merge a content sections into a basic page template.

## How to Use
1. Run `make` to generate a set of HTML files in the `dist/` directory.
2. Copy the HTML files to the production website on AWS.
