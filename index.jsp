<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<element>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bank transaction</title>
</head>
<body>
<script type="text/javascript"> 
function doTrans()
{
	window.open("index trans.jsp","_self");
}
function doTrans1()
{
	window,open("index debit.jsp","_self");
}
</script>
<button name="button" type="button" onclick="doTrans();" style="background-color:yellow">Last5Transactions</button>
<button name="button" type="button" onclick="doTrans1();" style="background-color:yellow">MakeaFundTransfer</button>
</body>
</html>
</element>
