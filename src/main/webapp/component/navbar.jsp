<%@page import="entity.User"%>

<% 
User user1=(User)session.getAttribute("current-user");

%>

<nav class="navbar navbar-expand-lg sticky-top navbar-dark bg-primary">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">ICIN Bank</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
    
     
      
      
    </ul>
      <ul class="navbar-nav ml-auto">
          
          <% 
if (user1==null) {
        %>
         <li class="nav-item active">
        <a class="nav-link" href="login.jsp">Login </a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="login.jsp">About Us </a>
      </li>
          <%
    }else{
             %>
               <li class="nav-item active">
        <a class="nav-link" href="user.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
              <li class="nav-item active">
        <a class="nav-link" href="user.jsp"> Welcome <%= user1.getUsername() %> </a>
      </li>
          <li class="nav-item active">
        <a class="nav-link" href="LogoutServlet">Logout </a>
      </li>
             <%
              }
           %>
         
      </ul>
  </div> 
    </div>
</nav>