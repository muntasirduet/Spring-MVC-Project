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

<div class="container-fluid">

	<div class="row">
		<div>
			<div class="pull-left">
				<div>Shift List</div>
				<div>Manage all your shift right here</div>
			</div>
		</div>
	</div>
	<div class="col-md-8 shift-list">
		<div class="sa-card shift-list-firstCard">
			<div class="sa-card-header">
				<div>
					<span>Filter</span> shifts
				</div>
				<div>Showing 2 of 2</div>
			</div>

			<div class="sa-card-body">
				<div class="col-md-5 btn-group">
					<div class="dropdown pull-left">
						<button class="btn btn-default" data-toggle="dropdown">
							<span>Shift Filter</span> <span class="caret"></span>
						</button>
					</div>
					<div class="dropdown pull-left">
						<button class="btn btn-default" data-toggle="dropdown">
							<span>Status</span> <span class="caret"></span>
						</button>
					</div>
				</div>

				<div>
					<gts:Button name="<span class='fa fa-repeat'></span>Reset"
						cssClass="btn btn-default" />
				</div>
			</div>
		</div>

		<div class="sa-card shift-list-secondCard">
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
				<div>
					<div>
						<div class="pull-left">
							<div>
								<gts:Button name="<i class='fa fa-book'></i>" />
							</div>
						</div>
						<div class="pull-left">
							<div>
								<div>
									<span>First Shift</span>
								</div>
								<div class="btn-group">
									<gts:Button name="Shift" cssClass="btn btn-default" />
									<gts:Button name="<span class='fa fa-pencil'></span>"
										cssClass="btn btn-default" />
								</div>
								<div class="dropdown">
									<gts:Button name="Actions<span class='caret'></span>"
										cssClass="btn btn-default" />
								</div>

								<div>
									<span>4</span> <span class="fa fa-book"></span>
								</div>
							</div>

						</div>
					</div>

					<div>
						<!-- Second -->
						<div class="pull-left">
							<div>
								<gts:Button name="<i class='fa fa-book'></i>" />
							</div>
						</div>
						<div class="pull-left">
							<div>
								<div>
									<span>2nd Shift</span>
								</div>
								<div class="btn-group">
									<gts:Button name="Shift" cssClass="btn btn-default" />
									<gts:Button name="<span class='fa fa-pencil'></span>"
										cssClass="btn btn-default" />
								</div>
								<div class="dropdown">
									<gts:Button
										name="<span>Actions</span><span class='caret'</span>"
										cssClass="btn btn-default" />
								</div>

								<div>
									<span>8</span> <span class="fa fa-book"></span>
								</div>
							</div>

						</div>
					</div>

					<!-- <div>
						<div class="pull-left">
							<div>
								<button style=""><i class="fa fa-book"></i></button>
							</div>
						</div>
						<div class="pull-left" style="width: 60%; text-align: right; margin-top: 20px; padding-right: 15px;">
							<div style="float: right;">
								<div> 
									<span>Subject 3</span>
								</div>
								<div class="btn-group">
									<button class="btn btn-default" style="">Subject</button>
									<button class="btn btn-default" style=""><span class="fa fa-pencil" style="color: #fff"></span></button>
								</div>
								<div class="dropdown">
									<button class="btn btn-default"><span>Actions</span><span class="caret"></span></button>
								</div>

								<div>
									<span>8</span>
									<span class="fa fa-book"></span>
								</div>
							</div>
							
						</div>
					</div> -->
				</div>
			</div>

		</div>
	</div>
	<div class="col-md-4 add-class">
		<div class="sa-card">
			<div class="sa-card-header">
				<gts:Button
					name="<span class='glyphicon glyphicon-plus'></span><span>Add Shift</span>" />
			</div>
			<div class="sa-card-body">
				<div>
					<div class="col-md-3">
						<gts:Label name="${map.lb_shiftName }" labelFor="shift_name" />
					</div>
					<div class="col-md-9">
						<gts:TextBox name="shift_name" cssClass="form-control" />
					</div>
				</div>
				<!-- <div>
					<div class="col-md-3">
						<label>Days Met</label>
					</div>
					<div class="col-md-9">
						<button class="btn btn-default">Sun</button>
						<button class="btn btn-default">Mon</button>
						<button class="btn btn-default">Tue</button>
						<button class="btn btn-default">Wed</button>
						<button class="btn btn-default">Thu</button>
						<button class="btn btn-default">Fri</button>
						<button class="btn btn-default">Sat</button>
					</div>
				</div> -->
			</div>
			<div class="sa-card-footer">
				<div>
					<gts:Button name="Add Shift" cssClass="btn btn-default" />
				</div>
			</div>
		</div>
	</div>
