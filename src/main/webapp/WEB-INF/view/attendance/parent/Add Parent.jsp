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
  
  
	<!-- Gts Start -->
	<button class="btn btn-success" data-toggle = "modal" data-target = "#add_parent">click</button>
	<div class="modal fade" id="add_parent">
		<div class="modal-dialog ">
			<div class="modal-content">
			<form action="${PageContext.request.Contextpath}store" method  = "POST">
				<div class="modal-header">
					<button class="close fade" data-dismiss = "modal">&times</button>
					<div class = "header_text">Add Parent</div>
				</div>
			
				<div class="modal-body">
					<div class = "form-horizontal">
						<div class = "form-group">
							<gts:Label name = "${map.lb_parents}" labelFor = "parents" cssClass = "control-label pull-left"/>
							<span class="form-control-static">No Parents assigned</span>
						</div><hr>

						<div class = "form-group">
							<gts:Label name = "${map.lb_addParent}" labelFor = "add_parents" cssClass = "control-label pull-left"/>
							<div class = "input-width-60 pull-left">
								<gts:TextBox name = "add_parent" value = "Search By Email Address By Phone"/>
							</div>
						</div><hr>

						<div class = "form-group">
						<gts:Label name = "${map.lb_createNewParent}" labelFor = "add_parents" cssClass = "control-label pull-left"/>
							<div class = "input-width-40 pull-left">
								<gts:TextBox name = "first_name" value = "First Name"/>
								<gts:TextBox name = "last_name" value = "Last Name" cssClass = "double-textBox"/>
								<gts:TextBox name = "mobile_number" value = "Mobile Number" cssClass = "double-textBox"/>
							</div>
						</div><hr>
					</div>
				</div>
				<div class="modal-footer">
					<button class=" btn btn-default"  aria-label="close" data-dismiss = "modal" >Cancel</button>
					<button type = "submit" class="btn btn-success">Create</button>
				</div>
				</form>
			</div>
		</div>
	</div>
	
	<style>
	form{
		margin:0px !important;
	}
	.control-label{
		font-weight:400;
		width:25%;
		text-align: right;
		margin:6px;
		padding:0px !important;
	}
	.header_text{
		font-size:22px;
		font-weight:300;
	}
	.modal-footer{
		background-color:rgb(249,249,249) !important;
	}
	.button{
        outline: none !important;
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
	.input-width-60{
		width:60%;
		margin-left:3%;
	}
	.input-width-40{
		width:40%;
		margin-left:3%;
	}
	.form-control-static{
		font-size: 20px;
    	font-weight: 300;
    	margin-left: 2%;
	}
	.double-textBox{
		margin-top:2px;
	}
	</style>
