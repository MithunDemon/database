

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<html>
    <body>
        
        <h2>successfully your data is stored
       
        </h2>
        <%
            
            String n = request.getParameter("fname");
            String p = request.getParameter("pass");
            Connection con;
            Statement s;
            ResultSet rs;
            String sql;
            
            try
            {
         
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3309/login","root","msr");
            s = con.createStatement();
            
           sql="insert into logg values('"+n+"','"+p+"')";
            s.executeUpdate(sql);
            
          
            }
            catch(Exception e)
            {
                out.println(e);
                
            }
            
                    
            %>
    </body>
</html>
