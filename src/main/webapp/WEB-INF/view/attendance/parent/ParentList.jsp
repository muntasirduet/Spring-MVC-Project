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
	<script src="vendor/bootstrap-dropdown/bootstrap-dropdown-js/CommonDropdown.js"></script>
  	<link rel="stylesheet" href="vendor/bootstrap-dropdown/bootstrap-dropdown-css/CommonDropdown.css">

	

<div class="container-fluid">
<form action="${PageContext.request.Contextpath}storeparent" method  = "POST">
	<div class="row">
		<div>
			<div class="pull-left">
				<div>Parent List</div>
				<div>Manage all your Parents right here</div>
			</div>
		</div>
	</div>
	<div class="col-md-8 parent-list">
		<div class="sa-card parent-list-firstCard">
			<div class="sa-card-header">
				<div><span>Filter</span> Contacts</div>
				<div>Showing 20 of 20</div>
			</div>

			<div class="sa-card-body">
				<div class="col-md-4 btn-group">
					<div class="dropdown pull-left">
						<button class="btn btn-default" data-toggle="dropdown">
							<span>Parent Filter</span>
							<span class="caret text-right"></span>
						</button>
					</div>
					<div class="dropdown pull-left">
						<button class="btn btn-default" data-toggle="dropdown">
							<span>Status</span>
							<span class="caret text-right"></span>
						</button>
					</div>
				</div>

				<div>
					<button class="btn btn-default">
						<span class="fa fa-repeat"></span><span class="text-right">Reset</span></button>
				</div>
			</div>
		</div>

		<div class="sa-card parent-list-secondCard">
			<!-- <div class="sa-card-header">
				<div>
					<button class="btn-rounded">A</button>
					<button class="btn-rounded">B</button>
					<button class="btn-rounded">C</button>
					<button class="btn-rounded">D</button>
					<button class="btn-rounded">E</button>
					<button class="btn-rounded">F</button>
					<button class="btn-rounded">G</button>
					<button class="btn-rounded">H</button>
					<button class="btn-rounded">I</button>
					<button class="btn-rounded">J</button>
					<button class="btn-rounded">K</button>
					<button class="btn-rounded">L</button>
					<button class="btn-rounded">M</button>
					<button class="btn-rounded">N</button>
					<button class="btn-rounded">O</button>
					<button class="btn-rounded">P</button>
					<button class="btn-rounded">Q</button>
					<button class="btn-rounded">R</button>
					<button class="btn-rounded">S</button>
					<button class="btn-rounded">T</button>
					<button class="btn-rounded">U</button>
					<button class="btn-rounded">V</button>
					<button class="btn-rounded">W</button>
					<button class="btn-rounded">X</button>
					<button class="btn-rounded">Y</button>
					<button class="btn-rounded">Z</button>

				</div>
			</div> -->
			<div class="sa-card-body secondCard-body">
				<div><!-- First Div-->
					<div>
						<div class="pull-left">
							<button><i class="fa fa-user-circle"></i></button>
						</div>
						<div class="pull-left">
							<div>
								<div>
									<span>Forid</span>
								</div>
								<div class="btn-group">
									<button class="btn btn-default">Parent</button>
									<button class="btn btn-default">
										<span class="fa fa-pencil"></span>
									</button>
								</div>
								<div class="dropdown">
									<button class="btn btn-default">
										<span>Actions</span>
										<span class="caret text-right"></span>
									</button>
								</div>

								<div>
									<span>1</span>
									<span class="fa fa-book"></span>
								</div>
							</div>
							
						</div>
					</div>

					<div>
						<div class="pull-left">
							<button><i class="fa fa-user-circle"></i></button>
						</div>
						<div class="pull-left">
							<div>
								<div>
									<span>Forid</span>
								</div>
								<div class="btn-group">
									<button class="btn btn-default">Parent</button>
									<button class="btn btn-default">
										<span class="fa fa-pencil"></span>
									</button>
								</div>
								<div class="dropdown">
									<button class="btn btn-default">
										<span>Actions</span>
										<span class="caret text-right"></span>
									</button>
								</div>

								<div>
									<span>1</span>
									<span class="fa fa-book"></span>
								</div>
							</div>
							
						</div>
					</div>

					<div>
						<div class="pull-left">
							<button><i class="fa fa-user-circle"></i></button>
						</div>
						<div class="pull-left">
							<div>
								<div>
									<span>Forid</span>
								</div>
								<div class="btn-group">
									<button class="btn btn-default">Parent</button>
									<button class="btn btn-default">
										<span class="fa fa-pencil"></span>
									</button>
								</div>
								<div class="dropdown">
									<button class="btn btn-default">
										<span>Actions</span>
										<span class="caret text-right"></span>
									</button>
								</div>

								<div>
									<span>1</span>
									<span class="fa fa-book"></span>
								</div>
							</div>
							
						</div>
					</div>

					<div>
						<div class="pull-left">
							<button><i class="fa fa-user-circle"></i></button>
						</div>
						<div class="pull-left">
							<div>
								<div>
									<span>Forid</span>
								</div>
								<div class="btn-group">
									<button class="btn btn-default">Parent</button>
									<button class="btn btn-default">
										<span class="fa fa-pencil"></span>
									</button>
								</div>
								<div class="dropdown">
									<button class="btn btn-default">
										<span>Actions</span>
										<span class="caret text-right"></span>
									</button>
								</div>

								<div>
									<span>1</span>
									<span class="fa fa-book"></span>
								</div>
							</div>
							
						</div>
					</div>

					<div>
						<div class="pull-left">
							<button><i class="fa fa-user-circle"></i></button>
						</div>
						<div class="pull-left">
							<div>
								<div>
									<span>Forid</span>
								</div>
								<div class="btn-group">
									<button class="btn btn-default">Parent</button>
									<button class="btn btn-default">
										<span class="fa fa-pencil"></span>
									</button>
								</div>
								<div class="dropdown">
									<button class="btn btn-default">
										<span>Actions</span>
										<span class="caret text-right"></span>
									</button>
								</div>

								<div>
									<span>1</span>
									<span class="fa fa-book"></span>
								</div>
							</div>
							
						</div>
					</div>



				</div>
					
			</div>
			
		</div>
	</div>
	<div class="col-md-4 add-parent-card">
		<div class="sa-card">
			<div class="sa-card-header">
				<button>
					<span class="glyphicon glyphicon-plus"></span><span>Add Parent</span>
				</button>
			</div>
			<div class="sa-card-body">
				<div class="form-horizontal"> 
					<div class="form-group">
						<div>
							<gts:Label name="${map.lb_name}" labelFor="name"/>
						</div>
						<div>
							<gts:TextBox name="first_name" value = "Firstname"/>
							<gts:TextBox name="last_name" value = "Lastname"/>
						</div>
					</div>
					<div class="form-group">
						<div style = "padding:0px !important;">
							<gts:Label name="${map.lb_emailAddress}" labelFor="email_address"/>
						</div>
						<div>
							<gts:TextBox name="email_address" value = ""/>
						</div>
					</div>
					<div class="form-group">
						<div>
							<gts:Label name="${map.lb_homePhone}" labelFor="home_phone"/>
						</div>
						<div>
							<gts:TextBox name="home_phone" value = "(999) 999-9999"/>
						</div>
					</div>
					<div class="form-group">
						<div>
							<gts:Label name="${map.lb_mobilePhone}" labelFor="mobile_phone"/>
						</div>
						<div>
							<gts:TextBox name="mobile_number" value = "(999) 999-9999"/>
						</div>
					</div>
					<div class="form-group">
						<div>
							<gts:Label name="${map.lb_assignToStudent}" labelFor="assign_to_student"/>
						</div>
						
						<div>
							<div class = "single-dropdown">
								<select name = "assigne_to_student">
									<option class = "placeholder" value = "0">Assigne Student</option>
									<option value = "Akash">Akash</option>
									<option value = "Sakib">Sakib</option>
									<option value = "Saima">Saima</option>
								</select>
							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="sa-card-footer">
				<div>
					<button type = "submit" class="btn btn-default">Add Student</button>
				</div>
			</div>
		</div>
	</div>
	</form>
