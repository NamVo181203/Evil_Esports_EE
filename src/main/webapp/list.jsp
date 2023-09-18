<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Add News</title>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>

	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h2 class="text-center">List News</h2>
			</div>
			<div class="panel-body">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>STT</th>
                                        <th>Hinh Anh</th>
                                        <th>Tieu De</th>
                                        <th>Noi Dung</th>
                                        <th>Ngay Tao</th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${newsList}" var="item" varStatus="loop">
                                        <tr>
                                            <td>${loop.index + 1}</td>
                                            <td><img src="${item.thumbnail}" style="width: 100px"/></td>
                                            <td>${item.title}</td>
                                            <td>${item.content}</td>
                                            <td>${item.createdAt}</td>
                                            <td>
                                                <form method="get" action="add">
                                                    <input type="text" value="${item.id}" name="id" style="display: none"/>
                                                    <button class="btn btn-warning">Edit</button>
                                                </form>
                                            </td>
                                            <td>
                                                <form method="post">
                                                    <input type="text" value="${item.id}" name="id" style="display: none"/>
                                                    <button class="btn btn-danger" name="action" value="delete">Delete</button>
                                                </form>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
			</div>
		</div>
	</div>
</body>
</html>