</div>


<style>
.secondCard-body>div>div>div:nth-child(1)
.secondCard-body>div>div>div:nth-child(2)>div>div:nth-child(4) {
	margin: 2px;
}

.secondCard-body>div>div>div:nth-child(2)>div>div:nth-child(3)>button>span:last-child
	{
	margin-left: 3px;
}

.secondCard-body>div>div>div:nth-child(2)>div>div:nth-child(3)>button {
	color: #FFF;
	background-color: #60e0f1;
}

.secondCard-body>div>div>div:nth-child(2)>div>div:nth-child(3) {
	margin: 2px;
}

.secondCard-body>div>div>div:nth-child(2)>div>div:nth-child(2)>button:nth-child(2)>span
	{
	color: #fff;
}

.secondCard-body>div>div>div:nth-child(2)>div>div:nth-child(2)>button:nth-child(2)
	{
	height: 28px;
	padding-top: 2px;
	background-color: #60e0f1;
}

.secondCard-body>div>div>div:nth-child(2)>div>div:nth-child(2)>button:nth-child(1)
	{
	height: 28px;
	vertical-align: middle;
	padding-top: 2px;
}

.secondCard-body>div>div>div:nth-child(2)>div>div:nth-child(2) {
	margin: 2px;
}

.secondCard-body>div>div>div:nth-child(2)>div>div:nth-child(1) {
	color: #60e0f1;
	font-size: 16px;
}

.row:first-child {
	color: #fff;
	background-color: black;
	padding: 0px 16px;
}

.row:first-child>div {
	display: inline-block;
	width: 100%;
	margin-top: 32px;
	margin-bottom: 32px;
}

.row:first-child>div>div:first-child>div:first-child {
	font-size: 24px;
}

.row:first-child>div>div:first-child>div:last-child {
	font-size: 16px;
	margin-top: 6px;
}

.add-class>.sa-card>.sa-card-body>div>div {
	padding-left: 0px;
	margin-top: 15px;
	margin-bottom: 15px;
}

.add-class>.sa-card>.sa-card-body>div:nth-child(1)>div:first-child>label
	{
	margin-top: 6px;
}

.add-class>.sa-card>.sa-card-body>div:nth-child(2)>div:first-child>label
	{
	margin-top: 8px;
}

.add-class>.sa-card>.sa-card-body>div>div:last-child {
	padding-left: 0px;
}

.add-class>.sa-card>.sa-card-body>div:nth-child(2)>div>button {
	background-color: #f9f9f9;
	margin: 2px;
}

.add-class>.sa-card>.sa-card-footer>div>button {
	color: #FFF;
	background-color: #60e0f1;
}

.add-class>.sa-card>.sa-card-body>div:nth-child(2) {
	margin-top: 40px;
}

.add-class>.sa-card>.sa-card-footer>div:nth-child(1) {
	text-align: center;
}

.add-class>.sa-card>.sa-card-body>div:nth-child(1)>input {
	width: 65%;
	margin-left: 40px;
	display: inline-block;
}

.add-class>.sa-card>.sa-card-header>button>span:first-child {
	margin-right: 3px;
}

.add-class>.sa-card>.sa-card-header>button {
	font-size: 16px;
	background-color: #FFF;
	border: none;
}

.secondCard-body>div>div:nth-child(3)>div:nth-child(2)>div>div:nth-child(3)
	{
	margin: 2px;
}

.secondCard-body>div>div:nth-child(3)>div:nth-child(1)>div>button {
	border-radius: 50%;
	border: none;
	color: white;
	background-color: green;
	font-size: 30px;
	padding: 20px;
}

.secondCard-body>div>div:nth-child(3)>div:nth-child(1)>div {
	margin-top: 15px;
	margin-left: 15px;
}

.secondCard-body>div>div:nth-child(2)>div:nth-child(2)>div {
	float: right;
}

