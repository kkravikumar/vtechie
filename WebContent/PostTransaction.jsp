<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="data" class="com.mastercard.mcwallet.sampleapp.MasterpassData" scope="session">
</jsp:useBean>

<html>
<head>
	<title>
		MasterPass Standard Checkout
	</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="Content/Site.css">
    <script type="text/javascript" src="Scripts/jquery-1.5.1.js"></script>
    <script type="text/javascript" src="Scripts/common.js"></script>
    <script type="text/javascript" src="Scripts/tooltips/commonToolTips.js"></script>
    <script type="text/javascript" src="Scripts/tooltips/jquery-1.3.2.min.js"></script> <!-- Needed for tooltips only -->
	<script type="text/javascript" src="Scripts/tooltips/jquery.qtip-1.0.0-rc3.min.js"></script>
	<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
	<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/stylesheets/site.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/stylesheets/components.css" rel="stylesheet">

</head>
<body class="postCheckout">
	<div class="page">
		<div id="header">
			<div id="title">
				<h1>MasterPass Checkout</h1>
			</div>
			<div id="logindisplay">&nbsp;</div>
			
		</div>
		<div id="main">
			<h1>Complete: Transaction Completed. Offers that would interests you.</h1>

		<c:if test="${not empty offers}">
		<div class="row">
			<c:forEach var="offer" items="${offers}">		
				<div class="col-md-3">
					<div class="tile">
						<img class="img-responsive" src="${offer.media.offerImageUrl}" alt="Generic placeholder image">
						<div class="tileContent">
							<h5><a href="${pageContext.request.contextPath}/detail?offerId=${offer.offerId}">${offer.title}</a></h5>
							<p class="offer-desc">${offer.subTitle}</p>
							
							<div class="row">
								<div class="col-xs-6">
									<c:if test="${offer.tagTier[0] == 'EXPERIENCE'}">
										<span class="tierIcon bgOrange" title="This is an experience"><i class="fa fa-bolt"></i></span>
									</c:if>
								</div>
								<!-- div class="col-xs-6 alignRight">
									<a class="btn btn-info btn-sm" href="${pageContext.request.contextPath}/detail?offerId=${offer.offerId}" role="button">View details »</a>
								</div-->
							</div>
							
							
								
										
						</div>
					</div>
				</div>
            </c:forEach>
		</div>
		</c:if>
			
<c:if test="${ data.errorMessage != null }">
	<div class = "error">	
		<h2>Error</h2>
		<p>
		    The following error occurred while trying to get the Request Token from the MasterCard API.
		</p>	
<pre>
<code>
${data.errorMessage }
</code>
</pre>
	</div>
</c:if>
			<p>Final step! Log the transaction to MasterCard's services.</p>
			<fieldset>
				<legend>Sent:</legend>
				<table>
					<tr>
						<th>
							Authorization Header 
<!-- 							<span class='tooltip' id='authHeader'>[?]</span> -->
						</th>
						<td>
							<code>${ data.authHeader }</code>
						</td>
					</tr>
					<tr>
						<th>
							Signature Base String 
<!-- 							<span class='tooltip' id='sbs'>[?]</span> -->
						</th>
						<td>
							<hr> 
							<code>${data.signatureBaseString }</code>
						</td>
					</tr>
					<tr>
						<th>
							Sent Body  
<!-- 							<span class='tooltip' id='postbackSent'>[?]</span> -->
						</th>
						<td><pre>
<code>
${data.postTransactionSentXml }
</code>
</pre>
						</td>
					</tr>
				</table>
			</fieldset>

			<fieldset>
				<legend>Sent To:</legend>
				<table>
					<tr>
						<th>
							Transaction URL 
<!-- 							<span class='tooltip' id='postbackEndpoint'>[?]</span> -->
						</th>
						<td>
							${data.postbackurl }
						</td>
					</tr>
				</table>
			</fieldset>
			<fieldset>
				<legend>Received:</legend>
				<table>
					<tr>
						<th>
							Received Body  
<!-- 							<span class='tooltip' id='postbackReceived'>[?]</span> -->
						</th>
						<td><pre>
<code>
${data.postTransactionReceivedXml }
</code>
</pre>
						</td>
					</tr>
				</table>
			</fieldset>
			<form action="./" method="get">
				<input value="Click To Start Over" type="submit">
			</form>
		</div>
		<div id="footer"></div>
	</div>
</body>
</html>

