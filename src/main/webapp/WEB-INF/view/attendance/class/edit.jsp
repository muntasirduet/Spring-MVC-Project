<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="gts" uri="/WEB-INF/custom.tld" %>
 
<!-- start: META -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta content="" name="description" />
    <meta content="" name="author" />
<!-- end: META -->
  <link rel="stylesheet" href="asset/css/common.css">
  <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
  
	
	<!--start: PAGE TITLE  -->
<title>edit class general info</title>
	
	<!--start: USER PROFILE  -->
<div>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#edit_general_info">Edit general modal</button>
</div>
<div class="modal fade" role="dialog" id="edit_general_info">
	<div class="modal-dialog">
		<div class="modal-content">
			<gts:AjaxForm dataHandler="" action="${PageContext.request.Contextpath }update">
			<div class="modal-header font-size-18">
				<div class="pull-left">
					Edit General Info
					<input name="id" value="${map.id }" style="display: none">
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
								<gts:Label cssClass="control-label" labelFor="description" name="Description"/>
							</div>
							<div class="col-md-7">
								<gts:TextBox  name="class_name" value="${map.class_name}" cssClass="form-control" placeHolder="Class Name"/>
							</div>
						</div>
						<div class="form-group hr-dashed">
							<div class="col-md-3 label-align padding-right-0">
								<gts:Label cssClass="control-label" labelFor="teacher" name="Teachers"/>
							</div>
							<div class="col-md-7">
								<gts:TextBox name="teachers" value="${map.teachers}"/>
							</div>
						</div>
						<div class="form-group hr-dashed">
							<div class="col-md-3 label-align padding-right-0">
								<gts:Label cssClass="control-label" labelFor="add_teacher" name="Add Teacher"/>
							</div>
							<div class="col-md-7">
								<div>there is no teacher available<br><a  href="#">click here</a> to add some!</div>
							</div>
						</div>
						<div class="form-group hr-dashed">
							<div class="col-md-3 label-align padding-right-0">
								<gts:Label cssClass="control-label" labelFor="meeting_days" name="Meeting Days"/>
							</div>
							<div class="col-md-9">
								<div class="btn-group"> 
									
									<gts:TextBox name="meeting_days" value="${map.meeting_days }"/>
								</div>
							</div>
						</div>
						<div class="form-group hr-dashed">
							<div class="col-md-3 label-align padding-right-0">
								<gts:Label cssClass="control-label" labelFor="start_time" name="Start Time"/>
							</div>
							<div class="col-md-4 input-group">
								<gts:TextBox name="start_time" value="${map.start_time}" cssClass="form-control width-300"/>
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-time"></span>
								</div>
							</div>
						</div>
						<div class="form-group hr-dashed">
							<div class="col-md-3 label-align padding-right-0">
								<gts:Label cssClass="control-label" labelFor="end_time" name="End Time"/> 
							</div>
							<div class="col-md-4 input-group">
								<gts:TextBox name="end_time" value="${map.end_time}" cssClass="form-control width-300"/>
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-time"></span>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-3 label-align padding-right-0">
								<gts:Label labelFor="status" name="Status"/> 
							</div>
							<div class="col-md-7">
								<label class="switch">
								  <input type="checkbox" name="status" value="1" checked>
								  <span class="slider round"></span>
								</label><span>active</span>
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
						<button type="submit" class="btn btn-save">Save Changes</button>
					</div>
				</div>
			</div>
			</gts:AjaxForm>
		</div>
	</div>
</div>
<!--end: USER PROFILE  -->

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