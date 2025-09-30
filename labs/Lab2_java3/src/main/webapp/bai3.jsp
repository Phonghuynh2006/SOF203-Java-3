<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>Form - Bài 3 (EL + Map)</h2>

  <!-- action đúng theo đề -->
  <form action="${pageContext.request.contextPath}/form/update" method="post">
    <div>Fullname:</div>
    <!-- readonly nếu editabled = true -->
    <input type="text" name="fullname" value="${user.fullname}"
           <c:if test="${editabled}">readonly</c:if> />
    <br>

    <div>Gender:</div>
    <input type="radio" name="gender" value="true"
           <c:if test="${user.gender}">checked</c:if> /> Male<br>
    <input type="radio" name="gender" value="false"
           <c:if test="${not user.gender}">checked</c:if> /> Female<br>

    <div>Country:</div>
    <select name="country">
      <option value="VN" <c:if test="${user.country == 'VN'}">selected</c:if>>Việt Nam</option>
      <option value="US" <c:if test="${user.country == 'US'}">selected</c:if>>United States</option>
      <option value="CN" <c:if test="${user.country == 'CN'}">selected</c:if>>China</option>
    </select>
    <br><hr>

    <!-- Disable nút Create nếu editabled = true -->
    <button type="submit" name="action" value="create" <c:if test="${editabled}">disabled</c:if>>Create</button>
    <button type="submit" name="action" value="update">Update</button>
  </form>
</body>
</html>