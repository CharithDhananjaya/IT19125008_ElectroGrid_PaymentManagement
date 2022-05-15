<%@page import="com.Payment"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Management</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.6.0.min.js"></script>
<script src="Components/payment.js"></script>
</head>
<body>
<div class="container p-3 mb-2  mx-auto" style="background-color: #140E67">
		<div class="row  mx-auto">
			<div class="col-5  mx-auto">
<h1 class="mx-auto text-white" style="width:370px">Payment Management</h1>
	<div class="p-3 mb-2 bg-warning text-black mx-auto" style="border-radius: 10px;">
<form id="formPayment" name="formPayment" method="post" action="payment.jsp">

 Holder Name: 
 <input id="holder_name" name="holder_name" type="text" placeholder="Enter Holder Name"
 class="form-control form-control-sm">
 <br> Card Type: 
 <input id="ctype" name="ctype" type="text" placeholder="Enter Card Type"
 class="form-control form-control-sm">
 <br> Card Number: 
 <input id="card_no" name="card_no" type="text" placeholder="Enter Card Number"
 class="form-control form-control-sm">
 <br> CVV: 
 <input id="cvv" name="cvv" type="text" placeholder="Enter Card Number"
 class="form-control form-control-sm">
 <br> Expire Month : 
 <input id="exp_month" name="exp_month" type="text" placeholder="Enter Expire Month"
 class="form-control form-control-sm">
 <br> Expire year : 
 <input id="exp_year" name="exp_year" type="text" placeholder="Enter Expire year"
 class="form-control form-control-sm">
 <br> Total Amount : 
 <input id="total" name="total" type="text" placeholder="Enter Total Amount"
 class="form-control form-control-sm">
 <br> Date of the Payment : 
 <input id="pay_date" name="pay_date" type="date" 
 class="form-control form-control-sm">
 <br>
 <div class="mx-auto"style="width:50px">
 <input id="btnSave" name="btnSave" type="button" value="Save" 
 class="btn btn-primary">
 <input type="hidden" id="hidpay_idSave" 
 name="hidpay_idSave" value="">
 </div>
</form>
</div>
<br>
<div id="alertSuccess" class="alert alert-success"></div>
<div id="alertError" class="alert alert-danger"></div>
<br>
</div> </div>
<div id="divPaymentGrid" class="col-12 p-3 mb-2 bg-white mx-auto">
 <%
 Payment paymentObj = new Payment();
 out.print(paymentObj.readPayment()); 
 %>
</div>
</div> 
</body>
</html>