<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script type="text/javascript" src="/js/js.js"></script>
<link rel="stylesheet" href="/css/masjid.css">



<style>
/* Chrome, Safari, Edge, Opera */
input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
}

/* Firefox */
input[type=number] {
  -moz-appearance: textfield;
}
</style>
</head>
<div class="pagebg1">
	<div class="pagebgOuter">
		<div class="pageOuter">
			<div class="tax_title">--&raquo; Best Student Fund &laquo;--</div>
			<div class="tax">
				<h2>
					Give Noor Academy of Arizona up to $2,435 <br />at NO COST to
					you!!!
				</h2>
				<div class="tax_form_outer">

					<form:form action="/UserForm/new" method="post"
						modelAttribute="newUserForm">
						<h3>DONOR INFORMATION</h3>
						<h5>Please fill out the highlighted fields</h5>
						<form:errors path="firstName" />
						<c:if test="${errors}">
							<br>
						</c:if>
						<form:errors path="lastName" />
						<c:if test="${errors}">
							<br>
						</c:if>
						<form:errors path="address" />
						<c:if test="${errors}">
							<br>
						</c:if>
						<form:errors path="city" />
						<c:if test="${errors}">
							<br>
						</c:if>
						<form:errors path="state" />
						<c:if test="${errors}">
							<br>
						</c:if>
						<form:errors path="zipCode" />
						<c:if test="${errors}">
							<br>
						</c:if>
						<form:errors path="phone" />
						<c:if test="${errors}">
							<br>
						</c:if>
						<form:errors path="email" />
						<c:if test="${errors}">
							<br>
						</c:if>
						<form:errors path="single_donation_a" />
						<c:if test="${errors}">
							<br>
						</c:if>
						<form:errors path="single_donation_b" />
						<c:if test="${errors}">
							<br>
						</c:if>
						<form:errors path="married_donation_a" />
						<c:if test="${errors}">
							<br>
						</c:if>
						<form:errors path="married_donation_b" />
						<c:if test="${errors}">
							<br>
						</c:if>
						<div class="tax_form">


							<form:label path="firstName">First Name</form:label>
							<form:input path="firstName" class="w365 mR20 required"/>
							
							<form:label path="lastName">Last Name</form:label>
							<form:input path="lastName" class="w390 required" />

						</div>

						<div class="tax_form pL13">

							<form:label path="address">Address</form:label>
							<form:input path="address" class="w365 mR63 required" />

							<form:label path="city">City</form:label>
							<form:input path="city" class="w90 mR10 required"  />

							<form:label path="state">State</form:label>
							<form:input path="state" class="w113 mR8 required"/>

							<form:label path="zipCode">Zip Code</form:label>
							<form:input path="zipCode" class="w55 required"  />

						</div>
						<div class="tax_form pL22">

							<form:label path="phone">Phone</form:label>
							<form:input path="phone" class="w365 mR51 required"/>


							<form:label path="email">Email</form:label>
							<form:input path="email" class="w390 required"/>

						</div>

						<h3>You May donate toward "B" Only If you donate the maximum
							for "A" for the same taxable year.</h3>
						<h4>A. Original AZ State Private School Tax Credit</h4>
						<ul>
							<li>A <strong><u>single</u></strong> or <strong><u>head
										of household</u></strong> taxpayer can receive up to <strong><u>$611</u></strong>
								in Arizona income tax credit.
							</li>
							<li>A <strong><u>married couple filing a joint
										return</u></strong> can receive up to <strong><u>$1,221</u></strong> in
								Arizona income tax credit.
							</li>
						</ul>
						<h4>B. Switcher AZ State Private School Tax Credit</h4>
						<ul>
							<li>A <strong><u>single</u></strong> or <strong><u>head
										of household</u></strong> taxpayer can receive up to <strong><u>$608</u></strong>
								in Arizona income tax credit.
							</li>
							<li>A <strong><u>married couple filing a joint
										return</u></strong> can receive up to <strong><u>$1,214</u></strong> in
								Arizona income tax credit.
							</li>
						</ul>
						<body>
							<span class="star">*</span>
							<select name="type" id="type" class="select"
								onchange="type_change()">
								<option value="" selected="selected">Filing Status</option>
								<option value="single">Single Taxpayer</option>
								<option value="married">Married Filing joint</option>
							</select>
							<div id="single_container" class="tax_box" style="display: none">
								<table width="100%" cellpadding="0" cellspacing="0">
									<tr>
										<td width="57%" class="title">Single Taxpayer</td>
										<td width="20%" class="title">Max</td>
										<td width="23%" class="title">My Donation</td>
									</tr>
									<tr>
										<td class="text">Donation A</td>
										<td class="text">$611</td>
										<td class="text">$ <input type="number" value = "0"
											name="single_donation_a" value="" id="single_donation_a"
											onblur="single_enable_disable()" class="w90 required" />
										</td>
									</tr>
									<tr>
										<td class="text">Donation B</td>
										<td class="text">$608</td>
										<td class="text">$ <input type="number" value = "0"
											name="single_donation_b" value="" id="single_donation_b"
											onblur="show_total()" class="w90 required" />
										</td>
									</tr>
									<tr>
										<td class="text">Total Donation (A+B)</td>
										<td class="text">$1,219</td>
										<td class="text">
										<span class="price">$ 
										<strong id="total_single">0</strong>
										</span>
										</td>
									</tr>
								</table>
							</div>
							<div id="married_container" class="tax_box" style="display: none">
								<table width="100%" cellpadding="0" cellspacing="0">
									<tr>
										<td width="57%" class="title">Married Filing Joint</td>
										<td width="20%" class="title">Max</td>
										<td width="23%" class="title">My Donation</td>
									</tr>
									<tr>
										<td class="text">Donation A</td>
										<td class="text">$1,221</td>
										<td class="text">$ <input type="number" value = "0"
											name="married_donation_a" value="" id="married_donation_a"
											onblur="married_enable_disable()" class="w90 required" />
										</td>
									</tr>
									<tr>
										<td class="text">Donation B</td>
										<td class="text">$1,214</td>
										<td class="text">$ <input type="number" value = "0"
											name="married_donation_b" value="" id="married_donation_b"
											onblur="show_total()" class="w90 required" /> 
										</td>
									</tr>
									<tr>
										<td class="text">Total Donation (A+B)</td>
										<td class="text">$2,435</td>
										<td class="text"><span class="price">$ <strong
												id="total_married">0</strong></span></td>
									</tr>
								</table>
							</div>
							<div class="tax_form">
								I want my total donation(A+B) of <span class="price">$<u><strong
										name="total" id="total"></strong></u></span> for tax year <input
									type="text" name="year" value="" id="year" class="w55 required" />
								to go to <strong>Noor Academy of Arizona</strong>. <input
									type="hidden" name="testTotal" value="">
							</div>

						</body>
						<h4>Have you previously donated money to any Student Tuition
							Organization (STO) such as Best Student Fund this year?</h4>
						<div class="tax_form">
							<input type="radio" name="already_paid" value=""
								id="already_paid_no" onclick="checkTest()" /> No, this is my
							first time donating to STO this year.<br /> <input type="radio"
								name="already_paid" value="" id="already_paid_yes"
								onclick="checkTest()" /> Yes, it was to <input type="text"
								name="already_paid_name" value="" id="already_paid_name"
								class="w90" /> in the amount of $ <input type="text"
								name="already_paid_amount" value="" id="already_paid_amount"
								class="w55" /> and i will claim it for tax year 20 <input
								type="text" name="already_paid_year" value=""
								id="already_paid_year" />
						</div>
							<form id="myForm" action="https://www.paypal.com/donate" method="post"
		target="_top">
		<input type="hidden" name="business" value="HXQ2VMRNSDRCA" /> <input
			type="hidden" name="amount" value="<c:out value = "${monies}"/>" /> <input type="hidden" 
			name="no_recurring" value="0" /> <input type="hidden"
			name="currency_code" value="USD" /> <input type="image"
			src="https://www.paypalobjects.com/webstatic/en_US/i/buttons/checkout-logo-large.png"
			border="0" name="submit"
			title="PayPal - The safer, easier way to pay online!"
			alt="https://unsplash.com/photos/T9Gsevu_N8Y/download?force=true" /> <img alt="" border="0"
			src="https://www.paypal.com/en_US/i/scr/pixel.gif" width="1"
			height="1" />		
	</form>
	
	

						<div style="text-align: center">
							<br>
							<h3>
								Questions: Call Noor Academy of AZ at <b>480-829-1443</b> or
								write to BSF at <b>beststudentfund@yahoo.com</b>
							</h3>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>
</html>


