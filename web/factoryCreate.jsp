

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page='views/layout/head.jsp'>
            <jsp:param name ="title" value="Create Factory Information"/>
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
            <h1>Input Data Supplier</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index">Home</a></li>
              <li class="breadcrumb-item"><a href="factory">Supplier</a></li>
              <li class="breadcrumb-item"><a href="factoryCreate">Supplier Input</a></li>
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
              <div class="card-header"> Input Data Supplier</div>
              <!-- /.card-header -->
              <!-- form start -->
             
                <div class="card-body">
                     <form role="form" action="factoryCreate" method="POST">
					 <div class="form-group">
                    <label for="exampleInputId">Supplier Name</label>
                    <input type="text" name="name" class="form-control" required>
                  </div>
					 <div class="form-group">
                    <label for="exampleInputAddress">Address</label>
                    <input type="text" name="address" class="form-control" required>
                  </div>
				  <div class="form-group">
                    <label for="exampleInputCity">City</label>
                    <input type="text" name="city"  class="form-control" required>
                  </div>
					<div class="form-group">
                    <label for="exampleInputZip">Zip</label>
                    <input type="number" name="zip" min="0" class="form-control" required>
                  </div>
					<div class="form-group">
                    <label for="exampleInputContact">Contact</label>
                    <input type="text" name="contact" class="form-control" required>
                  </div>
					<div class="form-group">
                        <label>Note</label>
                        <textarea class="form-control" name="note" rows="3" required></textarea>
                      </div>
                         <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
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
    </body>
</html>
