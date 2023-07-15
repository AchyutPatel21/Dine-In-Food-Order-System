<%@page import="java.util.Random"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add to cart</title>
    </head>
    <body>

 
        
        
        
        <%
            
            String input = request.getParameter("p");
         
            int selectedID = 0;

            try {
                selectedID = Integer.parseInt(request.getParameter("p"));

            } catch (NumberFormatException ex) {
                out.println("Ilegal input");
            }
 

            
            try {

                Class.forName("com.mysql.jdbc.Driver");

                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/foodorderdb", "root", "");

                Statement st = con.createStatement();
                ResultSet rs;
                PreparedStatement ps;

                int order_id;
                String order_id_key = new String("order id");

                if (session.getAttribute("order_id_key") == null) {
                    order_id = new Random().ints(1, 100).findFirst().getAsInt();
                    session.setAttribute("order_id_key", order_id);
                }
                
                order_id = (Integer) session.getAttribute("order_id_key");
                

                if ((selectedID >= 1) && (selectedID <= 8)) {
                    rs = st.executeQuery("select * from food where food_id='" + selectedID + "'");
                    
                    rs.next();

                    int food_id = rs.getInt(1);
                    String food_name = rs.getString(2);
                    int food_price = rs.getInt(3);
                    out.println("FOOD ADDED TO CART " + food_name);
                    out.println("Order_id" + order_id);

                    session.setAttribute("food_id_key", food_id);
                    session.setAttribute("food_name_key", food_name);
                    session.setAttribute("food_price_key", food_price);

                    ps = con.prepareStatement("insert into foodorder values(?,?,?,?)");

                    
                    int totalPrice = food_price;
                    

                    ps.setInt(1, order_id);
                    ps.setInt(2, food_id);
                    ps.setInt(3, 1);
                    ps.setInt(4, totalPrice);

                    
                    ps.executeUpdate();
                    
                    response.sendRedirect("Welcome.jsp");
    
                } else if ((selectedID >= 9) && (selectedID <= 103)) {
                    rs = st.executeQuery("select * from drinks where drink_id='" + selectedID + "'");

                    rs.next();

                    int drink_id = rs.getInt(1);
                    String drink_name = rs.getString(2);
                    int drink_price = rs.getInt(3);

                    session.setAttribute("drink_id", drink_id);
                    session.setAttribute("drink_name", drink_name);
                    session.setAttribute("drink_price", drink_price);

                    ps = con.prepareStatement("insert into drinkorder values(?,?,?,?)");

                     
                    int totalPrice = drink_price;

                    ps.setInt(1, order_id);
                    ps.setInt(2, drink_id);
                    ps.setInt(3, 1);
                    ps.setInt(4, totalPrice);

                    ps.executeUpdate();
                    response.sendRedirect("Welcome.jsp");
                }
                Statement st1 = con.createStatement();
                Statement st2 = con.createStatement();
                ResultSet rs1 = st1.executeQuery("select count(*) as drinkno from drinkorder where order_id='" + order_id + "'");
                ResultSet rs2 = st2.executeQuery("select count(*) as foodno from foodorder where order_id='" + order_id + "'");
                rs1.next();
                rs2.next();
                int dno = rs1.getInt("drinkno");
                int fno = rs2.getInt("foodno");
                int no_of_items = dno + fno;
                out.println("Total rows " + no_of_items);
                session.setAttribute("no_of_items_key", no_of_items);
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>
