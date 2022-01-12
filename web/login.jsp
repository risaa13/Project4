

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page='views/layout/head.jsp'>
            <jsp:param name="title" value="Login Page"></jsp:param>
        </jsp:include>
        
    </head>
    <body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
      <a href="#"><img src="dist/img/logo-text-left-200.png" width="300" height="100"/></a>
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg"><b>Admin</b> Inventory </p>
      <% if(request.getAttribute("alert") != null) { %>
                        <div class="alert alert-danger">
                            <% out.print(request.getAttribute("alert")); %>
                        </div>
                    <% } %>
      <form action="login" method="post">
        <div class="input-group mb-3">
          <input type="text" class="form-control" placeholder="Username" name="username" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" class="form-control" placeholder="Password" name="password" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <!-- /.col -->
          <div class="col-4">
            <button type="submit" class="btn btn-primary btn-block">Sign In</button>
          </div>
          <!-- /.col -->
        </div>
      </form>
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->=
</html>

