
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
<link rel="stylesheet" href="asset/css/common.css">
<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
<script src="vendor/jquery/jquery.min.js"></script>
<link rel="stylesheet" href="vendor/bootstrap-dropdown-css/singleDropdown.css">
<script src="vendor/bootstrap-dropdown-js/singleDropdown.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="vendor/font-awesome/css/font-awesome.min.css">

	<!-- start: Page Title -->
<title>${map.lb_mainTitle}</title>

	<!-- start: User Profile -->
<button class="btn btn-success" data-toggle="modal"
	data-target="#add_class">click</button>

<div class="modal fade" id="add_class">
	<div class="modal-dialog ">
		<div class="modal-content">

			<gts:AjaxForm dataHandler="" action="${PageContext.request.Contextpath}store">
				<div class="modal-header">
					<button class="close fade" data-dismiss="modal">&times;</button>
					<div class="header_text">Add Class</div>
				</div>
	
	
				<div class="modal-body ">
					<div class="form-horizontal">
						<div class="form-group">
							<gts:Label cssClass="control-label pull-left padding-0"
								labelFor="description" name="${map.lb_description}" />
							<div class="add-class pull-left">
								<gts:TextBox cssClass="form-control" name="class_name"
									placeHolder="Enter Class Name"/>
							</div>
						</div>
						<hr>
	
						<div class="form-group">
							<gts:Label cssClass="control-label pull-left padding-0"
								labelFor="description" name="${map.lb_meetingDays}" />
							<div class="add-class-btn pull-left">
								<gts:Button cssClass="btn btn-default cancel_btn" id="sun"
									onclick="btn_color_change(this)" name="Sun"/>
								<gts:Button cssClass="btn btn-default cancel_btn" id="mon"
									onclick="btn_color_change(this)" name=" Mon"/>
								<gts:Button cssClass="btn btn-default cancel_btn" id="tue"
									onclick="btn_color_change(this)" name="Tue"/>
								<gts:Button cssClass="btn btn-default cancel_btn" id="wed"
									onclick="btn_color_change(this)" name="Wed"/>
								<gts:Button cssClass="btn btn-default cancel_btn" id="thu"
									onclick="btn_color_change(this)" name="Thu"/>
								<gts:Button cssClass="btn btn-default cancel_btn" id="fry"
									onclick="btn_color_change(this)" name="Fry"/>
								<gts:Button cssClass="btn btn-default cancel_btn" id="sat"
									onclick="btn_color_change(this)" name="Sat"/>
							</div>
						</div>
						<hr>
	
					</div>
	
	
	
				</div>
	
	
				<div class="modal-footer">
					<button class=" btn btn-default" aria-label="close"
						data-dismiss="modal">Cancel</button>
					<gts:Submit cssClass="btn btn-success" name="Create"/>
				</div>
	
			</gts:AjaxForm>
		</div>
	</div>
</div>
	<!-- End: META -->
<script type="text/javascript">

		function btn_color_change(index){
			var id = index.id;
			var background = document.getElementById(id).style.backgroundColor;
		    if (background == "rgb(18, 236, 241)") {
		        document.getElementById(id).style.background = "rgb(250,250,250)";
		    } else {
		        document.getElementById(id).style.background = "rgb(18, 236, 241)";
		    }
				
		}
	</script>

<style>
.header_text {
	font-size: 22px;
	font-weight: 300;
}

.modal-footer {
	background-color: rgb(249, 249, 249);
}

button {
	outline: none !important;
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

.btn-default, .btn-default:focus, .btn-default:active {
	color: #575a5d;
	border: 1px solid #C5CFD2;
	background-color: #FAFAFA;
}

.btn-success, .btn-success:focus, .btn-success:active {
	color: #FFFFFF;
	background-color: #57de42;
	border: 1px solid #57de42;
}

.btn-success:hover {
	color: #FFFFFF;
	background-color: #52d43d !important;
	border: 1px solid #52d43d !important;
}

.control-label {
	width: 25%;
	text-align: right;
	margin: 6px;
	font-weight: 400;
}

.add-class {
	width: 60%;
	margin-left: 3%;
}

.add-class-btn {
	width: 67%;
	margin-left: 3%;
}

.cancel_btn {
	margin-top: 1%;
}

.padding-0 {
	padding: 0px;
}
</style>