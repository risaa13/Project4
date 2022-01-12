

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page='views/layout/head.jsp'>
            <jsp:param name ="title" value="Edit Product"/>
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
            <h1>Edit Data Product</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index">Home</a></li>
              <li class="breadcrumb-item"><a href="product">Product</a></li>
              <li class="breadcrumb-item"><a href="#">Product Edit</a></li>
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
              <div class="card-header">Edit Data Product</div>
              <!-- /.card-header -->
              <!-- form start -->
             
                <div class="card-body">
                     <form role="form" action="productEdit" method="POST">
                         <input type="hidden" name="id" value="${product.id}">
			<div class="form-group">
                            <label>Product Name</label>
                            <input class="form-control" type="text" name="name" 
                                   value="${product.name}" required>
                        </div>
                        <div class="form-group">
                            <label>Product Size</label>
                            <input class="form-control" type="text" name="size"
                                   value="${product.size}" required>
                        </div>
                        <div class="form-group">
                            <label>Product Label</label>
                            <input class="form-control" type="text" name="label"
                                   value="${product.name}" required>
                        </div>
                        <div class="form-group">
                            <label>Product Type</label>
                            <select class="form-control" type="text" name="type">
                                <option ${product.type == 'Shirt' ? 'selected' : ''} value="Shirt">Shirt</option>
                                <option ${product.type == 'Pants' ? 'selected' : ''} value="Pants">Pants</option>
                                <option ${product.type == 'Shoes' ? 'selected' : ''} value="Shoes">Shoes</option>
                                <option ${product.type == 'Jacket' ? 'selected' : ''} value="Jacket">Jacket</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Product Note</label>
                            <input class="form-control" type="text" name="note"
                                   value="${product.note}" required>
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