</div>


<style>


/*Code for right side card*/
.add-parent-card>.sa-card>.sa-card-body>div>div{
	padding-top: 10px;
	padding-bottom: 10px;
	border-bottom: 1px dashed #cacaca;
}
.add-parent-card>.sa-card>.sa-card-body>div>div:last-child>div:last-child>button>span:last-child{
	float: right;
	margin-top: 8px;
	color: grey;
}
.add-parent-card>.sa-card>.sa-card-body>div>div:last-child>div:last-child>button>span:first-child{
	float: left;
	color: grey;
}
.add-parent-card>.sa-card>.sa-card-body>div>div:last-child>div:last-child>button{
	width: 100%;
}
.add-parent-card>.sa-card>.sa-card-body>div>div:first-child>div:last-child>input{
	width: 49%;
	display: inline-block;
}
.add-parent-card>.sa-card>.sa-card-body>div>div>div:first-child{
	float: left;
	width: 22%;
	margin-top: 12px !important;
	margin: 5px;
	text-align: right;
}

.add-parent-card>.sa-card>.sa-card-body>div>div>div:last-child{
	float: left;
	margin: 5px;
	width: 70%;
}
/*.add-parent-card>.sa-card>.sa-card-body>div>div:first-child{
	float: left;
	width: 24%;
}
.add-parent-card>.sa-card>.sa-card-body>div>div:last-child{
	float: left;
	width: 72%;
}*/
.add-parent-card>.sa-card>.sa-card-footer>div>button{
	color: #FFF;
	background-color: #60e0f1;
}
.add-parent-card>.sa-card>.sa-card-footer>div:nth-child(1){
	text-align: center;
}
.add-parent-card>.sa-card>.sa-card-header>button{
	font-size: 16px;
	background-color: #FFF;
	border: none;
}

