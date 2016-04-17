<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="data" class="com.mastercard.mcwallet.sampleapp.MasterpassData" scope="session">
</jsp:useBean>


<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Shopping Cart Sample Flow</title>
	<META content="text/html; charset=utf-8" http-equiv="Content-Type">
    <link rel="stylesheet" type="text/css" href="Content/Site.css"/>
    <script type="text/javascript" src="Scripts/jquery-1.5.1.js"></script>
    
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
	<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/stylesheets/site.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/stylesheets/components.css" rel="stylesheet">
</head>
<body class="cart">
	  <div class="page">
        <div id="header">
            <div id="title">
                <h1>Shopping Cart Sample Flow</h1>
            </div>
            <div id="logindisplay">
                &nbsp;
            </div>
        </div>
        <div id="main">
<div style="padding: 10px; border: 1px solid rgb(192, 192, 192);">

<h2><u><b>NEW Functionality</b></u>: Custom Offers presented to user at post checkout based on their profile configuration and transactions executed.
</h2>
		<c:if test="${not empty offers}">
		<div class="row">
			<c:forEach var="offer" items="${offers}">		
				<div class="col-md-3">
					<div class="tile">
						<div style="height:100px; border:1px solid #EAEAEA; background: url(${offer.media.offerImageUrl}) no-repeat top center; background-size:cover;"></div>
						<div class="tileContent">
							<h5><a href="${pageContext.request.contextPath}/detail?offerId=${offer.offerId}">${offer.title}</a></h5>
							<p class="offer-desc">${offer.price} <a href="https://www.amazon.com/s?ie=UTF8&field-keywords=${offer.title}">[Compare to Amazon]</a></p>
							
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


<pre><code>
${data.postTransactionReceivedXml }
</code>
</pre>
</div>
	<form action="./" method="get">
		<input value="Click To Start Over" type="submit">
	</form>
        </div>
        

        <div id="footer">
        </div>
    </div>
</body>
</html>