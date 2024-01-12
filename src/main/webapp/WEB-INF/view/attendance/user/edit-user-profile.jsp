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
	<link rel="stylesheet" href="vendor/bootstrap-dropdown/bootstrap-dropdown-css/CommonDropdown.css">
	<link rel="stylesheet" href="vendor/card/card.css">
	<script src="vendor/bootstrap-dropdown/bootstrap-dropdown-js/CommonDropdown.js"></script>
	
	<div class="container-fluid container-default">
		<div class="row">
			<nav class="navbar navbar-default">
			  <div>
			    <div class="navbar-header pull-left">
			      <a class="navbar-brand" href="#"><c:out value="${map.first_name}"></c:out> <c:out value = "${map.last_name}"></c:out> </a>
			    </div>
			    <div class="pull-right">
			    	<button type="button" class="btn btn-default bg-transparent no-border no-outline"><i class="fa fa-user-circle-o"></i></button>
			    </div>
			  </div>
			</nav>
		</div>
		<div class="row">
			<div class="col-md-8">
				<div class="sa-card">
					<div class="sa-card-header font-size-16 bg-f9 padding-top-16">
						<div class="pull-left"><b><c:out value = "${map.first_name}"></c:out></b>'s info...</div>
					</div>
					<gts:AjaxForm dataHandler="" action="${PageContext.request.ContextPath}userupdate">
					<div class="sa-card-body">
						<div class="form-horizontal">
							<div class="form-group hr-dashed padding-4">
								<div class="col-md-3 label-align padding-right-0">
									<gts:Label name="${map.lb_name}" labelFor="name"/>
								</div>
								<div class="col-md-3">
									<gts:TextArea name="first_name" cssClass = "input-sm" value = "${map.first_name}"/>
								</div>
								<div class="col-md-3">
									<input type = "text" name="last_name" class="form-control input-sm" value="${map.last_name}" placeholder="last name">
								</div>
							</div>
							<div class="form-group hr-dashed padding-4">
								<div class="col-md-3 label-align padding-right-0">
									<gts:Label name="${map.lb_emailAddress }" labelFor="email_address"/>
								</div>
								<div class="col-md-6">
									<input type="email" name="email_address" class="form-control input-sm" value="${map.email_address}" placeholder="email">
								</div>
							</div>
							<div class="form-group hr-dashed padding-4">
								<div class="col-md-3 label-align padding-right-0">
									<gts:Label name="${map.lb_phoneNumber }" labelFor="phone_number"/>
								</div>
								<div class="col-md-6">
									<input type name="phone_number" class="form-control input-sm" placeholder="phone number">
								</div>
							</div>
							<div class="form-group hr-dashed padding-4">
								<div class="col-md-3 label-align padding-right-0">
									<gts:Label name="${map.lb_mobileNumber }" labelFor="mobile_number"/>
								</div>
								<div class="col-md-6">
									<input type name="mobile_phone_number" class="form-control input-sm" placeholder="mobile phone number">
								</div>
							</div>
							<div class="form-group hr-dashed padding-4">
								<div class="col-md-3 label-align padding-right-0">
									<gts:Label name="${map.lb_country }" labelFor="country"/>
								</div>
								<div class="col-md-6">
									<div class = "single-dropdown">
										<select name = "country">
											<option class = "placeholder" value = "0">Seclect Country</option>
											<option value = "adi">Akash</option>
										</select>
									</div>
									
								</div>
							</div>
							<div class="form-group hr-dashed padding-4">
								<div class="col-md-3 label-align padding-right-0">
									<gts:Label name = "${map.lb_school}" labelFor = "school"/>
								</div>
								<div class="col-md-6">
									<input type name="group_school" class="form-control input-sm" placeholder="Group/School">
								</div>
							</div>
							<div class="form-group hr-dashed padding-4">
								<div class="col-md-3 label-align padding-right-0">
									<gts:Label name="${map.lb_userType}" labelFor="user_type" />
								</div>
								<div class="col-md-6">
									<div class = "single-dropdown">
										<select name = "first">
											<option class = "placeholder" value = "0">Select User</option>
											<option value = "adi">Attendance Tracker</option>
										</select>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="sa-card-footer">
						<div class="text-center">
							<button type="submit" class="btn btn-send"><i class="fa fa-angle-right"></i>Submit</button>
						</div>
					</div>
					</gts:AjaxForm>
				</div>
			</div>
			<div class="col-md-4">
				<div class="sa-card">
					<div class="sa-card-header font-size-16">
						<div class="pull-left"><b>Notifications</b></div>
					</div>
					<div class="sa-card-body padding-16">
						<div class="bg-danger color-red notifications">
							Please update the indicated problems with this parent!
						</div>
					</div>
					<div class="sa-card-footer">
						<div class="bg-f9 padding-8">
							<div><a href="#"><i class="fa fa-phone"></i> incorrect phone</a></div>
						</div>
					</div>
				</div>
				<div class="sa-card">
					<div class="sa-card-header font-size-16">
						<div class="pull-left"><b>classes</b></div>
						<div class="pull-right">
							<button type="button" class="btn btn-edit">Edit</button>
						</div>
					</div>
					<div class="sa-card-body">
						<div class="form-group bg-f9 padding-4 inline-block">
							<div class="col-md-4">
								<div>Current Classes</div>
							</div>
							<div class="col-md-8">
								<a href="#">&nbsp;3rd Semister</a>,<a href="#">5th Semister</a>
							</div>
						</div>
					</div>
				</div>
				<div class="sa-card">
					<div class="sa-card-header font-size-16">
						<div class="pull-left"><b><c:out value = "${map.first_name}"></c:out>'s</b> Avatar</div>
					</div>
					<div class="sa-card-body padding-8">
						<div class="text-center avatar"><img src="avatar.png"></div>
							<div class="form-group bg-f9 padding-4 inline-block">
								<div class="col-md-3">
									<div class="control-label">Image Upload</div>
								</div>
								<div class="col-md-8">
									<input type="file">
								</div>
						</div>
					</div>
					<div class="sa-card-footer">
						<div class="text-center">
							<div>
								<div class="btn-group">
									<button type="submit" class="btn btn-danger"><i class="glyphicon glyphicon-remove"></i>Remove</button>
								</div>
								<div class="btn-group">
									<button type="submit" class="btn btn-send"><i class="fa fa-angle-right"></i>Submit</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="sa-card">
					<div class="sa-card-header font-size-16">
						<div class="pull-left"><b>Change Password</b></div>
					</div>
					<div class="sa-card-body">
						<div>
							<button type="button" class="btn btn-send"><i class="fa fa-lock"></i>Click Here To Change Password</button>
						</div>
					</div>
				</div>
				<div class="sa-card">
					<div class="sa-card-header font-size-16">
						<div class="pull-left"><b>Change Password</b></div>
					</div>
					<div class="sa-card-body">
						<div>
							<button type="button" class="btn btn-danger"><i class="fa fa-trash-o"></i>Delete Here To Delete <c:out value = "${map.first_name }"></c:out> <c:out value = "${map.last_name }"></c:out></button>
						</div>
					</div>
				</div>
			</div>
		</div>
