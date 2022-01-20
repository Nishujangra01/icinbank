<%@page import="entity.User"%>

<% 
User user3=(User)session.getAttribute("current-user");

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
    background: linear-gradient(-45deg, white 30%, lightgreen 0%);
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
       


<!-- Modal -->

<div class="modal fade" id="withdrawModel" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
      <form action="Model" method="POST">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Enter amount to withdraw :-</h5>
        
      </div>
      <div class="modal-body">
        <input name ="amount" type="number" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter amount">
   
      </div>
      <div class="modal-footer">
        <button type="submit" name="check" class="btn btn-secondary" value="closeWithdraw" >Close</button>
        <button type="submit" name="check" class="btn btn-primary" value="submitWithdraw">Submit</button>
      </div>
    </div>
             </form> 
  </div>
</div>
      
          
          
          <ul>
              
               <button type="submit" name="check" class="btn btn-outline-secondary btn-lg" value="checkBalance">Check Balance</button>
              <button type="submit" name="check" class="btn btn-outline-success btn-lg" value="withdraw" data-toggle="modal" data-target="#withdrawModel">With Draw</button>
              <button type="submit" name="check" class="btn btn-outline-danger btn-lg" value="fundTransfer">Fund Transfer</button>
              <button type="submit" name="check" class="btn btn-outline-warning btn-lg" value="deposit" data-toggle="modal" data-target="#depositModel">Deposit</button>
             
              
          </ul>
          
          <div class="content">
              <section id="section1">
               <h1 class="font-effect-shadow-multiple"> Your Balance is - ₹ <%= user3.getBalance() %> </h1>
              </section>
              </div>
          
    </body>
</html>

    </body>
</html>
