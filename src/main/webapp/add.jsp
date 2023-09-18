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
				<h2 class="text-center">Add News</h2>
			</div>
			<div class="panel-body">
                            <form method="post">
				<div class="form-group">
				  <label for="usr">Title:</label>
                                  <input type="id" value="${news.id}" class="form-control" id="usr" name="id" style="display: none"/>
                                  <input required="true" type="text" value="${news.title}" class="form-control" id="usr" name="title"/>
				</div>
				<div class="form-group">
				  <label for="thumbnail">Thumbnail: </label>
                                  <input required="true" type="text" class="form-control" value="${news.thumbnail}" id="thumbnail" name="thumbnail"/>
				</div>
				<div class="form-group">
				  <label for="content">Content: </label>
                                  <textarea class="form-control" id="content" name="content">${news.content}</textarea>
				</div>
                                <button class="btn btn-success">Register</button>
                            </form>
			</div>
		</div>
	</div>
</body>
</html>