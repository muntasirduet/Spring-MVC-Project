
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

<div>
	<gts:AjaxForm dataHandler="" action="${PageContext.request.Contextpath}store">
		<div class="form-horizontal">
			<div class="form-group">
				<div class="col-md-3">
					<gts:Label name="Username" labelFor="username"/>
					<gts:TextBox name="username"/>
				</div>
				<div class="col-md-5">
					<gts:Label name="Username" labelFor="username"/>
					<gts:TextBox name="username"/>
				</div>
			</div>
		</div>
	</gts:AjaxForm>
</div>