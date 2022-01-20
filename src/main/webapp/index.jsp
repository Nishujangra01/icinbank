
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ICIN Bank</title>
          <%@include file="component/common_css_js.jsp" %>
          <link rel="stylesheet" href="style.css">
          <style>
              @import url("https://fonts.googleapis.com/css?family=Rancho&effect=shadow-multiple");
              .navbar
{
  font-size: larger;
  font-family: 'Lato', sans-serif;
  color:grey;
  font-weight: bold;
}

body{
    margin: 0;
    padding: 0;
 
}
section{
    width: 100%;
    min-height: 600px;
    min-width: 100%;
    height: 100%;
    background-position: center;
    background-size: 100% 100%;
    
}

.wave{
    position: relative;
    background: linear-gradient(90deg,#f0027f,#75489f);
        
}
.wave:before{
    
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 150px;
    background: cover;
    background-repeat: no-repeat;
    
}
.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

              
          </style>
          
    </head>
    <body >
         <%@include file="component/navbar.jsp" %>
         
         <section class="wave" ></section>
         <div class="centered">
         <h1 class="font-effect-shadow-multiple"  style="color:yellow;">Welcome ICIN Bank!!!</h1>
         </div>
    </body>
</html>
