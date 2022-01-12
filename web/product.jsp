

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page='views/layout/head.jsp'>
            <jsp:param name ="title" value="Product"/>
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
            <h1>Data Product</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index">Home</a></li>
              <li class="breadcrumb-item"><a href="product">Product</a></li>
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
                <h3 class="card-title">Branch</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                    <i class="fas fa-minus"></i></button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                    <i class="fas fa-times"></i></button>
                </div>
              </div>
             <div class="card-body">
                 <a class="btn btn-sm btn-success" 
                href="${pageContext.request.contextPath}/productCreate">
                Input
                </a>
                <table id="example2" class="table table-bordered table-hover">
                  <thead>
                  <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Size</th>
                    <th>Label</th>
                    <th>Type</th>
                    <th>Stock</th>
		    <th>Received</th>
		    <th>Shipped</th>
		    <th>Note</th>
		    <th>Action</th>
                  </thead>
                  <tbody>
                    <c:forEach items="${data}" var="item">
                                <tr>
                                    <td><p>${item.id}</p></td>
                                    <td><p>${item.name}</p></td>
                                    <td><p>${item.size}</p></td>
                                    <td><p>${item.label}</p></td>
                                    <td><p>${item.type}</p></td>
                                    <td><p>${item.stock}</p></td>
                                    <td><p>${item.received}</p></td>
                                    <td><p>${item.shipped}</p></td>
                                    <td><p>${item.note}</p></td>
                                    <td>
                                        <a class="btn btn-sm btn-primary" 
                                           href="${pageContext.request.contextPath}/productEdit?id=${item.id}">
                                            Edit
                                        </a>
                                        <a class="btn btn-sm btn-danger" 
                                           href="${pageContext.request.contextPath}/productDelete?id=${item.id}">
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                  </tbody>
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
