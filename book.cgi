#!/usr/bin/env ruby
# encoding: utf-8

require 'cgi'
require 'xml/xslt'

xslt = XML::XSLT.new()
cgi = CGI.new

xslt.xml = 'xml/book.xml'
xslt.xsl = 'xsl/book.xsl'

xslt.parameters = {'book_id' => cgi['id']}
document = xslt.serve()

print cgi.header 'text/html; charset=UTF-8'
print document