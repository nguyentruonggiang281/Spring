<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tour Details</title>
</head>
<body>
<h1>Đặt Tour ${tour.description} ${tour.days}</h1>

<h2>Booking</h2>

<form method="post">
    <h3>Thông tin khách hàng</h3>

    <label for="name">Họ tên:(*)</label>
    <input type="text" name="name" id="name" value="${customer.name}"/><br>

    <label for="address">Địa chỉ:</label>
    <input type="text" name="address" id="address" value="${customer.address}"/><br>

    <label for="email">Email:</label>
    <input type="email" name="email" id="email" value="${customer.email}"/><br>

    <label for="phone">Điện thoại:</label>
    <input type="tel" name="phone" id="phone" value="${customer.phone}"/><br>

    <h3>Thông tin chuyến đi</h3>

    <label for="departureDate"> Ngày khởi hành: </label>
    <input type="date" name="departureDate" id="departureDate" value="${booking.departureDate}" /><br>

    <label for="noAdults">Số người lớn:</label>
    <input type="number" name="noAdults" id="noAdults" value="${booking.noAdults}" /><br>

    <label for="noChildren">Số trẻ em:</label>
    <input type="number" name="noChildren" id="noChildren" value="${booking.noChildren}" /><br>

    <input type="submit" value="Book Now"/>
</form>
<c:if test="${not empty errorMessage}">
    <p class="error-message">${errorMessage}</p>
</c:if>
</body>
</html>
