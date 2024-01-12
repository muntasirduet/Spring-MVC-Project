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
	<link rel="stylesheet" href="vendor/card/card.css">
	<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
<title>edit Subject Profile</title>
<div class="container-fluid container-default">
	<div class="row">
		<nav class="navbar navbar-default">
		  <div>
		    <div class="navbar-header">
		      <a class="navbar-brand" href="#"><c:out value="${map.subject_name}"></c:out></a>
		      <br><div class="sub-header">Subject Profile</div>
		    </div>
		  </div>
		</nav>
	</div>
	<div class="row">
		<ul class="breadcrumb">
			<li><a href="#">Subject List</a></li>
			<li class="active"><c:out value="${map.subject_name}"></c:out></li>
		</ul>
	</div>
	<div class="row">
		<div class="col-md-8">
			<div class="sa-card">
				<div class="sa-card-header bg-cyan">
					<div class="pull-left header-title">Students</div>
					<div class="pull-right">
						<button type="button" class="btn btn-list"><i class="fa fa-th-list"></i>List</button>
						<button type="button" class="btn btn-add"><i class="fa fa-plus"></i>Add</button>
						<button type="button" class="btn btn-remove"><i class="fa fa-minus"></i>Remove</button>
					</div>
				</div>
				<div class="sa-card-body">
					<div class="button-group">
						<button type="button" class="btn btn-user"><i class="glyphicon glyphicon-user"></i><br>forid</button>
						<button type="button" class="btn btn-user"><i class="glyphicon glyphicon-user"></i><br>karim</button>
						<button type="button" class="btn btn-user"><i class="glyphicon glyphicon-user"></i><br>malek</button>
						<button type="button" class="btn btn-user"><i class="glyphicon glyphicon-user"></i><br>sajedul</button>
						<button type="button" class="btn btn-user"><i class="glyphicon glyphicon-user"></i><br>Kamal khan</button>
						<button type="button" class="btn btn-user"><i class="glyphicon glyphicon-user"></i><br>Sumon Mia</button>
						<button type="button" class="btn btn-user"><i class="glyphicon glyphicon-user"></i><br>Monir Uddin</button>
						<button type="button" class="btn btn-user"><i class="glyphicon glyphicon-user"></i><br>Momin Mullah</button>
					</div>
				</div>
			</div>
			<div class="sa-card">
				<div class="sa-card-header bg-cyan">
					<div class=" assessments">Assessments</div>
				</div>
				<div class="sa-card-body">
					<div class="text-center margin-top--52">
						<div class="glyphicon-ring glyphicon-green"> <span class="fa fa-book glyphicon-bordered"></span>
						</div>
						
					</div>
					<div>
						<button type="button" class="btn btn-add"><i class="fa fa-plus"></i>Add Assessment</button>
					</div>
				</div>
				<div class="sa-card-footer">
					This hass no Assessment
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="sa-card">
				<div class="sa-card-header">
					<div class="pull-left"><b>General</b> info</div>
					<div class="pull-right">
						<button type="button" class="btn btn-edit">Edit</button>
					</div>
				</div>
				<div class="sa-card-body">
					<div class="form-horizontal">
						<div class="form-group bg-f9 padding-4">
							<div class="col-md-3 label-align padding-right-0">
								<div>Descripton</div>
							</div>
							<div class="col-md-7">
								<div>Subject Profile</div>
							</div>
						</div>
						<div class="form-group padding-4">
							<div class="col-md-3 label-align padding-right-0">
								<div>Teacher</div>
							</div>
							<div class="col-md-7">
								<div>Mizanur Rahman(you)</div>
							</div>
						</div>
						<div class="form-group bg-f9 padding-4">
							<div class="col-md-3 label-align padding-right-0">
								<div>Note</div>
							</div>
							<div class="col-md-7">
								<div></div>
							</div>
						</div>
						<div class="form-group padding-4">
							<div class="col-md-3 label-align padding-right-0">
								<div>Meeting Days</div>
							</div>
							<div class="col-md-7">
								<div><div class="label">sun</div><div class="label">mon</div><div class="label">tue</div><div class="label">wed</div>
								<div class="label">thu</div><div class="label">fri</div><div class="label">sat</div></div>
							</div>
						</div>
						<div class="form-group bg-f9 padding-4">
							<div class="col-md-3 label-align padding-right-0">
								<div>Class Tags</div>
							</div>
							<div class="col-md-7">
								<div>There are no tags configured for this class</div>
							</div>
						</div>
						<div class="form-group bg-f9 padding-4">
							<div class="col-md-3 label-align padding-right-0">
								<div>Class icon</div>
							</div>
							<div class="col-md-7">
								<div><i class="fa fa-book"></i></div>
							</div>
						</div>
						<div class="form-group bg-f9 padding-4">
							<div class="col-md-3 label-align padding-right-0">
								<div>Status</div>
							</div>
							<div class="col-md-7">
								<div>Active</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="sa-card">
				<div class="sa-card-header">
					<div class="pull-left"><b>Custom</b> Field</div>
					<div class="pull-right">
						<button type="button" class="btn btn-edit">Edit</button>
					</div>
				</div>
				<div class="sa-card-body">
					
				</div>
			</div>
			<div class="sa-card">
				<div class="sa-card-header">
					<div class="pull-left"><b>Quick Message</b></div>
				</div>
				<div class="sa-card-body">
					<div class="form-horizontal">
						<div class="form-group bg-f9 padding-4">
							<div class="col-md-5 label-align padding-right-0">
								<div>Email Parents</div>
							</div>
							<div class="col-md-7">
								<div><button type="submit" class="btn btn-send">Send Email</button></div>
							</div>
						</div>
						<div class="form-group bg-f9 padding-4">
							<div class="col-md-5 label-align padding-right-0">
								<div>Email Students</div>
							</div>
							<div class="col-md-7">
								<div><button type="submit" class="btn btn-send">Send Email</button></div>
							</div>
						</div>
						<div class="form-group bg-f9 padding-4 hr-dashed">
							<div class="col-md-5 label-align padding-right-0">
								<div>Text/Sms Parents</div>
							</div>
							<div class="col-md-7">
								<div><button type="submit" class="btn btn-send">Send Text/Sms</button></div>
							</div>
						</div>
						<div class="form-group bg-f9 padding-4">
							<div class="col-md-5 label-align padding-right-0">
								<div>Text/Sms Parents</div>
							</div>
							<div class="col-md-7">
								<div><button type="submit" class="btn btn-send">Send Text/Sms</button></div>
							</div>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</div>
</div>

<style>
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
		border-radius: 12px 12px 12px 12px;
		border: 1px solid #ddd;
	}
</style>