/*Code for Second Card*/

.parent-list-secondCard>.sa-card-body>div>div{
	float: left;
	width:	30%;
	height: 142px;
	margin: 5px 12px;
	border: .5px solid black;
	background-color: #f3f3f3;
}

.parent-list-secondCard>.sa-card-body>div>div>div:first-child{
	width: 40%;
}

.parent-list-secondCard>.sa-card-body>div>div>div:first-child>button{
	margin-top: 15px; margin-left: 15px;
}

.parent-list-secondCard>.sa-card-body>div>div>div:first-child>button{
	border-radius: 50%;
	border: 0px; 
	color: #f3f3f3;
	font-size: 60px;
	padding-left: 0px;
	padding-right: 0px;
}
.parent-list-secondCard>.sa-card-body>div>div>div:last-child{
	width: 60%;
	text-align: right;
	margin-top: 20px;
	padding-right: 15px;
}

.parent-list-secondCard>.sa-card-body>div>div:nth-child(1)>div:last-child>div{
	float: right;
}

.parent-list-secondCard>.sa-card-body>div>div>div:nth-child(2)>div>div:first-child{
	color: #60e0f1;
	font-size: 16px;
}



.parent-list-secondCard>.sa-card-body>div>div>div:nth-child(2)>div>div:nth-child(2).btn-group>button:nth-child(1){
	height: 28px;
    vertical-align: middle;
    font-size: 11px;
}

.parent-list-secondCard>.sa-card-body>div>div>div:nth-child(2)>div>div:nth-child(2)>button:nth-child(2){
	color: #fff;
	height: 28px;
	font-size: 10px;
    background-color: #60e0f1;
}