.secondCard-body>div>div:nth-child(2)>div:nth-child(2) {
	width: 60% !important;
	text-align: right !important;
	margin-top: 20px !important;
	padding-right: 15px !important;
}

.secondCard-body>div>div:nth-child(2)>div:nth-child(1)>div>button {
	border-radius: 50%;
	border: none;
	color: white;
	background-color: green;
	font-size: 30px;
	padding: 20px;
}

.secondCard-body>div>div:nth-child(2)>div:nth-child(1)>div {
	margin-top: 15px;
	margin-left: 15px;
}

.secondCard-body>div>div>div:nth-child(1) {
	width: 40%;
}

.secondCard-body>div>div:nth-child(1)>div:last-child>div {
	float: right;
}

.shift-list-secondCard>.sa-card-body>div>div:nth-child(1)>div:last-child
	{
	width: 60%;
	text-align: right;
	margin-top: 20px;
	padding-right: 15px;
}

.shift-list-secondCard>.sa-card-body>div>div>div:first-child>div>button
	{
	border-radius: 50%;
	border: none;
	color: white;
	background-color: green;
	font-size: 20px;
	padding: 20px;
}

.shift-list-secondCard>.sa-card-body>div>div:nth-child(1)>div:first-child>div
	{
	margin-top: 15px;
	margin-left: 15px;
}

.sa-card>.sa-card-header>div>button {
	margin: 2px;
}

.shift-list-firstCard>.sa-card-body>div:last-child>button {
	color: #FFF;
	background-color: #ff9900;
}

.shift-list-firstCard>.sa-card-body>div:last-child>button>span:first-child
	{
	margin-right: 5px;
}

.shift-list-firstCard>.sa-card-body>div:first-child>div:first-child>button:first-child
	{
	color: #FFF;
	margin-right: 2px;
	background-color: #60e0f1;
}

.shift-list-firstCard>.sa-card-body>div:first-child>div:last-child>button:last-child
	{
	margin-left: 2px;
	background-color: #f9f9f9;
}

.shift-list-firstCard>.sa-card-body>div:first-child {
	float: left;
	margin-left: 35px;
}

.shift-list-firstCard>.sa-card-body>div:last-child {
	float: left;
	margin-left: 10px;
}

.shift-list-firstCard>.sa-card-header>div {
	float: left;
	font-size: 16px;
}

.shift-list-firstCard>.sa-card-header>div:last-child {
	font-size: 13px;
	float: right;
}

.shift-list-firstCard>.sa-card-header>div>span:first-child {
	font-weight: bold;
}

.shift-list-secondCard>.sa-card-body>div>div {
	float: left;
	display: inline-block;
	width: 30%;
	margin: 5px 12px;
	border: .5px solid black;
	background-color: #f3f3f3;
}

.sa-card>.sa-card-header>div {
	text-align: center;
}

.sa-card>.sa-card-header>div>.btn-rounded {
	border: .5px solid #ddd;
	border-radius: 50%;
	background-color: #fff;
}

.shift-list {
	width: 64%;
	float: left;
}

.add-class {
	width: 34%;
	float: left;
	margin-left: 20px;
}

@media ( max-width : 991px) {
	.shift-list-secondCard>.sa-card-body>div>div {
		width: 50% !important;
		min-width: 220px;
		display: inline-block;
		margin: 5px 5px;
	}
}

@media ( max-width : 1281px) {
	.shift-list-secondCard>.sa-card-body>div>div {
		width: 46%;
		display: inline-block;
		margin: 5px 8px;
	}
}

@media ( max-width : 1167px) {
	.shift-list-firstCard>.sa-card-body>div:first-child {
		width: 70%;
		margin-left: 0px;
	}
	.shift-list-firstCard>.sa-card-body>div:last-child {
		float: right;
	}
}

@media ( max-width : 1043px) {
	.shift-list {
		
	}
	.add-class {
		width: 33%;
	}
}

@media ( max-width : 710px) {
	.shift-list {
		
	}
	.add-class {
		width: 32%;
	}
}

@media ( max-width : 530px) {
	.shift-list {
		width: 94%;
	}
	.add-class {
		width: 94%;
		margin-left: 0px;
	}
}
</style>