</div>

<style>
	.fa-trash-o{
		color: white;
	}
	.fa{
	color: white;
	font-size: 28px;
	padding-right: 4px;
	}
	.div-padding{
		padding: 32px 16px 16px 16px;
		
	}
	.div-title{
		font-size: 22px;
		color: white;
	}
	.glyphicon{
		padding-right: 4px;
		color:white;
	}
	.btn-config{
		color: white;
		background: #5AD1EC;
	}
	.container-fluid{}
	.navbar-default {
	    border-color: #e7e7e7;
	    padding-top: 12px;
	    padding-bottom: 12px;
    /* font-weight: 200; */
    }
	@media (min-width: 768px){
	.navbar-header {
	    float: left;
	    padding: 27px;
	}
	}
	.navbar-brand {
	    float: left;
	    height: 50px;
	    padding: 14px 15px;
	    font-size: 29px;
	    line-height: 20px;
	    font-weight: 100;
	}
	a.navbar-brand {
		font-weight: 200;
			
		}
	
	.padding-left-14{
		padding-left: 14px;
	}
	.sub-header{
		font-weight: 200;
		font-size: 16px;
		padding-left: 15px;
	}
	
	.sa-card{
	background-color: #ffffff;
	width: 100%;
	margin-top: 22px;
	border: 1px solid #ddd;
	}
	.bg-cyan{
		background: #403d64 !important;
	}
	.sa-card-header{
		width: 100%;
		display: inline-block;
		border-bottom: 1px solid #ddd;
		padding: 6px 16px;
		background-color: #fdfdfd;
	}

	.sa-card-body{
		width: 100%;
		display: inline-block;
		padding: 20px;
	}
	
	.sa-card-footer{
		width: 100%;
		display: inline-block;
		padding: 6px 16px;
		border-top: 1px solid #ddd;
		background-color: #fbfdfd;
	}
	.bg-danger{
		background: #ffcdc9;
	}
	.color-red{
		color: red;
	}
	.header-title{
		font-size: 28px;
		color: white;
	}
	.assessments{
		font-size:36px;
		color:white;
		padding: 20px;
		text-align:center !important;
	}
	.padding-right-0{
		padding-right: 0px;
	}
	.label-align{
		text-align: right;
	}
	.bg-f9{
		background: #f9f9f9;
	}
	.padding-4{
		padding:4px;
	}
	.label{
		background: #ddd;
		margin:2px;
		line-height: 2;
		font-size: 12px;
	}
	.fa{
		font-size: 20px;
	}
	@media(max-width: 992px){
		.label-align{
			text-align: left;
		}
	}
	.glyphicon-user{
		font-size: 70px;
		color: #ddd;
	}
	.btn-user{
		background:transparent;
		padding:0px;
		margin: 0px;
	}
	.hr-dashed{
		padding:4px;
		border-bottom:1px dashed #ddd ;
	}
	/**CSS FOR THE RING**/
	
	.glyphicon-ring {
	  width: 60px;
	  height: 60px;
	  border-radius: 50%;
	  border: 4px solid white;
	  color: white;
	  display: inline-table;
	  text-align: center;
	}
	/**CSS FOR ICON WITH NO BACKGROUND COLOR**/
	
	.glyphicon-ring .glyphicon-bordered {
	  font-size: 20px;
	  vertical-align: middle;
	  display: table-cell;
	}
	/**WITH AN ADDED BACKGROUND COLOR**/
	
	.glyphicon-white {
	  background: white;
	  color: black;
	  border: 4px solid black;
	}
	.glyphicon-teal {
	  background: teal;
	  color: orange;
	}
	.glyphicon-green {
	  background: #00bc62;
	}
	.margin-top--52{
		margin-top: -52px;
	}
	.fa-book{
		font-size: 20px;
		color:white;
	}
	.container-default{
		background: #ddd;
	}
	.fa-th-list{
		font-size: 14px;
	}
	.btn-list{
		background: #f1f2f6;
	}
	.fa-plus{
		color: white;
		font-size: 16px;
	}
	.btn-add{
		background: #96de77;
		color: white;
	}
	.btn-remove{
		background: #f8807b;
		color: white;
	}
	.fa-minus{
		font-size: 16px;
		color: white;
	}
	.btn-send{
		background: #5ae1dc;
		color: white;
	}
	.breadcrumb > li + li:before {
    	content: "\3E"
	}
	.bg-white{
		background: white;
	}
	.breadcrumb{
		background: #fff;
		margin-bottom: 8px;
	}
	.margin-top--20{
		margin-top: -20px;
	}
	.padding-top-0{
		padding-top: 0px;
	}
	.btn-edit{
		background: #fff;
		border-radius: 12px 12px 12px 12px;
		border: 1px solid #ddd;
	}
	.fa-pencil{
		font-size: 16px;
	}
	.padding-16{
		padding: 16px;
	}
	.notifications{
		padding: 16px;
		border-radius: 8px;
	}
	.padding-8{
		padding: 8px;
	}
	.glyphicon-phone{
		color: #000;
		font-size: 14px;
	}
	.fa-bars{
		color: #000;
	}
	.bg-transparent{
		background: transparent;
	}
	.no-border{
		border: none;
	}
	.no-outline{
		outline: none;
	}
	.padding-left-0{
		padding-left: 0px;
	}
	.font-size-16{
		font-size: 16px;
	}
	.table{
		border: none;
	}
	.table> tbody> tr> td{
		border-top:none;
	}
	.fa-user-circle-o{
		padding-top: 15px;
		font-size: 58px;
		color: #ddd;
	}
	.fa-angle-right{
		color: white;
	}
	a>.fa-phone{
		font-size: 14px;
		color: #337ab7;
	}
	.inline-block{
		display: inline-block;
	}
	.fa-lock{
		color: white;
	}
	.row{
		margin:0px;
	}
	.padding-top-16{
		padding-top:16px;
	}
	.fa-pencil{
		color: black;
	}
</style>