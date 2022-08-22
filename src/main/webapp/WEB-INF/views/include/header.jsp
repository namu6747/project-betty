<%@page import="java.awt.print.Printable"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<c:set var="path" value="${pageContext.request.contextPath}" /> 
  
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>베티 도서관 </title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

	<!-- 추가 -->
    <link rel="stylesheet" href="${path}/resources/css/table.css" type="text/css">
    <link rel="stylesheet" href="${path}/resources/css/mypage.css" type="text/css">
    <link rel="stylesheet" href="${path}/resources/css/modal.css" type="text/css">
   	<link rel="stylesheet" href="${path}/resources/css/sidebar.css" type="text/css">
   	<link rel="stylesheet" href="${path}/resources/css/betty.css" type="text/css">
   
    <!-- Css Styles -->
    <link rel="stylesheet" href="${path}/resources/css/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="${path}/resources/css/font-awesome.css" type="text/css">
    <link rel="stylesheet" href="${path}/resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${path}/resources/css/plyr.css" type="text/css">
    <link rel="stylesheet" href="${path}/resources/css/owl.carousel.css" type="text/css">
    <link rel="stylesheet" href="${path}/resources/css/slicknav.css" type="text/css">
    <link rel="stylesheet" href="${path}/resources/css/style.css" type="text/css">
    <link rel="stylesheet" href="${path}/resources/css/pjs.css" type="text/css">
    
    <!-- fullcalendar CDN -->
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/fullcalendar@5.11.2/main.min.css' />
    <!-- table style -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap4.min.css" type="text/css">
    <!-- bootstrap icon -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    
</head>

 
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

<%@include file="/WEB-INF/views/include/nav/header-nav.jsp" %>
	

