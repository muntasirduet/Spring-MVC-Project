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


	<title></title>

<div class="container-fluid">
	<div class="row">
		<div>
			<div class="pull-left">
				<div>${map.first_name } ${map.last_name }</div>
				<div>Student Profile</div>
			</div>
			
			<div class="pull-right">
				<span class="glyphicon glyphicon-user"></span>
			</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-8">
			<div class="sa-card">
				<div class="sa-card-header">
					<div class="pull-left">About <gts:Label name="${map.first_name} ${map.last_name}" labelFor="student_name"/></div>
					<div class="pull-right">
						<gts:Submit name="<span class='fa fa-pencil'></span>Edit" cssClass="btn btn-default"/>
					</div>
				</div>
				
				<div class="sa-card-body">
					<div>
						<div><gts:Label name="${map.lb_info}" labelFor="info"/></div>
						<div>There is no bio info for <c:out value="${map.first_name}"/></div>
					</div>
					
					<div>
						<div><gts:Label name="${map.lb_email}" labelFor="email"/></div>
						<div>There is no email address for <c:out value="${map.first_name}"/></div>
					</div>
					
					<div>
						<div><gts:Label name="${map.lb_phone}" labelFor="phone"/></div>
						<div>
							<div>01555888766(home)</div>
							<div>There is no mobile phone for <c:out value="${map.first_name}"/></div>
						</div>
					</div>
					
					<div>
						<div><gts:Label name="${map.lb_currentClasses}" labelFor="current_class"/></div>
						<div></div>
					</div>
					
					<div>
						<div><gts:Label name="${map.lb_status}" labelFor="status"/></div>
						<div>Active</div>
					</div>
					
					<div>
						<div><gts:Label name="${map.lb_preferredLanguage}" labelFor="preferred_language"/></div>
						<div>English</div>
					</div>
					
					<div>
						<div><gts:Label name="${map.lb_studentId}" labelFor="student_id"/></div>
						<div><c:out value="${map.student_id}"/></div>
					</div>
					
					<div>
						<div><gts:Label name="${map.lb_dateOfBirth}" labelFor="date_of_birth"/></div>
						<div></div>
					</div>
					
					<div>
						<div><gts:Label name="${map.lb_gradeLevel}" labelFor="grade_level"/></div>
						<div></div>
					</div>
					
					<div>
						<div><gts:Label name="${map.lb_password}" labelFor="password"/></div>
						<div><a href="#">Change harun's pasword</a></div>
					</div>
				</div>
			</div>
			
			<div class="sa-card">
				<div class="sa-card-header">
					<div><gts:Label name="${map.lb_myAtHistory}" labelFor="my_at_history"/> for <c:out value="${map.first_name}"/> <c:out value="${map.last_name}"/></div>
				</div>
				
				<div class="sa-card-body history">
					<div>earlier today</div>
					<div><span class="fa fa-edit"></span> <a href="#"><c:out value="${map.first_name}"/> was marked P for on 2018-04-19.</a></div>
				</div>
			</div>
		</div>
		
		<div class="col-md-4">
			<div class="sa-card">
				<div class="sa-card-header">
					<div>Notifications</div>
				</div>
				
				<div class="sa-card-body font-size-13">
					<div>Please update the indicated problems with this student!</div>
					<div>
						<div>
							<span class="fa fa-exclamation"></span>
							invalid parent/guardian info
						</div>
						
						<div>
							<span class="fa fa-mobile"></span>
							Incorrect Mobile Phone
						</div>
						
						<div>
							<span class="fa fa-at"></span>
							Invalid Email Address
						</div>
					</div>
				</div>
			</div>
			
			<div class="sa-card">
				<div class="sa-card-header">
					<div class="pull-left">Custom Fields</div>
					<div class="pull-right"><gts:Submit name="<span class='fa fa-pencil'></span>Edit" cssClass="btn btn-default"/></div>
				</div>
				
				<div class="sa-card-body">
					<div class="font-size-13">No Student Custom Fields Found.<a class="link">Click here</a> to add some!</div>
				</div>
			</div>
			
			<div class="sa-card">
				<div class="sa-card-header">
					<div class="pull-left">Parent Info</div>
					<div class="pull-right"><gts:Submit name="<span class='fa fa-pencil'></span>Edit" cssClass="btn btn-default"/></div>
				</div>
				
				<div class="sa-card-body">
					<div class="custom-table">
						<div class="custom-table-header">
							<div>Parent</div>
							<div>Mobile</div>
							<div>Email</div>
						</div>
						
						<div class="custom-table-body">
							<div>
								<div class="allColumnBlock">No parent are assigned to harun</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="sa-card">
				<div class="sa-card-header">
					<div><gts:Label name="Attendance" labelFor="Attendance"/> at a glance</div>
				</div>
				
				<div class="sa-card-body">
					<div class="table-responsive  attendanceAtAGlance">
						<table class="table table-bordered">
							<tbody>
								<tr>
									<td class="text-center">4/19/2018</td>
									<td class="text-center"><span class="fa fa-arrow-right"></span></td>
									<td>Present</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			
			<div class="sa-card">
				<div class="sa-card-header">
					<div><gts:Label name="harun's" labelFor="studnet_name"/> photo</div>
				</div>
				
				<div class="sa-card-body">
					<div class="text-center font-size-100"><span class="fa fa-user"></span></div>
					<div class="card-for-image">
						<gts:Label cssClass="pull-left" name="Image Upload" labelFor="Image Upload"/>
						<div class="pull-left" ><gts:Button name="Browse" cssClass="btn btn-default"/></div>
						<span class="pull-left">No file selected</span>
					</div>
				</div>
				
				<div class="sa-card-footer">
					<div class="text-center"><gts:Submit name="<span class='fa fa-chevron-right'></span>Submit" cssClass="btn btn-default bg-skyblue"/></div>
				</div>
			</div>
			
			<div class="sa-card">
				<div class="sa-card-header">
					<div><gts:Label name="${map.lb_addANote }" labelFor="add_a_note"/></div>
				</div>
				
				<div class="sa-card-body">
					<div class="note">
						<textarea rows="3" placeholder="Post a note..."></textarea>
					</div>
				</div>
				
				<div class="sa-card-footer">
					<div class="text-right"><gts:Button name="<span class='fa fa-plus'></span>Add" cssClass="btn btn-default bg-skyblue"/></div>
				</div>
			</div>
			
			<div class="sa-card">
				<div class="sa-card-header">
					<div><gts:Label name="Notes" labelFor="notes"/></div>
				</div>
				
				<div class="sa-card-body">
					<div>There are no notes for this student.</div>
				</div>
			</div>
		</div>
	</div>
