<%--
  Created by IntelliJ IDEA.
  User: Minh Nguyễn
  Date: 9/28/2020
  Time: 8:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product Management</title>
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"
            integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
            crossorigin="anonymous"></script>

    <!-- Bootstrap files (jQuery first, then Popper.js, then Bootstrap JS) -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet"
          type="text/css"/>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"
            type="text/javascript"></script>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark sticky-top bg-primary">
    <div class="container">
        <a class="navbar-brand" href="../View/index.jsp">HomePage</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main_nav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="main_nav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="../ViewManagementPage/Administrator.jsp"> Dashboard </a></li>
                <li class="nav-item active"><a class="nav-link" href="../ViewManagementPage/ProductManagement.jsp"> Product Management </a></li>
                <li class="nav-item"><a class="nav-link" href="../ViewManagementPage/OrderManagement.jsp"> Order Management </a></li>
                <li class="nav-item"><a class="nav-link" href="../ViewManagementPage/UserManagement.jsp"> User Management </a></li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link" href="#"> Logout </a></li>
            </ul>
        </div> <!-- navbar-collapse.// -->
    </div><!-- container //  -->
</nav>

<br/>

<div class="container">
    <div class="row col-md-13 col-md-offset-2 custyle">
        <table class="table table-striped custab">
            <thead>
            <a href="#" class="btn btn-primary btn-xs pull-right"><b>+</b> Add new categories</a>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Amount</th>
                <th>Price</th>
                <th>Description</th>
                <th>Thumbnail</th>
                <th>Category</th>
                <th class="text-center">Action</th>
            </tr>
            </thead>
            <tr>
                <td>1</td>
                <td>Name</td>
                <td>Amount</td>
                <td>Price</td>
                <td>Description</td>
                <td>Thumbnail</td>
                <td>Category</td>
                <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> Edit</a> <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> Del</a></td>
            </tr>
            <%--            <tr>--%>
            <%--                <td>2</td>--%>
            <%--                <td>Products</td>--%>
            <%--                <td>Main Products</td>--%>
            <%--                <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> Edit</a> <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> Del</a></td>--%>
            <%--            </tr>--%>
            <%--            <tr>--%>
            <%--                <td>3</td>--%>
            <%--                <td>Blogs</td>--%>
            <%--                <td>Parent Blogs</td>--%>
            <%--                <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> Edit</a> <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> Del</a></td>--%>
            <%--            </tr>--%>
            <%--            <tr>--%>
            <%--                <td>4</td>--%>
            <%--                <td>Blogs</td>--%>
            <%--                <td>Parent Blogs</td>--%>
            <%--                <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> Edit</a> <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> Del</a></td>--%>
            <%--            </tr>--%>
            <%--            <tr>--%>
            <%--                <td>5</td>--%>
            <%--                <td>Blogs</td>--%>
            <%--                <td>Parent Blogs</td>--%>
            <%--                <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> Edit</a> <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> Del</a></td>--%>
            <%--            </tr>--%>
            <%--            <tr>--%>
            <%--                <td>6</td>--%>
            <%--                <td>Blogs</td>--%>
            <%--                <td>Parent Blogs</td>--%>
            <%--                <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> Edit</a> <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> Del</a></td>--%>
            <%--            </tr>--%>
            <%--            <tr>--%>
            <%--                <td>7</td>--%>
            <%--                <td>Blogs</td>--%>
            <%--                <td>Parent Blogs</td>--%>
            <%--                <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> Edit</a> <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> Del</a></td>--%>
            <%--            </tr>--%>
        </table>
    </div>

    <%--    <div class="card-footer py-4">--%>
    <%--        <nav aria-label="...">--%>
    <%--            <ul class="pagination justify-content-end mb-0">--%>
    <%--                <li class="page-item disabled">--%>
    <%--                    <a class="page-link" href="#" tabindex="-1">--%>
    <%--                        <i class="fas fa-angle-left"></i>--%>
    <%--                        <span class="sr-only">Previous</span>--%>
    <%--                    </a>--%>
    <%--                </li>--%>
    <%--                <li class="page-item active">--%>
    <%--                    <a class="page-link" href="#">1</a>--%>
    <%--                </li>--%>
    <%--                <li class="page-item">--%>
    <%--                    <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>--%>
    <%--                </li>--%>
    <%--                <li class="page-item"><a class="page-link" href="#">3</a></li>--%>
    <%--                <li class="page-item">--%>
    <%--                    <a class="page-link" href="#">--%>
    <%--                        <i class="fas fa-angle-right"></i>--%>
    <%--                        <span class="sr-only">Next</span>--%>
    <%--                    </a>--%>
    <%--                </li>--%>
    <%--            </ul>--%>
    <%--        </nav>--%>
    <%--    </div>--%>
    <%--</div>--%>
</body>
</html>
