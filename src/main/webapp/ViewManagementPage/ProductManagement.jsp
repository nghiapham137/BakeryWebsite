<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main_nav"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="main_nav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="../ViewManagementPage/Administrator.jsp"> Dashboard </a></li>
                <form action="../ProductControllerServlet" method="post" name="ProductManagement">
                    <li class="nav-item active"><a class="nav-link" href="../ViewManagementPage/ProductManagement.jsp">Product Management </a></li>
                </form>
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
            <tbody>
            <c:forEach var="item" items="${products}" varStatus="loop">
                <tr>
                    <td>${item.productId}</td>
                    <td>${item.productName}</td>
                    <td>${item.amount}</td>
                    <td>${item.price}</td>
                    <td>${item.description}</td>
                    <td>${item.thumbnail}</td>
                    <td>${item.category}</td>
                    <td class="text-center">
                        <a class='btn btn-info btn-xs' href="/productController?action=update" ><span class="glyphicon glyphicon-edit"></span>Edit</a>
                        <a class="btn btn-danger btn-xs" href="/productController?action=delete&id=${item.productId}" ><span class="glyphicon glyphicon-remove"></span>Del</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
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
