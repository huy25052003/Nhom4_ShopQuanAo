<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Tìm Kiếm Quần Áo</title>
    <link rel="stylesheet" href="path/to/your/css/styles.css"> <!-- Link to your CSS -->
</head>
<body>
    <h1>Tìm Kiếm Quần Áo</h1>
    
    <form action="search" method="post">
        <label for="txtMaQuanAo">Mã Quần Áo:</label>
        <input type="text" id="txtMaQuanAo" name="maQuanAo"><br>

        <label for="txtTenQuanAo">Tên Quần Áo:</label>
        <input type="text" id="txtTenQuanAo" name="tenQuanAo"><br>

        <label for="txtSoLuong">Số Lượng:</label>
        <input type="text" id="txtSoLuong" name="soLuong"><br>

        <label for="cmbNhaCungCap">Nhà Cung Cấp:</label>
        <select id="cmbNhaCungCap" name="nhaCungCap">
            <c:forEach var="ncc" items="${nhaCungCapList}">
                <option value="${ncc.id}">${ncc.tenNCC}</option>
            </c:forEach>
        </select><br>

        <label for="cmbMauSac">Màu Sắc:</label>
        <select id="cmbMauSac" name="mauSac">
            <c:forEach var="ms" items="${mauSacList}">
                <option value="${ms.id}">${ms.mauSac}</option>
            </c:forEach>
        </select><br>

        <label for="cmbThuongHieu">Thương Hiệu:</label>
        <select id="cmbThuongHieu" name="thuongHieu">
            <c:forEach var="th" items="${thuongHieuList}">
                <option value="${th.id}">${th.thuongHieu}</option>
            </c:forEach>
        </select><br>

        <label for="txtGiaNhap">Giá Nhập:</label>
        <input type="text" id="txtGiaNhap" name="giaNhap" readonly><br>

        <label for="txtGiaBan">Giá Bán:</label>
        <input type="text" id="txtGiaBan" name="giaBan" readonly><br>

        <button type="submit">Tìm Kiếm Quần Áo</button>
        <button type="reset">Làm Mới</button>
    </form>

    <h2>Danh Sách Quần Áo</h2>
    <table border="1">
        <thead>
            <tr>
                <th>Mã Quần Áo</th>
                <th>Tên Quần Áo</th>
                <th>Loại</th>
                <th>Giá</th>
                <th>Kích Cỡ</th>
                <th>Màu Sắc</th>
                <th>Chất Liệu</th>
                <th>Nhà Cung Cấp</th>
                <th>Thương Hiệu</th>
                <th>Số Lượng</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="qa" items="${quanAoList}">
                <tr>
                    <td>${qa.maQuanAo}</td>
                    <td>${qa.tenQuanAo}</td>
                    <td>${qa.loai}</td>
                    <td>${qa.gia}</td>
                    <td>${qa.kichCo}</td>
                    <td>${qa.mauSac}</td>
                    <td>${qa.chatLieu}</td>
                    <td>${qa.nhaCungCap}</td>
                    <td>${qa.thuongHieu}</td>
                    <td>${qa.soLuong}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
