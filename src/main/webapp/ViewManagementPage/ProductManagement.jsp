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
    <script src="extensions/editable/bootstrap-table-editable.js"></script>
    <!-- New form-->

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark sticky-top bg-primary">
    <div class="container">
        <a class="navbar-brand" href="../View/index.jsp">HomePage</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main_nav"><span
                class="navbar-toggler-icon"></span></button>
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

<%--Start Popup Add new product--%>
<div class="modal fade addNewInputs" id="modalAdd1" tabindex="-1" role="dialog" aria-labelledby="modalAdd" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h4 class="modal-title w-100 font-weight-bold text-primary ml-5" id="editProduct">Add new product</h4>
                <button type="button" class="close text-primary" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form method="post" action="/categoryController?action=add">
            <div class="modal-body mx-3">
                <div class="md-form mb-5">
                    <a>Name</a>
                    <input type="text" id="inputName" class="form-control validate">
                </div>
                <div class="md-form mb-5">
                    <a>Amount</a>
                    <input type="number" id="inputAmount" class="form-control validate">
                </div>
                <div class="md-form mb-5">
                    <a>Price</a>
                    <input type="number" id="inputPrice" class="form-control validate">
                </div>
                <div class="md-form mb-5">
                    <a>Description</a>
                    <input type="text" id="inputDescription" class="form-control validate">
                </div>
                <div class="md-form mb-5">
                    <a>Thumbnail</a>
                    <input type="text" id="inputThumbnail" class="form-control validate">
                </div>
                <div class="md-form mb-5">
                    <form>
                        <select>
                            <option value="abc">álkjf</option>
                            <option value="jhk">,.mzxnvckjsahrv</option>
                        </select>
                    </form>
                    <a>Category</a>
                    <input type="submit" id="inputCategory" class="form-control validate">
                </div>
            </div>
            <div class="modal-footer d-flex justify-content-center buttonAddFormWrapper">
                <button type="submit" class="btn btn-outline-primary btn-block buttonAdd" data-dismiss="modal">Add product<i class="fas fa-paper-plane-o ml-1"></i></button>
            </div>
            </form>
        </div>
    </div>
</div>
<%--End Popup Add new product--%>

<br/>

<div class="container-fluid" style="margin-left: 10px; margin-right: 10px">
    <div class="row col-md-12 col-md-offset-2 custyle">
        <table class="table table-striped custab">
            <thead>
            <a href="#" class="btn btn-primary btn-xs pull-right" data-toggle="modal" data-target="#modalAdd1"><b>+</b>Add new categories</a>

<%--Show table product--%>
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
                    <td>${item.category.categoryName}</td>
                    <td class="text-center">

                        <a class='btn btn-info btn-xs' href="/productController?action=update&id=${item.productId}">
                            <span class="glyphicon glyphicon-edit"></span>Edit</a>


                        <a class="btn btn-danger btn-xs" href="/productController?action=delete&id=${item.productId}">
                            <span class="glyphicon glyphicon-remove"></span>Del</a>

                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
