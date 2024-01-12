<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="gts" uri="/WEB-INF/custom.tld"%>

<!-- start: META -->
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta content="" name="description" />
<meta content="" name="author" />
<!-- end: META -->

<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="asset/myCommon/sa-card.css">
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

<title>edit shift profile</title>
<div class="container-fluid">
	<div class="row">
		<nav class="navbar navbar-default">
			<div>
				<div class="navbar-header">
					<a class="navbar-brand" href="#"><c:out value="${map.shift_name }"/></a> <br>
					<div class="sub-header">Shift profile</div>
				</div>
			</div>
		</nav>
	</div>
	<div class="row">
		<ul class="breadcrumb">
			<li><a href="#">Shift List</a></li>
			<li class="active"><c:out value="${map.shift_name }"/></li>
		</ul>
	</div>
	<div class="row">
		<div class="col-md-8">
			<div class="sa-card">
				<div class="sa-card-header bg-cyan">
					<div class="pull-left header-title">Students</div>
					<div class="pull-right">
						<gts:Button name="<i class='fa fa-th-list'></i>List"
							cssClass="btn btn-list" />
						<gts:Button name="<i class='fa fa-plus'></i>Add"
							cssClass="btn btn-add" />
						<gts:Button name="<i class='fa fa-minus'></i>Remove"
							cssClass="btn btn-remove" />
					</div>
				</div>
				<div class="sa-card-body">
					<div class="button-group">
						<gts:Button
							name="<i class='glyphicon glyphicon-user'></i><br>forid"
							cssClass="btn btn-user" />
						<gts:Button
							name="<i class='glyphicon glyphicon-user'></i><br>karim"
							cssClass="btn btn-user" />
						<gts:Button
							name="<i class='glyphicon glyphicon-user'></i><br>malek"
							cssClass="btn btn-user" />
						<gts:Button
							name="<i class='glyphicon glyphicon-user'></i><br>sajedul"
							cssClass="btn btn-user" />
						<gts:Button
							name="<i class='glyphicon glyphicon-user'></i><br>Kamal khan"
							cssClass="btn btn-user" />
						<gts:Button
							name="<i class='glyphicon glyphicon-user'></i><br>Sumon Mia"
							cssClass="btn btn-user" />
						<gts:Button
							name="<i class='glyphicon glyphicon-user'></i><br>Monir Uddin"
							cssClass="btn btn-user" />
						<gts:Button
							name="<i class='glyphicon glyphicon-user'></i><br>Momin Mullah"
							cssClass="btn btn-user" />
					</div>
				</div>
			</div>
			<div class="sa-card">
				<div class="sa-card-header bg-cyan">
					<div class=" assessments">Assessments</div>
				</div>
				<div class="sa-card-body">
					<div class="text-center margin-top--52">
						<div class="glyphicon-ring glyphicon-green">
							<span class="fa fa-book glyphicon-bordered"></span>
						</div>

					</div>
					<div>
						<gts:Button name="<i class='fa fa-plus'></i>Add Assessment"
							cssClass="btn btn-add" />
					</div>
				</div>
				<div class="sa-card-footer">This hass no Assessment</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="sa-card">
				<div class="sa-card-header">
					<div class="pull-left">
						<b>General</b> info
					</div>
					<div class="pull-right">
						<button type="button" class="btn btn-edit" data-toggle="modal" data-target="#edit_general_info">Edit general modal</button>
					</div>
					
					<div class="modal fade" role="dialog" id="edit_general_info">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header font-size-18">
									<div class="pull-left">
										Edit Shift Info
									</div>
									<div class="pull-right">
										<button class="close" data-dismiss="modal">&times;</button>
									</div>
								</div>
								<div class="modal-body">
									<div class="container-fluid">
										<div class="form-horizontal">
											<div class="form-group hr-dashed">
												<div class="col-md-3 label-align padding-right-0">
													<label class="control-label" labelFor="description" name="Description">Descripton</label>
												</div>
												<div class="col-md-7"> 
													<input type name="description" value="1st shift" class="form-control" placeholder="Shift Name" >
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="modal-footer">
									<div class="pull-left"><button type="button" class="btn btn-danger" data-dismiss="modal">Delete</button></div>
									<div class="pull-right">
										<div class="pull-left">
											<button type="submit" class="btn btn-default" data-dismiss="modal">Cancel</button>
										</div>
										<div class="pull-right">
											<button type="button" class="btn btn-save" data-dismiss="modal">Save Changes</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="sa-card-body">
					<div class="form-horizontal">
						<div class="form-group bg-f9 padding-4">
							<div class="col-md-3 label-align padding-right-0">
								<gts:Label name="${map.lb_shiftName }"
									labelFor="department_name" cssClass="padding-top-0" />
							</div>
							<div class="col-md-7 padding-top-8">
								<c:out value="${map.shift_name }"/>
							</div>
						</div>
					</div>

				</div>
			</div>
			<div class="sa-card" style="display: none;">
				<div class="sa-card-header">
					<div class="pull-left">
						<b>Custom</b> Field
					</div>
					<div class="pull-right">
						<gts:Button name="Edit" cssClass="btn btn-edit" />
					</div>
				</div>
				<div class="sa-card-body"></div>
			</div>
			<div class="sa-card">
				<div class="sa-card-header">
					<div class="pull-left">
						<b>Quick Message</b>
					</div>
				</div>
				<div class="sa-card-body">
					<div class="form-horizontal">
						<div class="form-group bg-f9 padding-4">
							<div class="col-md-5 label-align padding-right-0">
								<gts:Label name="${map.lb_emailParents }" labelFor="send_email" />
							</div>
							<div class="col-md-7">
								<div>
									<gts:Submit name="Send Email" cssClass="btn btn-send" />
								</div>
							</div>
						</div>
						<div class="form-group bg-f9 padding-4">
							<div class="col-md-5 label-align padding-right-0">
								<gts:Label name="${map.lb_emailStudents }" labelFor="send_email" />
							</div>
							<div class="col-md-7">
								<div>
									<gts:Submit name="Send Email" cssClass="btn btn-send" />
								</div>
							</div>
						</div>
						<div class="form-group bg-f9 padding-4 hr-dashed">
							<div class="col-md-5 label-align padding-right-0">
								<gts:Label name="${map.lb_textParents }"
									labelFor="Send Text/Sms" />
								<!-- <div>Text/Sms Parents</div> -->
							</div>
							<div class="col-md-7">
								<div>
									<gts:Submit name="Send Text/Sms" cssClass="btn btn-send" />
								</div>
							</div>
						</div>
						<div class="form-group bg-f9 padding-4">
							<div class="col-md-5 label-align padding-right-0">
								<gts:Label name="${map.lb_textStudents }"
									labelFor="Send Text/Sms" />
								<!-- <div>Text/Sms Parents</div> -->
							</div>
							<div class="col-md-7">
								<div>
									<gts:Submit name="Send Text/Sms" cssClass="btn btn-send" />
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
</div>

