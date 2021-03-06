<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>body {
    background-image: url("resources/images/maxresdefault.jpg");
    background-size: cover;
    padding: 0;
    margin: 0;
    background-color: #cccccc;
}</style>
<body>
	
		<div class="container-fluid">
		
	<form:form action="products" modelAttribute="product" method="post" enctype="multipart/form-data">
			
		<div class="form-group">
		<label for="id"></label>
		<div class="col-md-6">
		<form:hidden path="id"></form:hidden>
		<form:errors path="id" cssStyle="color:red"></form:errors>
		</div>
		</div>
		
		
		<div class="form-group">
		<div class="col-md-5">
		<label for="name">Enter Product Name</label>
		</div>
		<div class="col-md-9">
		<input id="name" name="name" type="text"/>
		<form:errors path="name" cssStyle="color:red"></form:errors>
		</div>
		</div>
		
		<br>
		<div class="form-group">
		<div class="col-md-5">
		<label for="description">Enter Description</label>
		</div>
		<div class="col-md-9">
		<input id="description" name="description" type="text"/>
		<form:errors path="description" cssStyle="color:red"></form:errors>
		</div>
		</div>
		
		<br>
		<div class="form-group">
		<div class="col-md-5">
		<label for="manufacture">Enter Manufacture</label>
		</div>
		<div class="col-md-9">		
		<input id="manufacture" name="manufacture" type="text"/>
		<form:errors path="manufacture" cssStyle="color:red"></form:errors>
		</div>
		</div>
		
		<br>
		<div class="form-group">
		<div class="col-md-5">
		<label for="price">Enter Price</label>
		</div>
		<div class="col-md-9">
		<input id="price" name="price" type="text" value="0.0"/>
		<form:errors path="price" cssStyle="color:red"></form:errors>
		</div>
		</div>
		
		<br>
		<div class="form-group">
		<div class="col-md-5">
		<label for="unitInStock">Unit In Stock</label>
		</div>
		<div class="col-md-9">
		<input id="unitInStock" name="unitInStock" type="text" value="0"/>
		<form:errors path="unitInStock" cssStyle="color:red"></form:errors>
		</div>
		</div>
		
	
		<div class="form-group">
		<div class="col-md-12">
		
		<label for="category">Select Category</label>
		<c:forEach items="${categorydetails}" var="c">
		
		<form:radiobutton path="category.cid" value="${c.cid }"/> ${c.categoryDetails }
		
		</c:forEach>
		
		<div class="form-group">
		<label for="image">Upload Image</label>
		<input type="file" name="image">
		</div>
		
		<div>
		<input type="submit" value="Add Product">
		</div>
		
		</div>
		</div>
	</form:form>
		</div>
		</div>

<%@ include file="footer.jsp" %>
</body>
</html>