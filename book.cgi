require 'cgi'
require 'xml/xslt'

xslt = XML::XSLT.new()
xslt.xml = "xml/book.xml"
xslt.xsl = "xsl/book.xsl"
cgi = CGI.new

xslt.parameters = {"book_id" => cgi["id"]}
out = xslt.serve()
print cgi.header("text/html; charset=UTF-8")
print out