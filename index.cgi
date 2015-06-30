#!/usr/bin/env ruby
# encoding: utf-8

require 'cgi'
require 'xml/xslt'

xslt = XML::XSLT.new()
cgi = CGI.new

xslt.xml = 'xml/book.xml'
xslt.xsl = 'xsl/index.xsl'

xslt.parameters = {'random' => "#{rand(100000)}"}
document = xslt.serve()

puts cgi.header 'text/html; charset=UTF-8'
puts document