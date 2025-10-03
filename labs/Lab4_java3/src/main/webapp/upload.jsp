
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>

<html>
<head><meta charset="UTF-8"><title>Upload File</title></head>
<body>
  <h2>Upload File</h2>
<form method="post" enctype="multipart/form-data"
      action="${pageContext.request.contextPath}/upload">
    <input type="file" name="photo"><br>
    <button type="submit">Upload</button>
</form>
<p>${message}</p>
</body>  
</html>
