<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<html>
<head>
<link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="node_modules/bootflat/bootflat/css/bootflat.css">

<link rel="stylesheet" href="css/item.css">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/fonts.css">
<link rel="stylesheet" href="header.css">

<script src="node_modules/jquery/dist/jquery.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/egjs/1.3.0/pkgd/eg.pkgd.min.js"></script>
<script src="header.js"></script>

</head>


<body>
  <div>
      <jsp:include page="header.jsp"></jsp:include>
  </div>
  <div>
     <jsp:include page="main.jsp"></jsp:include>
  </div>
</body>


</html>