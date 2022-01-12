

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page='views/layout/head.jsp'>
            <jsp:param name ="title" value="Factory"/>
        </jsp:include>
    </head>
    <body class="hold-transition sidebar-mini layout-fixed">
            <jsp:include page='views/layout/navbar.jsp'></jsp:include>
            
            <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Data Supplier</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index">Home</a></li>
              <li class="breadcrumb-item"><a href="factory">Factory</a></li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <!-- Default box -->
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Factory</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                    <i class="fas fa-minus"></i></button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                    <i class="fas fa-times"></i></button>
                </div>
              </div>
             <div class="card-body">
                 <a class="btn btn-sm btn-success" 
                href="${pageContext.request.contextPath}/factoryCreate">
                Input
                </a>
                <table id="example2" class="table table-bordered table-hover">
                  <thead>
                  <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Address</th>
                    <th>City</th>
                    <th>Zip</th>
                    <th>Contact</th>
		    <th>Note</th>
		    <th>Action</th>
                  </thead>
                  <tbody>
                    <c:forEach items="${data}" var="item">
                                <tr>
                                    <td><p>${item.id}</p></td>
                                    <td><p>${item.name}</p></td>
                                    <td><p>${item.address}</p></td>
                                    <td><p>${item.city}</p></td>
                                    <td><p>${item.zip}</p></td>
                                    <td><p>${item.contact}</p></td>
                                    <td><p>${item.note}</p></td>
                                    <td>
                    <a class="btn btn-sm btn-primary" 
                                           href="${pageContext.request.contextPath}/factoryEdit?id=${item.id}">
                                            Edit
                                        </a>
                                        <a class="btn btn-sm btn-danger" 
                                           href="${pageContext.request.contextPath}/factoryDelete?id=${item.id}">
                                            Delete
                                            </td>
                  </tr>
                   </c:forEach>
                  </table>
	
               
  <!-- Control Sidebar -->
  </div>
                </div>
                </div>
                </div>
                </div>
            </section>
                </div>
                
            <jsp:include page='views/layout/footer.jsp'></jsp:include>
        <jsp:include page='views/layout/scripts.jsp'></jsp:include>
        
    </body>
</html>
