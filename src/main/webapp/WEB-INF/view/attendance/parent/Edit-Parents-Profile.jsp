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

<div class="container-fluid ">
	<div class="row  bg-white">
		<div class="form-group">
			<div class="pull-left">
				<button type="button" class="btn btn-default bg-transparent no-border"><i class="fa fa-bars"></i></button>
			</div>
			<div class="col-md-6">
				<input type="text" class="form-control bg-transparent no-border no-outline" placeholder="search...">
			</div>
			<div class="pull-right">
				<button type="button" class="btn btn-default bg-transparent no-border no-outline"><i class="fa fa-user-circle-o"></i><i class="fa fa-angle-down"></i></button>
			</div>
		</div>
	</div>
		<div class="row">
			<nav class="navbar navbar-default">
			  <div>
			    <div class="navbar-header">
			      <a class="navbar-brand" href="#"><c:out value = "${map.first_name}"></c:out> <c:out value="${map.last_name}"></c:out></a>
			      <br><div class="sub-header">Parent Profile</div>
			    </div>
			  </div>
			</nav>
		</div>
		<div class="row">
			<div class="col-md-8 padding-left-0">
				<div class="sa-card">
					<div class="sa-card-header font-size-16">
						<div class="pull-left ">About <b><c:out value = "${map.first_name}"></c:out></b></div>
						<div class="pull-right">
							<button type="button" class="btn btn-edit"><i class="fa fa-pencil"></i>Edit</button>
						</div>
					</div>
					<div class="sa-card-body">
						<div class="form-horizontal">
							<div class="form-group bg-f9 padding-4">
								<div class="col-md-3 label-align padding-right-0">
									<gts:Label name="${map.lb_famillyRole }" labelFor="family_role"/>
								</div>
								<div class="col-md-7">
									<div>There is no family role for <c:out value = "${map.first_name}"></c:out></div>
								</div>
							</div>
							<div class="form-group padding-4">
								<div class="col-md-3 label-align padding-right-0">
									<gts:Label name="${map.lb_emailAddress }" labelFor="email_address"/>
								</div>
								<div class="col-md-7">
									<div>There is no email address for <c:out value = "${map.first_name}"></c:out></div>
									<c:out value = ""></c:out>
								</div>
							</div>
							<div class="form-group bg-f9 padding-4">
								<div class="col-md-3 label-align padding-right-0">									
									<gts:Label name = "${map.lb_phone}" labelFor = "phone"/>
								</div>
								<div class="col-md-7">
									<div>There is no home phone number for <c:out value = "${map.first_name}"></c:out>.<br> 01555000969(mobile)</div>
								</div>
							</div>
							<div class="form-group padding-4">
								<div class="col-md-3 label-align padding-right-0">
									<gts:Label name = "${map.lb_password}" labelFor = "password"/>
								</div>
								<div class="col-md-7">
									<div><a href="#">Change <c:out value = "${map.first_name}"></c:out>'s Password</a></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="sa-card">
					<div class="sa-card-header font-size-16">
						<div class="pull-left">Recent Message</div>
						<div class="pull-right">
							<button type="button" class="btn btn-default"><i class="glyphicon glyphicon-phone"></i>send message</button>
						</div>
					</div>
					<div class="sa-card-body">
						<div class="form-horizontal">
							<div class="form-group">
								<div class="col-md-3">
									<div>Date</div>
								</div>
								<div class="col-md-7">
									<div>Message</div>
								</div>
							</div>
						</div>
						<div class="bg-f9 padding-8">
							<div>No message has found</div>
						</div>
					</div>
				</div>
				<div class="sa-card">
					<div class="sa-card-header font-size-16">
						<div class="pull-left"><b>Invoice</b></div>
						<div class="pull-right">
							<button type="button" class="btn btn-default"><i class="glyphicon glyphicon-phone"></i>send message</button>
						</div>
					</div>
					<div class="sa-card-body">
						<div class="table-responsive">
							<table class="table">
								<tbody>
									<tr>
										<td>#</td>
										<td>Date</td>
										<td>Status</td>
										<td>Amount</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="bg-f9 padding-8">No invoice found</div>
					</div>
				</div>
			</div>
			<div class="col-md-4 padding-right-0">
				<div class="sa-card">
					<div class="sa-card-header font-size-16">
						<div class="pull-left"><b>Notifications</b></div>
						<div class="pull-right">
							<button type="button" class="btn btn-edit">Edit</button>
						</div>
					</div>
					<div class="sa-card-body padding-16">
						<div class="bg-danger color-red notifications">
							Please update the indicated problems with this parent!
						</div>
					</div>
					<div class="sa-card-footer">
						<div class="bg-f9 padding-8">
							<div><a href="#">@invalid email address</a></div>
						</div>
					</div>
				</div>
				<div class="sa-card" style="display: none;">
					<div class="sa-card-header font-size-16">
						<div class="pull-left"><b>Custom</b> Field</div>
						<div class="pull-right">
							<button type="button" class="btn btn-edit">Edit</button>
						</div>
					</div>
					<div class="sa-card-body">
						<div>No parents parent custom field found. <a href="#">click here</a> add some</div>
					</div>
				</div>
				<div class="sa-card">
					<div class="sa-card-header font-size-16">
						<div class="pull-left"><b>Students</b></div>
						<div class="pull-right">
							<button type="button" class="btn btn-edit">Edit</button>
						</div>
					</div>
					<div class="sa-card-body">
						<div class="bg-f9 padding-8"><a href="#">Harun Mia</a></div>
					</div>
				</div>
				<div class="sa-card">
					<div class="sa-card-header font-size-16">
						<div class="pull-left"><b>Attendance</b> at a glance</div>
					</div>
					<div class="sa-card-body">
						<div><b>Harun Mia</b></div>
						<div>No recent data found</div>
					</div>
				</div>
			</div>
		</div>
</div>

<style>

	body{
		padding-top: 8px;
		padding-bottom: 8px;
		background-color: #f4f4f5;
		padding: 8px 0px 8px 0px;
		color: #635a5a;
	}
	
	.container-fluid{
		background-color: transparent
	}

	.row{
		margin: 0px;
	}
	
	button{
		outline: none !important
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
	
	.navbar-default{
		background-color: #fff;
		border-radius: 0px;
		border-color: #fff !important;
	}
	
	.navbar-header{
		padding: 22px 0px !important; 
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
		padding-right: 0px !important;
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
		color: #000;
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
		border-radius: 2px;
		border: 1px solid #ddd;
	}
	.fa-pencil{
		font-size: 10px;
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
		font-size: 10px;
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
	.padding-right-0{
		padding-right: 0px;
	}
</style>