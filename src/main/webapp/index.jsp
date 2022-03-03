<%@ page import="java.util.List" %>
<%@ page import="com.codegym.model.Customer" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Danh sách khách hàng</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<%
    List<Customer> customers = new ArrayList<>();
    customers.add(new Customer("Bùi Xuân Sang", "1999-12-14", "Hải Phòng", "/img/anh1.jpg"));
    customers.add(new Customer("Bùi Quốc Luýt", "1993-01-15", "Hà Tĩnh", "/img/anh2.jpg"));
    customers.add(new Customer("Hồ Thanh Lịch", "1991-06-20", "Nghệ An", "/img/anh3.jpg"));
    customers.add(new Customer("Mai Tiến Việt", "1991-10-30", "Hà Nội", "/img/anh4.jpg"));
    customers.add(new Customer("Phạm Quang Huy", "1995-12-10", "Thái bình", "/img/anh5.jpg"));
    pageContext.setAttribute("listCustomer", customers);
%>
<h1>Danh sách khách hàng</h1>
<table class="table table-bordered">
    <thead>
    <tr>
        <th scope="col">Tên khách hàng</th>
        <th scope="col">Ngày Sinh</th>
        <th scope="col">Địa chỉ</th>
        <th scope="col">Ảnh</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="customer" items="${listCustomer}">
        <tr>
            <th scope="row">${customer.name}</th>
            <td>${customer.dateOfBird}</td>
            <td>${customer.address}</td>
            <td><img src="${customer.image}" alt="ảnh khách hàng" width="150" height="150"></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
