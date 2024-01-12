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
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="vendor/font-awesome/css/font-awesome.min.css">

<div>
	<%-- <h2 class="mainTitle">${map.lb_mainTitle}</h2> --%>
</div>
<button class="btn btn-success" data-toggle="modal"
	data-target="#add_student">click</button>

<div class="modal fade" id="add_student">
	<div class="modal-dialog ">
		<div class="modal-content">
			<gts:AjaxForm dataHandler="" action="${PageContext.request.Contextpath}store">

				<div class="modal-header">
					<button class="close fade" data-dismiss="modal">&times;</button>
					<div class="header_text">Add Student</div>
				</div>


				<div class="modal-body ">
					<div class="form-horizontal">

						<div class="form-group">
							<gts:Label cssClass="control-label pull-left padding-0"
								labelFor="Student_Id" name="Student Id"/>
							<div class="input-width-60 pull-left">
								<input type="text" id="student_id" name="student_id"
									class="form-control" placeholder="Enter Student Id Number">
							</div>
						</div>
						<hr>

						<div class="form-group">
							<gts:Label cssClass="control-label pull-left padding-0"
								labelFor="description" name="Description"/>
							<div class="input-width-30 pull-left">
								<gts:TextBox  name="first_name"
									cssClass="form-control " placeHolder="First Name"/>
							</div>

							<div class="input-width-30 pull-left">
								<gts:TextBox  name="last_name"
									cssClass="form-control" placeHolder="Last Name"/>
							</div>
						</div>
						<hr>

						<div class="form-group">
							<gts:Label cssClass="control-label pull-left padding-0"
								labelFor="add_to_class" name="Add To Class"/>

							<select class="single-dropdown" name="add_to_class">
								<option value="8th Semister">8th Semister</option>
								<option value="6th Semister">6th Semisters</option>
							</select>
						</div>
						<hr>

						<div class="form-group  ">
							<gts:Button cssClass="btn btn-success add_another"
								 name="<span class='glyphicon glyphicon-plus'></span>Add Another
								Student"/>
						</div>
						<hr>

						<div class="form-group" id="">
							<gts:Label cssClass="control-label pull-left padding-0" labelFor="pending_student"
								name="Pending Student"/>
							<div class="input-width-60 pull-left">
								<div id="storage_student" class="text"></div>
								<div style="font-weight: 200;" class="text form-control-static">You
									Must Click Save to Save these student</div>
							</div>
						</div>
						<hr>

					</div>

				</div>


				<div class="modal-footer">
					<button class=" btn btn-default cancel_btn " aria-label="close"
						data-dismiss="modal">Cancel</button>
					<button class="btn btn-success ">Create</button>
				</div>
			</gts:AjaxForm>
		</div>

	</div>
</div>
<script type="text/javascript">
	var class_name = "";
	var addArray = [];
	var i = 0;
	var throwStudent = "";
	var another_button = document.getElementById("add_another_student");
	
	
	function changeData(indx){
		var fieldData = document.getElementsByClassName("data-field");
		document.getElementsByClassName("data-selected-field")[0].innerText = fieldData[indx].innerHTML;
		class_name = fieldData[indx].innerHTML;
	}
	
	another_button.addEventListener("click",function(){
		var firstName = document.getElementById("add_student_first_name").value;
		var lastName = document.getElementById("add_student_last_name").value;
		var StudentId = document.getElementById("student_id").value;
		addArray[i] = "<span>"+StudentId+" - "+firstName+" "+lastName+", </span>"
		for(var j = 0 ;j<addArray.length;j++){
			throwStudent+=addArray[j];
		}
		document.getElementById("storage_student").innerHTML = throwStudent;
		throwStudent = "";
		i+=1;
		document.getElementById("add_student_first_name").value = "";
		document.getElementById("add_student_last_name").value = "";
		document.getElementById("student_id").value = "";
	})

	
	</script>

<style>
.add_another {
	margin-left: 45% !important;
}

.input-width-60 {
	width: 60%;
	margin-left: 3%;
}

.input-width-30 {
	width: 30%;
	margin-left: 3%;
}

.control-label {
	font-weight: 400;
	width: 25%;
	text-align: right;
	margin: 6px;
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

.header_text {
	font-size: 22px;
	font-weight: 300;
}

.modal-footer {
	background-color: rgb(249, 249, 249) !important;
}

.padding-0 {
	padding: 0px;
}
</style>