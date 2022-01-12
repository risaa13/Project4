

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page='views/layout/head.jsp'>
            <jsp:param name ="title" value="Create Product"/>
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
            <h1>Input Data Product</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index">Home</a></li>
              <li class="breadcrumb-item"><a href="product">Product</a></li>
              <li class="breadcrumb-item"><a href="productCreate">Product Input</a></li>
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
              <div class="card-header"> Input Data Product</div>
              <!-- /.card-header -->
              <!-- form start -->
             
                <div class="card-body">
                     <form role="form" action="productCreate" method="POST">
			<div class="form-group">
                            <label>Product Name</label>
                            <input class="form-control" type="text" name="name" required>
                        </div>
                        <div class="form-group">
                            <label>Product Weight</label>
                            <input class="form-control" type="text" name="size" required>
                        </div>
                        <div class="form-group">
                            <label>Product Branch</label>
                            <input class="form-control" type="text" name="label" required>
                        </div>
                        <div class="form-group">
                            <label>Product Type</label>
                            <select class="form-control" type="text" name="type">
                                <option value="Flour">Flour</option>
                                <option value="Leaveners">Leaveners</option>
                                <option value="Sugar">Sugar</option>
                                <option value="Salt">Salt</option>
                                <option value="Dairy">Dairy</option>
                                <option value="Fats">Fats</option>
                                <option value="Spices">Spices</option>
                                <option value="Add-Ins">Add-Ins</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Product Note</label>
                        <textarea class="form-control" name="note" rows="3" required></textarea>
                      </div>
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
</html>
