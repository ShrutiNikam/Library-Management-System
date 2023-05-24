<jsp:include page="header.jsp"></jsp:include>

<h4 class="title">Admin Dashboard</h4>
<div class="container">
	<div class="row">
	<div class="col-sm-4">
		<div class="card shadow">
			<div class="card-body bg-primary text-white text-right">
				<h4>Total Books</h4>
				<h5>${books }</h5>
			</div>
		</div>
		</div>
		<div class="col-sm-4">
		<div class="card shadow">
			<div class="card-body bg-info text-white text-right">
				<h4>Registered Students</h4>
				<h5>${users }</h5>
			</div>
		</div>
		</div>
	</div>
</div>

<jsp:include page="footer.jsp"></jsp:include>