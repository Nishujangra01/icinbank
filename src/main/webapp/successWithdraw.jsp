<%@page import="entity.User"%>

<% 
User user2=(User)session.getAttribute("current-user");

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
         <%@include file="component/common_css_js.jsp" %>
         <style>
              @import url("https://fonts.googleapis.com/css?family=Rancho&effect=shadow-multiple");
               .navbar
{
  font-size: larger;
  font-family: 'Lato', sans-serif;
  color:grey;
  font-weight: bold;
}

ul li a{
    color: white;
    text-decoration: none;
    font-size: 20px;
    padding: 5px;
}


section{
    height: 80vh;
    width: 100vw;
    display: flex;
    align-items: center;
    justify-content: center;
    text-transform: uppercase;
}
.content{
    display: flex;
    width: 100%;
}
#section1{
    background: linear-gradient(-45deg, white 30%, yellow 0%);
}
form{
    display: block;
  width: 100%;
  border: none;
 padding: 14px 28px;
  font-size: 16px;
  cursor: pointer;
  text-align: center;
}

         </style>
         
    </head>
    <body>
          <%@include file="component/navbar.jsp" %>
       
          <form action="Operations" method="POST">
              
               <button type="submit" name="check" class="btn btn-outline-secondary btn-lg" value="checkBalance">Check Balance</button>
              <button type="submit" name="check" class="btn btn-outline-success btn-lg" value="withdraw" data-toggle="modal" data-target="#withdrawModel">With Draw</button>
              <button type="submit" name="check" class="btn btn-outline-danger btn-lg" value="fundTransfer">Fund Transfer</button>
              <button type="submit" name="check" class="btn btn-outline-warning btn-lg" value="deposit" data-toggle="modal" data-target="#depositModel">Deposit</button>
             
              
          </form>
          
          <div class="content">
              <section id="section1">
               <h1 class="font-effect-shadow-multiple"> 
                   ********************* Successfully Withdraw ********************* 
                   <br> <br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; Your Balance is - ₹ <%= user2.getBalance() %> </h1>
              </section>
              </div>
          
    </body>
</html>
