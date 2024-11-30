<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quản Lý Quần Áo</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h1>Quản Lý Quần Áo</h1>
    <div>
        <form action="/addOrUpdateQuanAo" method="post" enctype="multipart/form-data">
            <label for="maQuanAo">Mã Quần Áo:</label>
            <input type="text" id="maQuanAo" name="maQuanAo" value="${quanAo.ma}" required><br>

            <label for="tenQuanAo">Tên Quần Áo:</label>
            <input type="text" id="tenQuanAo" name="tenQuanAo" value="${quanAo.ten}" required><br>

            

            <label for="soLuong">Số Lượng:</label>
            <input type="number" id="soLuong" name="soLuong" value="${quanAo.soLuong}" required><br>

            <label for="giaNhap">Giá Nhập:</label>
            <input type="number" id="giaNhap" name="giaNhap" value="${quanAo.giaNhap}" required><br>

            <label for="giaBan">Giá Bán:</label>
            <input type="number" id="giaBan" name="giaBan" value="${quanAo.giaBan}" required><br>

            <label for="hinhAnh">Hình Ảnh:</label>
            <input type="file" id="hinhAnh" name="hinhAnh" accept="image/*"><br>

            <button type="submit">Lưu</button>
            <button type="reset">Xóa Trắng</button>
        </form>
    </div>

    <h2>Danh Sách Quần Áo</h2>
    <table border="1">
        <thead>
            <tr>
                <th>Mã</th>
                <th>Tên</th>
                <th>Loại</th>
                <th>Giá Bán</th>
                <th>Kích Cỡ</th>
                <th>Màu Sắc</th>
                <th>Chất Liệu</th>
                <th>Nhà Cung Cấp</th>
                <th>Thương Hiệu</th>
                <th>Số Lượng</th>
                <th>Hình Ảnh</th>
                <th>Hành Động</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="quanAo" items="${listQuanAo}">
                <tr>
                    <td>${quanAo.ma}</td>
                    <td>${quanAo.ten}</td>
                    <td>${quanAo.loai.ten}</td>
                    <td>${quanAo.giaBan}</td>
                    <td>${quanAo.kichCo}</td>
                    <td>${quanAo.mauSac}</td>
                    <td>${quanAo.chatLieu}</td>
                    <td>${quanAo.nhaCungCap}</td>
                    <td>${quanAo.thuongHieu}</td>
                    <td>${quanAo.soLuong}</td>
                    <td><img src="/images/${quanAo.hinhAnh}" alt="${quanAo.ten}" width="50"></td>
                    <td>
                        <form action="/deleteQuanAo" method="post">
                            <input type="hidden" name="maQuanAo" value="${quanAo.ma}">
                            <button type="submit">Xóa</button>
                        </form>
                        <a href="/editQuanAo/${quanAo.ma}">Sửa</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
