<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard</title>
        <link href="/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" href="/images/liblogo.png"/>
        <style>
        .body {    
    background: linear-gradient(rgb(219 227 246 / 30%) 100%,rgb(204 212 230 / 30%) 100%), url(../images/libbg.jpg);
    background-size: 100% 100%;
    background-attachment: fixed;
    min-height:100vh;
}
.table{
	width:100%;
	margin:auto;
	border-collapse: collapse;	
	margin-top:10px;
}
.table td,.table th{
	border:1px solid black;
	padding:10px;
}
.table tbody tr{
	background-color:lightgreen;
}
        </style>
    </head>
    <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Library</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="/dashboard">Dashboard</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/books">Books</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/issue">Issue books</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/return">Return Book</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/users">Users</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/report">Report</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/logout">Logout</a>
      </li>
    </ul>
  </div>
</nav>
        <div class="container-fluid body">
                    <div class="p-3" style="min-height:92vh;">

