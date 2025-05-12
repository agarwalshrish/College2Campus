<html>
<head><title>Database Connection Example</title></head>
<body>

<%@ include file = "connection/dbconnect" %>
<%

    Connection conn = getConnection();
    Statement stmt = null;
    ResultSet rs = null;

    stmt = conn.createStatement();

    // Execute Query
    rs = stmt.executeQuery("SELECT USERNAME, PASSWORD(`PASSWORD`) PASSWORD FROM admin");

    // Process Result Set
    while(rs.next()) {
        out.println("Name: " + rs.getString("PASSWORD") + "<br>");
    }

%>

</body>
</html>
