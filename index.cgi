require 'cgi'
require 'xml/xslt'

xslt = XML::XSLT.new()
xslt.xml = "xml/book.xml"
xslt.xsl = "xsl/index.xsl"
cgi = CGI.new

xslt.parameters = {"keyword" => cgi["keyword"], 'random' => "#{rand(100000)}"}
out = xslt.serve()
print cgi.header("text/html; charset=UTF-8")
print out