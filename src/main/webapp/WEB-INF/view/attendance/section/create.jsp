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
<script src="vendor/jquery/jquery-3.3.1.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

<head>
<title>Insert title here</title>
</head>


<body>
	<button class="btn btn-success" data-toggle="modal"
		data-target="#add_section">click</button>

	<div class="modal fade" id="add_section">
		<div class="modal-dialog ">
			<div class="modal-content">
			<gts:AjaxForm dataHandler="" action="${PageContext.request.Contextpath }storesect">
				<div class="modal-header">
					<button class="close fade" data-dismiss="modal">&times</button>
					<div class="header_text">Add Section</div>
				</div>
				<div class="modal-body ">
					<div class="form-horizontal">
						<div class="form-group">
							<label name="Description" labelFor="description"
								class="control-label pull-left">${map.lb_sectionName }</label>
							<div class="input-width-60 pull-left">
								<input name="section_name" class="form-control" placeholder="Enter Section Name">
							</div>
						</div>
						<hr>
					</div>
				</div>
				<div class="modal-footer">
					<button class="btn btn-default" aria-label="close"
						data-dismiss="modal">Cancel</button>
					<button type="submit" class="btn btn-success">Create</button>
				</div>
				</gts:AjaxForm>
			</div>
		</div>
	</div>

</body>

<style>
.header_text {
	font-size: 18px;
	font-weight: 300;
}

.modal-footer {
	background-color: rgb(249, 249, 249) !important;
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
	padding: 0px !important;
	font-weight: 400;
	width: 25%;
	text-align: right;
	margin: 6px;
}

.input-width-60 {
	width: 60%;
	margin-left: 3%;
}
</style>
</html>