/*.parent-list-secondCard>.sa-card-body>div>div>div:nth-child(2)>div>div:nth-child(3){
	margin: 2px;
}
*/

.parent-list-secondCard>.sa-card-body>div>div>div:nth-child(2)>div>div:nth-child(3)>button{
	height: 28px;
	padding-top: 4px;
	font-size: 12px;
	color: #FFF;
    background-color: #60e0f1;
}

.parent-list-secondCard>.sa-card-body>div>div>div:nth-child(2)>div>div{
	margin: 2px;
}


/*Code for first Card*/


.parent-list-firstCard>.sa-card-header>div:first-child{
	float: left;
	font-size: 16px;
}

.parent-list-firstCard>.sa-card-header>div:first-child>span:first-child{
	font-weight: bold;
}

.parent-list-firstCard>.sa-card-header>div:last-child{
	font-size: 13px;
	float: right;
}



.parent-list-firstCard>.sa-card-body>div:last-child{
	float: left;
	margin-left: 10px;
}
/*This one goes for Orange color Reset Button*/
.parent-list-firstCard>.sa-card-body>div:last-child>button{
	color: #FFF;
	background-color: #ff9900;
}
/*.parent-list-firstCard>.sa-card-body>div:last-child>button>.fa-repeat{
	margin-right: 5px;
}*/


.parent-list-firstCard>.sa-card-body>div:first-child{
	float: left;
}
/*Parent filter button*/
.parent-list-firstCard>.sa-card-body>div:first-child>div:first-child>button:first-child{
	color: #FFF;
	margin-right: 2px;
	background-color: #60e0f1;
}

/*Status button*/
.parent-list-firstCard>.sa-card-body>div:first-child>div:last-child>button:last-child{
	margin-left: 2px;
	background-color: #f9f9f9;
}



/*Custom Codes*/
button>.text-right{
	margin-left: 2px !important;
}

/*Code for First Row*/
.row:first-child{ 
	color: black;
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
	font-size: 24px;
}
.row:first-child>div>div:first-child>div:last-child{
	font-size: 16px;
	margin-top: 6px;
}
.control-label{
	padding-top: 0px !important; 
}


/*Media Queries*/

@media (max-width: 1281px){
/*	.parent-list-secondCard>.sa-card-body>div>div{
	width: 46%;
    display: inline-block;
    margin: 5px 8px;

	}
}*/
@media (max-width: 1218px){
	.parent-list-secondCard>.sa-card-body>div>div{
		margin: 1.5% 1.5%;
	}
}
@media (max-width: 1125px){
	.parent-list-secondCard>.sa-card-body>div>div{
		margin: 1.5% 1.3%;
		min-width: 210px;
	}
}
@media (max-width: 752px){
	.parent-list-secondCard>.sa-card-body>div>div{

	}
}

@media (max-width: 340px){
	.parent-list{
		padding: 0px;
	}
	.add-parent-card{
		padding: 0px;
	}
}
@media (max-width: 320px){
	.parent-list-secondCard>.sa-card-body>div>div{
		width: 245px;
	}
	.parent-list-firstCard>.sa-card-body{
		padding-left: 10px;
	}
	.parent-list-firstCard>.sa-card-body>div:first-child{
		width: 114%;
		padding-left: 0px;
	}
	.parent-list-firstCard>.sa-card-body>div:first-child>div:last-child{
		float: right !important;
	}
	.parent-list-firstCard>.sa-card-body>div:last-child{
		margin-top: 10px;
		margin-left: 0px;
	}
	.parent-list-firstCard>.sa-card-body>div:first-child>div:last-child{
		margin-right: 10px
	}
}
@media (max-width: 418px){
	
}
@media (max-width: 250px){
	.secondCard-body{
		padding: 0px;
	}
}
label{
margin-bottom: 0px !important;
}
</style>