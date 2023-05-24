<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<jsp:include flush="true" page="header.jsp" />
        <div class="container">
            <jsp:include page="message.jsp"/>
            <div class="row">
                
                <div class="col-sm-6 mx-auto">
                <div class="card shadow">
                <div class="card-header text-center">
                	<h5>Student Registration</h5>
                </div>
                	<div class="card-body">                	
                	<form method="post" action="/register">
                        <div class="form-group form-row">                        
                            <label class="col-sm-4 col-form-label">Name</label>
                            <div class="col-sm-8">
                            <input type="text" name="name" required class="form-control"
                                   placeholder="Student Name">
                            </div>
                        </div>
                        <div class="form-group form-row">                        
                            <label class="col-sm-4 col-form-label">Address</label>
                            <div class="col-sm-8">
                            <input type="text" name="address" required class="form-control"
                                   placeholder="Address">
                        </div>
                        </div>
						<div class="form-group form-row">                        
                            <label class="col-sm-4 col-form-label">Phone</label>
                            <div class="col-sm-8">
                            <input type="text" name="phone" maxlength="10" required class="form-control"
                                   placeholder="Contact Number">
                        </div>
                        </div>
						<div class="form-group form-row">                        
                            <label class="col-sm-4 col-form-label">Email Id</label>
                            <div class="col-sm-8">
                            <input type="email" name="email" required class="form-control"
                                   placeholder="Email Address">
                        </div>
                        </div>
                        
                        <div class="form-group form-row">                        
                            <label class="col-sm-4 col-form-label">Gender</label>
                            <div class="col-sm-8">
                            <select name="gender" required class="form-control">	
                            	<option value="">Select Gender</option>
                            	<option>Male</option>
                            	<option>Female</option>
                            </select>
                        </div>
                        </div>

                        <input type="submit" value="Register" class="btn btn-primary float-right px-3">
                    </form>
                	</div>
                </div>
                                
                </div>
            </div>
        </div>        
    </body>
</html>
