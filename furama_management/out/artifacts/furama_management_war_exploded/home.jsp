<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/30/2021
  Time: 10:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="bootstrapmin/bootstrap.min.css">
</head>
<body>
<nav class="navbar navbar-light bg-info">
    <div class="container-fluid">
        <a class="navbar-brand"><img src="picture/logo.png" style="height: 50px"></a>
    </div>
</nav>

<nav class="navbar navbar-expand-lg navbar-light bg-info my-3">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Home</a>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Employee</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/customers">Customer</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Service</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contract</a>
                </li>
            </ul>
            <form class="d-flex">
                <input class="form-control" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>
</div class="contain-fluid">

<div class="container-fluid">
    <div class="row">
        <div class="col-lg-4 ">
            <p style=" color:#D0C480">KHU NGHỈ DƯỠNG ĐẲNG CẤP THẾ GIỚI, FURAMA ĐÀ NẴNG, NỔI TIẾNG LÀ KHU NGHỈ DƯỠNG ẨM THỰC TẠI VIỆT NAM.</p>
            <p>Hướng ra bãi biển Đà Nẵng trải dài cát trắng, Furama Resort Đà Nẵng là cửa ngõ đến với 3 di sản văn hoá
                thế giới: Hội An (20 phút), Mỹ Sơn (90 phút) và Huế (2 tiếng. 196 phòng hạng sang cùng với 70 căn biệt
                thự từ hai đến bốn phòng ngủ có hồ bơi riêng đều được trang trí trang nhã, theo phong cách thiết kế
                truyền thống của Việt Nam và kiến trúc thuộc địa của Pháp, biến Furama thành khu nghỉ dưỡng danh giá
                nhất tại Việt Nam – vinh dự được đón tiếp nhiều người nổi tiếng, giới hoàng gia, chính khách, ngôi sao
                điện ảnh và các nhà lãnh đạo kinh doanh quốc tế.</p>
        </div>
        <div class="col-lg-8 ">
            <div>
                <iframe style="width: 700px;height: 600px" src="https://www.youtube.com/embed/IjlT_4mvd-c"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid">
    <div class="row bg-info d-flex justify-content-center">
        <div class="d-flex justify-content-center">COVID 19 UPDATE: The safety and well-being are our utmost priority</div>
    </div>
</div>
<script src="bootstrapmin/jquery-3.6.0.min.js"></script>
<script src="bootstrapmin/bootstrap.min.js"></script>
</body>
</html>
