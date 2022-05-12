<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PayPal Payment</title>
</head>
<body>
	<!-- submit -->
	<form id="myForm" action="https://www.paypal.com/donate" method="post"
		target="_top">
		<input type="hidden" name="business" value="HXQ2VMRNSDRCA" /> <input
			type="hidden" name="amount" value="<c:out value = "${monies}"/>" /> <input type="hidden" 
			name="no_recurring" value="0" /> <input type="hidden"
			name="currency_code" value="USD" /> <input type="image"
			src="/pics/Screen Shot 2022-03-31 at 11.08.17 AM.png"
			border="0" name="submit"
			title="PayPal - The safer, easier way to pay online!"
			alt="https://unsplash.com/photos/T9Gsevu_N8Y/download?force=true" /> <img alt="" border="0"
			src="https://www.paypal.com/en_US/i/scr/pixel.gif" width="1"
			height="1" />		
	</form>
	
<script type="text/javascript">
    window.onload=function(){
        var auto = setTimeout(function(){ autoRefresh(); }, 1);

        function submitform(){
          /* alert('test'); */
          document.forms["myForm"].submit();
        }

        function autoRefresh(){
           clearTimeout(auto);
           auto = setTimeout(function(){ submitform(); }, 1);
        }
    }
</script>

</body>
</html>