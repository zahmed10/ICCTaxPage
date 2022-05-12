<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<!-- <link rel="stylesheet" href="/css/main.css"/> -->
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>

<body>
<div class="board">
	admin page
	<a href="/logout">Logout</a>
	<table class="table table-hover">
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">FirstName</th>
				<th scope="col">LastName</th>
				<th scope="col">Address</th>
				<th scope="col">City</th>
				<th scope="col">State</th>
				<th scope="col">Zip Code</th>
				<th scope="col">Phone</th>
				<th scope="col">Email</th>
				<th scope="col">Type</th>
				<th scope="col">SingleDonationA</th>
				<th scope="col">SingleDonationB</th>
				<th scope="col">MarriedDonationA</th>
				<th scope="col">MarriedDonationB</th>
				<th scope="col">Total Married</th>
				<th scope="col">Total Single</th>
				<th scope="col">Year</th>
				<th scope="col">Already Paid</th>
				<th scope="col">Already Paid Name</th>
				<th scope="col">Already Paid Amount</th>
				<th scope="col">Already Paid Year</th>
			</tr>
		</thead>
		<tbody>
				
		<c:forEach items="${userForms}" var="userForm">
			<tr>
				<td><c:out value="${ userForm.id}"/></td>
				<td><c:out value="${ userForm.firstName}"/></td>
				<td><c:out value="${ userForm.lastName}"/></td>
				<td><c:out value="${ userForm.address}"/></td>
				<td><c:out value="${ userForm.city}"/></td>
				<td><c:out value="${ userForm.state}"/></td>
				<td><c:out value="${ userForm.zipCode}"/></td>
				<td><c:out value="${ userForm.phone}"/></td>
				<td><c:out value="${ userForm.email}"/></td>
				<td><c:out value="${ userForm.type}"/></td>
				<td><c:out value="${ userForm.single_donation_a}"/></td>
				<td><c:out value="${ userForm.single_donation_b}"/></td>
				<td><c:out value="${ userForm.married_donation_a}"/></td>
				<td><c:out value="${ userForm.married_donation_b}"/></td>
				<td><c:out value="${ userForm.total_married}"/></td>	
				<td><c:out value="${ userForm.total_single}"/></td>	
				<td><c:out value="${ userForm.year}"/></td>		
				<td><c:out value="${ userForm.already_paid}"/></td>	
				<td><c:out value="${ userForm.already_paid_name}"/></td>	
				<td><c:out value="${ userForm.already_paid_amount}"/></td>
				<td><c:out value="${ userForm.already_paid_year}"/></td>

			</tr>

		</c:forEach>
		 

		
		</tbody>

	</table>
	</div>

</body>
</html>