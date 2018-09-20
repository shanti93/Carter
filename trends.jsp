<?xml version='1.0' encoding='windows-1252'?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="2.0"
          xmlns:cewolf="etc/cewolf.tld">
<jsp:output omit-xml-declaration="true" doctype-root-element="HTML"
            doctype-system="http://www.w3.org/TR/html4/loose.dtd"
            doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN"/>
<jsp:directive.page contentType="text/html;charset=windows-1252"/>

<script type="JavaScript" src="overlib.js"><!-- overLIB (c) Erik Bosrup --></script>
<html>
<body>
hello
<form action="hello" method = "GET">
    <input type="submit" value="Click this button to list all entries in locaiton table for country Germany" />
</form>
<form action="index.jsp">
    <input type="submit" value="Click this button to redirect to home page" />
</form>
</body>

</html>
</jsp:root>