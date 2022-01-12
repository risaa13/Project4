

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page='views/layout/head.jsp'>
            <jsp:param name ="title" value="Create Incoming Transaction"/>
        </jsp:include>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.min.css" rel="stylesheet"/>
    </head>
    
    <body class="hold-transition sidebar-mini layout-fixed">
        <jsp:include page='views/layout/navbar.jsp'></jsp:include>
            
        <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Input Data Incoming Transaction</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index">Home</a></li>
              <li class="breadcrumb-item"><a href="incomingTransaction">Incoming Transaction</a></li>
              <li class="breadcrumb-item"><a href="#">Incoming Transaction Input</a></li>
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
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header"> Input Data Incoming Transaction</div>
              <!-- /.card-header -->
              <!-- form start -->
             
                <div class="card-body">
                     <form role="form" action="incomingTransactionCreate" method="POST">
			<div class="form-group">
                            <label>Branch</label>
                            <select class="form-control" type="text" name="party_id">
                            <c:forEach items="${party}" var="party">
                                <option value="${party.id}">${party.name}</option> 
                            </c:forEach>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Product</label>
                            <select class="form-control" type="text" name="product_id">
                            <c:forEach items="${product}" var="product">
                                <option value="${product.id}">${product.name}</option> 
                            </c:forEach>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Amount</label>
                            <input class="form-control" type="text" name="amount">
                        </div>
                        <div class="form-group">
                            <label>Date</label>
                            <input class="form-control" type="text" name="date" id="datepicker">
                        </div>
                        <div class="form-group">
                            <label>Type</label>
                            <input class="form-control" type="text" name="type" value="Incoming" readonly>
                        </div>
                        <div class="form-group">
                            <button class="btn btn-sm btn-primary">Submit</button>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
                <!-- /.card-body -->

                
             
            </div>
            <!-- /.card -->
            </div>
    </section>
        </div>
            <jsp:include page='views/layout/footer.jsp'></jsp:include>
        <jsp:include page='views/layout/scripts.jsp'></jsp:include>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.min.js"></script>
        <script type="text/javascript">
            $('#datepicker').datepicker({
                weekStart: 1,
                autoclose: true,
                todayHighlight: true,
                format: 'yyyy-mm-dd'
            });
            $('#datepicker').datepicker("setDate", new Date());
        </script>
    </body>
</html>
