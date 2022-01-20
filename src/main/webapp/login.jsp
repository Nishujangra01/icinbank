
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login - ICIN Bank</title>
         <%@include file="component/common_css_js.jsp" %>
         <style>
               .navbar
{
  font-size: larger;
  font-family: 'Lato', sans-serif;
  color:grey;
  font-weight: bold;
}
         </style>
    </head>
    <body style="background-color:powderblue;">
         <%@include file="component/navbar.jsp" %>
        <div class="cona    8tainer">
            
            <div class="row">
                <div class="col-md-6 offset-md-3">
                <div class="card mt-3">
                <div class="card-header custom-bg text-black">
                     <%@include file="component/message.jsp" %>
                    <h3>Login here</h3>
                <div class="card-body">
                
                    <form action="LoginServlet" method="POST">
  <div class="form-group">
    <label for="email">User Name </label>
    <input name ="email" type="text" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter username">
   
  </div>
  <div class="form-group">
    <label for="password">Password</label>
    <input name="password" type="password" class="form-control" id="password" placeholder="Password">
  </div>
                       
                     <div class="container text-center">
                          <button type="submit" class="btn btn-primary">Submit</button>
                     </div>
</form>
                
           
                
                
            </div>
                
                
            </div>
                
                
            </div>
            
            
        </div>
        
        
        
        
    </body>
</html>
