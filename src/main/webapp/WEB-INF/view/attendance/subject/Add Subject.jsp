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
	<button class="btn btn-success" data-toggle = "modal" data-target = "#add_subject">click</button>

	<div class="modal fade" id="add_subject">
		<div class="modal-dialog ">
			<div class="modal-content">
			<form action="${PageContext.request.Contextpath}storesubject" method = "POST">
				<div class="modal-header">
					<button class="close fade" data-dismiss = "modal">&times</button>
					<div class = "header_text">Add Subject</div>
				</div>
				
				<div class="modal-body ">
					<div class = "form-horizontal">
						<div class = "form-group">
							<gts:Label name="${map.lb_subjectName }" labelFor="subject_name" cssClass = "control-label pull-left"/>
							<div class = "input-width-60 pull-left">
								<input type = "text" class = "form-control" name = "subject_name" placeholder = "Enter Subject Name">
							</div>
						</div><hr>


						<div class = "form-group">
							<button class = "btn btn-success add_another " id = "add_another"><span class="glyphicon glyphicon-plus"></span>Add Another Subject</button>
						</div><hr>
						
						<div class = "form-group" id = "">
							<gts:Label name="${map.lb_pendingSubject }" labelFor="pending_subject" cssClass = "control-label pull-left"/>
								<div class = "input-width-60 pull-left">
									<span id = "storage_subject" style = "width:100%;">
										
									</span>
									<div style = "font-weight:200;">You must click Save to save these student</div>
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
	<script>
		var anotherBtn = document.getElementById("add_another");
		var subject_array = [];
		var count = 0;
		var throwdata = "";
		anotherBtn.addEventListener("click",function(){
			var subject_name = document.getElementById("subject_name").value;
			subject_array[count] = "<span>"+subject_name+", </span>";
			for(var i = 0;i<subject_array.length;i++){
				throwdata += subject_array[i];
			}
			document.getElementById("storage_subject").innerHTML = throwdata;
			count+=1;
			throwdata = "";
			document.getElementById("subject_name").value = "";
		})
		
	</script>
	
	
	<style>
	.input-width-60{
		width:60%;
		margin-left:3%;
	}
	.control-label{
		font-weight:400;
		width:25%;
		text-align: right;
		margin:6px;
	}
	.add_another{
		margin-left: 40% !important;
		background-color:rgb(156,217,118)
	}
	.header_text{
		font-size:22px;
		font-weight:300;
	}
	.modal-footer{
		background-color:rgb(249,249,249) !important;
	}
	button{
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
	
		
	</style>