<style>
body {
	padding-top: 8px;
	padding-bottom: 8px;
	background-color: #f4f4f5;
	padding: 8px 0px 8px 0px;
	color: #635a5a;
}

.container-fluid {
	background-color: transparent
}

.row {
	margin: 0px;
}

button {
	outline: none !important
}

.btn {
	margin: 0px;
	padding: 6px 16px;
	border-radius: 2px;
	height: 28px;
	font-weight: 300;
	font-size: 10px;
	box-shadow: none !important;
	word-spacing: 0px;
}

.navbar-default {
	background-color: #fff;
	border-radius: 0px;
	border-color: #fff !important;
}

.navbar-header {
	padding: 22px 0px !important;
}

.fa {
	color: white;
	font-size: 28px;
	padding-right: 4px;
}

.div-padding {
	padding: 32px 16px 16px 16px;
}

.div-title {
	font-size: 22px;
	color: white;
}

.glyphicon {
	padding-right: 4px;
	color: white;
}

.btn-config {
	color: white;
	background: #5AD1EC;
}

.container-fluid {
	
}

.navbar-default {
	border-color: #e7e7e7;
	padding-top: 12px;
	padding-bottom: 12px;
	/* font-weight: 200; */
}

@media ( min-width : 768px) {
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

.padding-left-14 {
	padding-left: 14px;
}

.sub-header {
	font-weight: 200;
	font-size: 16px;
	padding-left: 15px;
}

.sa-card {
	background-color: #ffffff;
	width: 100%;
	margin-top: 22px;
	border: 1px solid #ddd;
}

.bg-cyan {
	background: #403d64 !important;
}

.sa-card-header {
	width: 100%;
	display: inline-block;
	border-bottom: 1px solid #ddd;
	padding: 6px 16px;
	background-color: #fdfdfd;
}

.sa-card-body {
	width: 100%;
	display: inline-block;
	padding: 20px;
}

.sa-card-footer {
	width: 100%;
	display: inline-block;
	padding: 6px 16px;
	border-top: 1px solid #ddd;
	background-color: #fbfdfd;
}

.header-title {
	font-size: 28px;
	color: white;
}

.assessments {
	font-size: 36px;
	color: white;
	padding: 20px;
	text-align: center !important;
}

.padding-right-0 {
	padding-right: 0px;
}

.label-align {
	text-align: right;
}

.bg-f9 {
	background: #f9f9f9;
}

.padding-4 {
	padding: 4px;
}

.label {
	background: #ddd;
	margin: 2px;
	line-height: 2;
	font-size: 12px;
}

.fa {
	color: #000;
	font-size: 20px;
}

@media ( max-width : 992px) {
	.label-align {
		text-align: left;
	}
}

.glyphicon-user {
	font-size: 70px;
	color: #ddd;
}

.btn-user {
	background: transparent;
	padding: 0px;
	margin: 0px;
	height: auto;
}

.hr-dashed {
	padding: 4px;
	border-bottom: 1px dashed #ddd;
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

.margin-top--52 {
	margin-top: -52px;
}

.fa-book {
	font-size: 20px;
	color: white;
}

.container-default {
	background: #ddd;
}

.fa-th-list {
	font-size: 14px;
}

.btn-list {
	background: #f1f2f6;
}

.fa-plus {
	color: white;
	font-size: 16px;
}

.btn-add {
	background: #96de77;
	color: white;
}

.btn-remove {
	background: #f8807b;
	color: white;
}

.fa-minus {
	font-size: 16px;
	color: white;
}

.btn-send {
	background: #5ae1dc;
	color: white;
}

.breadcrumb>li+li:before {
	content: "\3E"
}

.bg-white {
	background: white;
}

.breadcrumb {
	background: #fff;
	margin-bottom: 8px;
}

.margin-top--20 {
	margin-top: -20px;
}

.padding-top-0 {
	padding-top: 0px !important;
}

.btn-edit {
	background: #fff;
	border-radius: 12px 12px 12px 12px;
	border: 1px solid #ddd;
}

.padding-left-0 {
	padding-left: 0px;
}

.padding-right-0 {
	padding-right: 0px;
}
</style>