	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix = "gts" uri = "/WEB-INF/custom.tld" %>
	
	<!-- start: META -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta content="" name="description" />
    <meta content="" name="author" />
	<!-- end: META -->
	
	<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
  	<script src="vendor/bootstrap-dropdown/bootstrap-dropdown-js/CommonDropdown.js"></script>
  	<link rel="stylesheet" href="vendor/bootstrap-dropdown/bootstrap-dropdown-css/CommonDropdown.css">
  	<div class="container-fluid">
  	
	<button class="btn btn-success" data-toggle = "modal" data-target = "#edit-parent-bio-info">Modal</button>
		<div class="modal fade" id="edit-parent-bio-info">
			<div class="modal-dialog">
				<div class="modal-content">
				<form action="${PageContext.request.Contextpath}update" method  = "POST">
					<div class="modal-header">
						<button class="close fade" data-dismiss = "modal">&times</button>
						<span class="header_text">Edit <c:out value = "${map.first_name}"></c:out> Bio Info</span>
					</div>
					<div class="modal-body">
						<div class = "row">
							<div class = "form-horizontal">
								<div class = "form-group">
									<gts:Label name = "${map.lb_name}" labelFor = "name" cssClass = "control-label pull-left"/>
									<div class = "pull-left name_input">
										<gts:TextBox name="first_name" cssClass = "form-control" value = "${map.first_name}"/>
									</div>
									<div class = "pull-left name_input" style = "margin-left:3%">
										<gts:TextBox name="last_name" cssClass = "form-control" value = "${map.last_name}"/>
									</div>
								</div><hr>
								
								<div class = "form-group">
									<gts:Label name = "${map.lb_famillyRole }" labelFor = "familly_role" cssClass = "control-label pull-left"/>
										<div class = "pull-left existing_student_input">
  									  		<div class = "single-dropdown">
												<select name = "familly_role">
													<option class = "placeholder" value = "0">Select Familly Role</option>
													<option value = "Akash">Akash</option>
													<option value = "Sakib">Sakib</option>
													<option value = "Saima">Saima</option>
												</select>
											</div>
									 	 </div>
								</div><hr>
								
								<div class = "form-group">
									<gts:Label name = "${map.lb_emailAddress}" labelFor = "email_address" cssClass = "control-label pull-left"/>
									<div class = "existing_student_input pull-left">
										<gts:TextBox name="email_address" cssClass = "form-control" value = "${map.email_address}"/>
									</div>
								</div><hr>
								
								<div class = "form-group">
									<gts:Label name = "${map.lb_phone}" labelFor = "phone" cssClass = "control-label pull-left"/>
									<div class = "pull-left name_input" style = "">
										<gts:TextBox name="home_number" cssClass = "form-control" value = "${map.home_phone}"/>
										<p class = "">home</p>
									</div>
									<div class = "pull-left name_input" style = "margin-left:3%">
										<gts:TextBox name="mobile_number" cssClass = "form-control" value = "${map.mobile_phone}"/>
										<p class = "">mobile</p>
									</div>
								</div><hr>
								
								<div class = "form-group">
									<gts:Label name = "${map.lb_country}" labelFor = "country" cssClass = "control-label pull-left"/>
									<div class = "country_field pull-left">
  										<div class = "single-dropdown">
											<select name = "country">
												<option class = "placeholder" value = "0">Select Country</option>
												<c:forEach var  = "country" items = "${map.getCountries}">
													<option value = "${country.getKey()}">${country.getValue()}</option>
												</c:forEach>
											</select>
										</div>
  										<p>This is used when sending international SMS message Default to US/CANADA</p>
									</div>
								</div><hr>
								
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button class="btn btn-danger pull-left" data-dismiss = "modal">Delete</button>
						<button class="btn btn-default" data-dismiss = "modal">Cancel</button>
						<button type = "submit" class="btn btn-success">Save Changes</button>
					</div>
					</form>
				</div>
			</div>
		</div>
 
	</div>
	
	<style type="text/css">
	button{
        outline: none !important;
    }
    
    .btn{
        margin: 0px;
        padding: 6px 16px;
        border-radius: 2px;
        height: 28px;
        font-weight: 300;
        font-size: 10px;
        box-shadow: none !important;
        word-spacing: 0px;
    }
    
    .btn-default, .btn-default:focus, .btn-default:active{
        color: #575a5d;
        border: 1px solid #C5CFD2;
        background-color: #FAFAFA;
    }        
    
    .btn-success, .btn-success:focus, .btn-success:active{
        color: #FFFFFF;
        background-color: #57de42;
        border: 1px solid #57de42;
    }
    
    .btn-success:hover{
        color: #FFFFFF;
        background-color: #52d43d !important;
        border: 1px solid #52d43d !important;
    }
	
	
	.header_text{
		font-size:22px;
		font-weight:300;
	}
	.modal-footer{
		background-color:rgb(249,249,249) !important;
	}
	.control-label{
		width:25%;
		text-align: right;
		margin:6px;
		font-weight:400;
		padding:0px !important;
	}
	.name_input{
		width:30%;
		float:left;
		margin-left:3%;
	}
	.existing_student_input{
		width:50%;
		margin-left:3%;
	}
	.country_field{
		width:60%;
		margin-left:3%;
	}
	
	</style>