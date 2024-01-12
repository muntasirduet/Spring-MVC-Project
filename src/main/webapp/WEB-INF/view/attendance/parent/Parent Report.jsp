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
  	<script src="vendor/bootstrap-dropdown/bootstrap-dropdown-js/CommonDropdown.js"></script>
  	<link rel="stylesheet" href="vendor/bootstrap-dropdown/bootstrap-dropdown-css/CommonDropdown.css">
  	
  	<button class="btn btn-success" data-toggle = "modal" data-target = "#parent-report">click</button>
	<div class="modal fade" id="parent-report">
		<div class="modal-dialog ">
			<div class="modal-content">
				<div class="modal-header">
					<button class="close fade" data-dismiss = "modal">&times</button>
					<div class = "header_text">Parent Custom Field</div>
				</div>
				<div class="modal-body">
					<div class = "form-horizontal">
					<div class = "form-group">
						<div class = "parent_report_choose">please choose a parent or class</div>
					</div>
						<div class = "form-group">
							<gts:Label name="${map.lb_parent}" labelFor="parent" cssClass = "control-label pull-left"/>
  								<div class = "input-width-60 pull-left">
  									<div class = "single-dropdown">
  										<select name = "chosse_parent">
  											<option class = " placeholder" value = "0">Choose A Parent</option>
  											<option value = "Hasibul Islam">Hasibul Islam</option>
  											<option value = "Sorol Khan">Sorol Khan</option>
  										</select>
  									</div>
  								</div>
							</div><hr>
					
						<div class = "form-group">
							<gts:Label name="${map.lb_class}" labelFor="class" cssClass = "control-label pull-left"/>
  								<div class = "input-width-60 pull-left">
  									<div class = "single-dropdown">
  										<select class = "form-control" name = "chosse_class">
  											<option class = "placeholder" value = "0">Choose A Class</option>
  											<option value = "1st Semister">1st Semister</option>
  											<option value = "2nd Semister">2nd Semister</option>
  											<option value = "3rd Semister">3rd Semister</option>
  											<option value = "4th Semister">4th Semister</option>
  											<option value = "5th Semister">5th Semister</option>
  											<option value = "6th Semister">6th Semister</option>
  											<option value = "7th Semister">7th Semister</option>
  											<option value = "8th Semister">8th Semister</option>
  											
  										</select>
  									</div>
  								</div>
						</div><hr>
						
						<div class = "form-group">
							<gts:Label name="${map.lb_includeFeild}" labelFor="class" cssClass = "control-label pull-left"/>
								<label class="switch checkboxCss">
  									<input type="checkbox" id="a" onclick="add()" name = "">
  									<span class="slider round"></span>
								</label>
						</div><hr>
					</div>
				</div>
				
				<div class="modal-footer">
					<button class=" btn btn-default cancel_btn "  aria-label="close" data-dismiss = "modal" >Cancel</button>
					<button class="btn btn-success" data-dismiss = "modal">Create</button>
				</div>
				
			</div>
		</div>
	</div>
	<script type="text/javascript">

	
	
	function changeData(indx){
		var fieldData = document.getElementsByClassName("data-field");
		document.getElementsByClassName("data-selected-field")[0].innerText = fieldData[indx].innerHTML;
		changeCaret();
	}
	function ChangeParent(indx){
		var fieldData = document.getElementsByClassName("month-field");
		document.getElementsByClassName("month-selected-field")[0].innerText = fieldData[indx].innerHTML;
		changeCaret();
	}
	

	
	</script>
	
	<style>
	.control-label{
		font-weight:400;
		width:25%;
		text-align: right;
		margin:6px;
		padding:0px !important;
	}
	.parent_report_choose{
		margin-left: 20px;
    		margin-bottom: 12px;
    		font-size: 16px;
    		font-weight: 300;
	}
	.input-width-60{
		width:60%;
		margin-left:3%;
	}
	.checkboxCss{
		margin-left: 2%;
    		margin-bottom: -8px;
	}
	
	.header_text{
		font-size:18px;
		font-weight:300;
	}
	.modal-footer{
		background-color:rgb(249,249,249) !important;
		border-bottom-right-radius:5px;
		border-bottom-left-radius:5px;
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
	

				.switch {
  position: relative;
  display: inline-block;
  width: 70px;
  height: 32px;
}

.switch input {display:none;}

.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: rgb(249,249,249);
  border:1px solid rgb(74,187,225);
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 12px;
  width: 12px;
  left: 11px;
  bottom: 8px;
  background-color: rgb(255,255,255);
  border:1px solid #A9A9A9;
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked + .slider {
  background-color: rgb(106,210,235);
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196F3;
}

input:checked + .slider:before {
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(36px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 34px;
}

.slider.round:before {
  border-radius: 50%;
}

	</style>