</div>

<style>
	body{
		background-color: #f3f4f5;
		padding: 8px 0px 8px 0px;
		color: #635a5a;
	}
	
	button{
		outline: none !important;
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
	
	.container-fluid{
		background-color: transparent;
	}
	
	.row{
		margin: 0px;
	}
	
	.row:first-child{
		background-color: #fff;
		padding: 0px 16px;
	}
	
	.row:first-child>div{
		display: inline-block;
		width: 100%;
		margin-top: 32px;
		margin-bottom: 32px;
	}
	
	.row:first-child>div>div:first-child>div:first-child{
		font-size: 23px;
	}
	
	.row:first-child>div>div:first-child>div:last-child{
		font-size: 16px;
		margin-top: 6px;
	}
	
	.row:first-child>div>div:last-child>span{
		font-size: 56px;
	}
	
	.sa-card{
		margin-top: 22px;
	}
	
	.sa-card-body{
		padding: 20px;
	}
	
	.row:nth-child(2)>.col-md-8>.sa-card>.sa-card-header>div:first-child,
	.row:nth-child(2)>.col-md-4>.sa-card>.sa-card-header>div:first-child{
		font-size: 16px;
		margin-top: 6px;
	}
	
	.row:nth-child(2)>.col-md-8>.sa-card>.sa-card-body{
		display: inline-block;
		width: 100%;
		font-size: 13px;
	}
	
	.row:nth-child(2)>.col-md-8>.sa-card>.sa-card-body>div{
		padding: 12px 8px;
		display: inline-block;
		width: 100%;
	}
	
	.row:nth-child(2)>.col-md-8>.sa-card>.sa-card-body>div:nth-child(odd){
		background-color: #f9f9f9;
	}
	
	.row:nth-child(2)>.col-md-8>.sa-card>.sa-card-body>div:nth-child(even){
		background-color: #ffffff;
	}
	
	.row:nth-child(2)>.col-md-8>.sa-card>.sa-card-body>div>div:first-child{
		float: left;
		width: 20%;
    	padding-right: 16px;
	}
	
	.row:nth-child(2)>.col-md-8>.sa-card>.sa-card-body>div>div:last-child{
		float: left;
		width: 80%;
	}
	
	.row:nth-child(2)>.col-md-4>.sa-card:first-child>.sa-card-body>div:first-child{
		padding: 16px;
		background-color: #FFCCCA;
		color: #ff5a5a;
		border-radius: 4px;
	}
	
	.row:nth-child(2)>.col-md-4>.sa-card:first-child>.sa-card-body>div:last-child{
		border: 1px solid #ddd;
		padding: 6px 4px;
		margin-top: 15px;
		background-color: #F9F9F9;
	}
	
	.row:nth-child(2)>.col-md-4>.sa-card:first-child>.sa-card-body>div:last-child>div:first-child{
		color: #ff5a5a;
	}
	
	.row:nth-child(2)>.col-md-4>.sa-card:first-child>.sa-card-body>div:last-child>div{
		color: #21ccff;
	}
	
	label{
		margin-bottom: 0px;
	}
	
	.btn{
		margin: 0px;
		font-size: 10px;
		font-weight: 300;
		padding: 6px 16px 6px 16px;
		border-radius: 2px;
	}
	
	.btn>.fa{
		margin-right: 4px;
	}
	
	.font-size-13{
		font-size: 13px;
	}
	
	.custom-table{
		width: 100%;
	}
	
	.custom-table>.custom-table-header>div{
		padding: 10px 6px;
		font-size: 13px;
		border: 1px solid #ddd;
		border-collapse: collapse;
		width: 33.33%;
		float: left;
	}
	
	.custom-table>.custom-table-body>div>div{
		font-size: 13px;
		border: 1px solid #ddd;
		border-collapse: collapse;
		width: 33.33%;
		float: left;
		padding: 4px;
	}
	
	.allColumnBlock{
		width: 100% !important;
		background-color: #f9f9f9;
	}
	
	.table{
		margin-bottom: 0px;
	}
	
	.table>tbody>tr>td{
		padding: 6px;
		font-size: 13px;
	}
	
	.font-size-100{
		font-size: 100px;
	}
	
	.card-for-image{
		display: inline-block;
		width: 100%;
		margin-top: 40px;
	}
	
	.card-for-image>label, .card-for-image>span{
		margin-top: 4px;
	}
	
	.card-for-image>label, .card-for-image>div{
		margin-right: 8px;
	}
	
	.note{
		width: 100%;
	}
	
	.note>textarea{
		width: 100%;
		border-radius: 4px;
		padding: 6px;
		font-size: 14px;
	}
	
	.history>div{
		float: left !important;
	}
	
	.history>div:first-child{
		width: 20% !important;
		background-color: #fff !important;
		text-align: right;
	}
	
	.history>div:last-child, .history>div:last-child>a{
		width: 80% !important;
		color: #00b7e3;
		margin-top: 2px;
		font-size: 12px;
		font-weight: 700;
	}
	
	a{
		color: #00b7e3;
	}
	
	.bg-skyblue{
		background-color: #59D2ED;
		color: #FFFFFF;
	}
	
	@media(max-width: 520px){
		.row:nth-child(2)>.col-md-8>.sa-card>.sa-card-body>div>div:first-child{
			    float: left;
			    width: 30%;
			    padding-right: 16px;
		}
		
		.row:nth-child(2)>.col-md-8>.sa-card>.sa-card-body>div>div:last-child{
			width: 70%;
		}
	}
</style>
</html>