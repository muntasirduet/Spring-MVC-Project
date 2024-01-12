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


<title>edit shift info</title>
<div>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#edit_general_info">Edit general modal</button>
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

<style>
	.font-size-18{
		font-size:18px;
	}
	.hr-dashed{
		padding:4px;
		border-bottom:1px dashed #ddd ;
	}
	.padding-right-0{
		padding-right: 0px;
	}
	.label-align{
		text-align: right;
	}
	.margin-right-2{
		margin-right: 2px;
	}
	
	.input-group[class*=col-] {
	    float: none;
	    padding-right: 0;
	    padding-left: 15px;
	}
	.glyphicon{
		padding: 0px;
		font-size: 16px;
	}	
	.fa{
		padding: 0px;
		font-size: 16px;
	}
	.switch {
	  position: relative;
	  display: inline-block;
	  width: 48px;
	  height: 22px;
	}
	
	.switch input {display:none;}
	
	.slider {
	  position: absolute;
	  cursor: pointer;
	  top: 0;
	  left: 0;
	  right: 0;
	  bottom: 0;
	  background-color: #ccc;
	  -webkit-transition: .4s;
	  transition: .4s;
	}
	
	.slider:before {
	  position: absolute;
	  content: "";
	  height: 20px;
	  width: 20px;
	  left: 1px;
	  bottom: 1px;
	  background-color: white;
	  -webkit-transition: .4s;
	  transition: .4s;
	}
	
	input:checked + .slider {
	  background-color: #00B6E2;
	}
	
	input:focus + .slider {
	  box-shadow: 0 0 1px #2196F3;
	}
	
	input:checked + .slider:before {
	  -webkit-transform: translateX(26px);
	  -ms-transform: translateX(26px);
	  transform: translateX(26px);
	}
	
	/* Rounded sliders */
	.slider.round {
	  border-radius: 34px;
	}
	
	.slider.round:before {
	  border-radius: 50%;
	}
	.btn-save{
		background: #5ad1ec;
		margin-left: 4px;
	}
@media(max-width: 992px){
		.label-align{
			text-align: left;
		}
	}
</style>