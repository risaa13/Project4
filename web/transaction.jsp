

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page='views/layout/head.jsp'>
            <jsp:param name ="title" value="Transaction"/>
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
            <h1>Data Transaction</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index">Home</a></li>
              <li class="breadcrumb-item"><a href="transaction">Transaction</a></li>
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
                <h3 class="card-title">Transaction</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                    <i class="fas fa-minus"></i></button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                    <i class="fas fa-times"></i></button>
                </div>
              </div>
             <div class="card-body">
                <table id="example2" class="table table-bordered table-hover">
                  <thead>
                  <tr>
                    <th>ID</th>
                    <th>Branch ID</th>
                    <th>Branch Name</th>
                    <th>Product ID</th>
                    <th>Product Name</th>
                    <th>Amount</th>
                    <th>Date</th>
                    <th>Type</th>
                  </thead>
                  <tbody>
                     <c:forEach items="${data}" var="item">
                                <tr>
                                    <td><p>${item.id}</p></td>
                                    <td><p>${item.party_id}</p></td>
                                    <td><p>${item.party_name}</p></td>
                                    <td><p>${item.product_id}</p></td>
                                    <td><p>${item.product_name}</p></td>
                                    <td><p>${item.amount}</p></td>
                                    <td><p>${item.date}</p></td>
                                    <td><p>${item.type}</p></td>
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
