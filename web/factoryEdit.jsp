

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page='views/layout/head.jsp'>
            <jsp:param name ="title" value="Edit Factory Information"/>
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
            <h1>Edit Data Supplier</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index">Home</a></li>
              <li class="breadcrumb-item"><a href="factory">Supplier</a></li>
              <li class="breadcrumb-item"><a href="#">Supplier Edit</a></li>
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
              <div class="card-header">Edit Data Supplier</div>
              <!-- /.card-header -->
              <!-- form start -->
             
                <div class="card-body">
                     <form role="form" action="factoryEdit" method="POST">
                         <input type="hidden" name="id" value="${factory.id}">
                        <div class="form-group">
                            <label>Suppliar Name</label>
                            <input class="form-control" type="text" name="name" 
                                   value="${factory.name}" required>
                        </div>
                        <div class="form-group">
                            <label>Address</label>
                            <input class="form-control" type="text" name="address"
                                   value="${factory.address}" required>
                        </div>
                        <div class="form-group">
                            <label>City</label>
                            <input class="form-control" type="text" name="city"
                                   value="${factory.city}" required>
                        </div>
                        <div class="form-group">
                            <label>ZIP</label>
                            <input class="form-control" type="number" min="0" name="zip"
                                   value="${factory.zip}" required>
                        </div>
                        <div class="form-group">
                            <label>Contact</label>
                            <input class="form-control" type="text" name="contact"
                                   value="${factory.contact}" required>
                        </div>
                        <div class="form-group">
                            <label>Note</label>
                            <input class="form-control" type="text" name="note"
                                   value="${factory.note}" required>
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
    </body>
    
    
    
    <body>
        <div class='container pt-4'>
            <jsp:include page='views/layout/navbar.jsp'></jsp:include>
            <div class="row">
                <div class="col-4">
                    <form action="factoryEdit" method="POST">
                        
                    </form>
                </div>
            </div>
            <jsp:include page='views/layout/footer.jsp'></jsp:include>
        </div>
        <jsp:include page='views/layout/scripts.jsp'></jsp:include>
    </body>
</html>
