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
	
	<button class="btn btn-success" data-toggle = "modal" data-target = "#add_user">click</button>

	<div class="modal fade" id="add_user">
		<div class="modal-dialog ">
			<div class="modal-content">
			<gts:AjaxForm dataHandler="" action="${PageContext.request.Contextpath}userstore">
				<div class="modal-header">
					<button class="close fade" data-dismiss = "modal">&times</button>
					<div class = "header_text">Add User</div>
				</div>
				
				<div class="modal-body ">
					<div class = "form-horizontal">
						<div class = "form-group">
							<label class="control-label pull-left" name = "Description" labelFor="description" style = "padding:0px;" >Description</label>
							<div class = "input-width-60 pull-left">
								<div class = "input-width-30 pull-left">
									<input class = "form-control" name = "first_name" placeholder = "First Name">
								</div>
								<div class = "input-width-30 pull-left">
									<input class = "form-control" name = "last_name" placeholder = "last_name">
								</div>
							</div>
						</div><hr>
					</div>
				</div>
				
				<div class="modal-footer">
					<button class=" btn btn-default"  aria-label="close" data-dismiss = "modal" >Cancel</button>
					<button class="btn btn-success ">Create</button>
				</div>
				</gts:AjaxForm>
			</div>
		</div>
	</div>
	
	<style>
	.input-width-60{
		width:60%;
		margin-left:2%;
	}
	.input-width-30{
		width:45%;
		margin-left:3%;
	}
	.control-label{
		font-weight:400;
		width:25%;
		text-align: right;
		margin:6px;
	}
	button{
        outline: none !important;
    }
    form {
  		margin-bottom: 0px !important;
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
	</style>
