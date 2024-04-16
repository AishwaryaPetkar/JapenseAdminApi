<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add List</title>
<link rel="stylesheet" href="css/admin.css">
<script src="https://kit.fontawesome.com/ae73087723.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<style>
.Container {
	width: 100%;
	height: 100vh;
}

.container2 {
	display: grid;
	grid-template-columns: 1fr 1fr 1fr 1fr;
	grid-gap: 30px;
}

.container3 {
	display: grid;
	grid-template-columns: 1fr 1fr;
	grid-gap: 30px;
}

@media screen and (max-width: 1000px) {
	.container2 {
		grid-template-columns: 1fr;
	}
}
</style>
<body>
	<section id="sidebar">
		<div class="brandHead">
			<a href="/" class="brand" style="color: rgb(16, 8, 92);"><img
				src="uploadfiles/logo2.png" style="width: 50px; margin-right: 10px;" />Admin</a>
		</div>
		<ul class="side-menu">
			<li><a href="#" style="color: rgb(16, 8, 92); font-weight: 500"><i
					class="fa-solid fa-user icon"></i>Sub User <i
					class="fa-solid fa-caret-down icon-right"></i></a>
				<ul class="side-dropdown">
					<li><a href="userlist"
						style="color: rgb(16, 8, 92); font-weight: 500"><i
							class="fa-solid fa-list" style="margin-right: 15px"></i>User List</a></li>
					<li><a href="createroles"
						style="color: rgb(16, 8, 92); font-weight: 500"><i
							class="fa-regular fa-user" style="margin-right: 15px"></i>Create
							Roles</a></li>
					<li><a href="createuser"
						style="color: rgb(16, 8, 92); font-weight: 500"><i
							class="fa-solid fa-user-plus" style="margin-right: 15px"></i>Create
							User</a></li>
				</ul></li>
			<li><a href="#" style="color: rgb(16, 8, 92); font-weight: 500"><i
					class="fa-solid fa-clipboard-list icon"></i>Teacher <i
					class="fa-solid fa-caret-down icon-right"></i></a>
				<ul class="side-dropdown">
					<li><a href="addteacher"
						style="color: rgb(16, 8, 92); font-weight: 500"><i
							class="fa-solid fa-plus" style="margin-right: 15px"></i>Create
							Teacher</a></li>
					<li><a href="rolespermission"
						style="color: rgb(16, 8, 92); font-weight: 500"><i
							class="fa-solid fa-person" style="margin-right: 15px"></i>Role/Permission</a></li>
					<li><a href="attendanceofstudents"
						style="color: rgb(16, 8, 92); font-weight: 500"><i
							class="fa-solid fa-clipboard-user" style="margin-right: 15px"></i>Attendance
							of Students</a></li>
				</ul></li>
			<li><a href="#" style="color: rgb(16, 8, 92); font-weight: 500"><i
					class="fa-regular fa-user icon"></i>Student<i
					class="fa-solid fa-caret-down icon-right"></i></a>
				<ul class="side-dropdown">
					<li><a href="addstudents"
						style="color: rgb(16, 8, 92); font-weight: 500"><i
							class="fa-solid fa-person-circle-plus" style="margin-right: 15px"></i>Add
							Students</a></li>
				</ul></li>
			<li><a href="courses"
				style="color: rgb(16, 8, 92); font-weight: 500"><i
					class="fa-solid fa-book" style="margin-left: 12px; font-size: 15px"></i><span
					style="margin-left: 30px">Courses</span></a></li>
			<li><a href="batches"
				style="color: rgb(16, 8, 92); font-weight: 500"><i
					class="fa-solid fa-calendar-days"
					style="margin-left: 12px; font-size: 15px"></i><span
					style="margin-left: 30px">Batches</span></a></li>
			<li><a href="subscription"
				style="color: rgb(16, 8, 92); font-weight: 500"><i
					class="fa-solid fa-cart-plus"
					style="margin-left: 12px; font-size: 15px"></i><span
					style="margin-left: 30px">Subscription</span></a></li>
			<li><a href="#" style="color: rgb(16, 8, 92); font-weight: 500"><i
					class="fa-solid fa-user icon"></i>Study Material<i
					class="fa-solid fa-caret-down icon-right"></i></a>
				<ul class="side-dropdown">
					<li><a href="addcategory"
						style="color: rgb(16, 8, 92); font-weight: 500"><i
							class="fa-solid fa-plus" style="margin-right: 15px"></i>Add
							Category</a></li>
					<li><a href="studymaterial"
						style="color: rgb(16, 8, 92); font-weight: 500"><i
							class="fa-solid fa-book" style="margin-right: 15px"></i>Study
							Material</a></li>
					<li><a href="addmaterial"
						style="color: rgb(16, 8, 92); font-weight: 500"><i
							class="fa-solid fa-address-book" style="margin-right: 15px"></i>Add
							Material</a></li>
				</ul></li>
			<li><a href="#" style="color: rgb(16, 8, 92); font-weight: 500"><i
					class="fa-solid fa-user icon"></i>Allotment to Study Material <i
					class="fa-solid fa-caret-down icon-right"></i></a>
				<ul class="side-dropdown">
					<li><a href="allot"
						style="color: rgb(16, 8, 92); font-weight: 500"><i
							class="fa-regular fa-user" style="margin-right: 15px"></i>Add
							Allotment</a></li>
					<li><a href="addlist"
						style="color: rgb(16, 8, 92); font-weight: 500"><i
							class="fa-solid fa-list" style="margin-right: 15px"></i>Add List</a></li>
				</ul></li>
			<li><a href="attendance"
				style="color: rgb(16, 8, 92); font-weight: 500"><i
					class="fa-solid fa-clipboard-user"
					style="margin-left: 12px; font-size: 15px"></i><span
					style="margin-left: 30px">Attendance of Students</span></a></li>
			<li><a href="enquiry"
				style="color: rgb(16, 8, 92); font-weight: 500"><i
					class="fa-solid fa-phone"
					style="margin-left: 12px; font-size: 15px"></i><span
					style="margin-left: 30px">Enquiry</span></a></li>
			<li><a href="logs"
				style="color: rgb(16, 8, 92); font-weight: 500"><i
					class="fa-solid fa-database"
					style="margin-left: 12px; font-size: 15px"></i><span
					style="margin-left: 30px">Logs</span></a></li>
		</ul>
	</section>
	<section id="content">
		<nav class="navcont">
            <i class="fa-solid fa-bars toggle-sidebar"></i>
            <div class="subnav">
                <ul>
                    <li><a href="#"><img src="uploadfiles/logo.png" style="width: 300px; margin-top: 10px;" /></a></li>
                </ul>
            </div>

            <div class="profile">
                <img src="uploadfiles/profile.jpg" class="profimg" alt="profile-photo">
                <div>
                    <ul class="profile-link">
                        <li
                            style="text-transform: uppercase; font-size: 10.5px; margin-left: 10px; padding: .4rem; font-weight: 600;">
                            Welcome!</li>
                        <li><a href="#"><i class="fa-solid fa-person-running icon"></i>Logout</a></li>
                    </ul>
                </div>
            </div>
        </nav>
		<div>
			<h1
				style="margin-bottom: 30px; text-align: center; font-weight: 600; font-size: 30px">ADD
				LIST</h1>
			<div class="container2" style="margin-left: 20px; margin-right: 20px">
				<div style="display: flex; flex-direction: column;">
					<label style="font-size: 13px; margin-bottom: 7px">Select
						Course</label> <select id="myDropdown" name=""
						style="padding: 10px; border-radius: 5px; border: 1px solid #bfb8b8;">
						<option>Select</option>
						<option value="1">Enrolled Students</option>
						<option value="2">Subscription Students</option>
					</select>
				</div>
			</div>
		</div>
		<div class="modal fade" id="myModal1">
			<div class="modal-dialog modal-dialog-scrollable">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title">Enrolled Students</h4>
					</div>
					<div class="modal-body">
						<div class="container3" style="">
							<div style="display: flex; flex-direction: column;">
								<label style="font-size: 13px; margin-bottom: 7px">Select
									Course</label> <select id="" name=""
									style="padding: 10px; border-radius: 5px; border: 1px solid #bfb8b8;">
									<option>Select</option>
									<option>Permission</option>
									<option>Roles</option>
								</select>
							</div>
							<div style="display: flex; flex-direction: column;">
								<label style="font-size: 13px; margin-bottom: 7px">Select
									Batch</label> <select id="" name=""
									style="padding: 10px; border-radius: 5px; border: 1px solid #bfb8b8;">
									<option>Select</option>
									<option>Permission</option>
									<option>Roles</option>
								</select>
							</div>
							<div style="display: flex; flex-direction: column;">
								<label style="font-size: 13px; margin-bottom: 7px">Select
									Study Material</label> <input id="" name="" type="text"
									required="required"
									style="padding: 10px; border-radius: 5px; border: 1px solid #bfb8b8">
							</div>
							<div style="display: flex; flex-direction: column;">
								<label style="font-size: 13px; margin-bottom: 7px">Select
									Date</label> <input id="" name="" type="date" required="required"
									style="padding: 10px; border-radius: 5px; border: 1px solid #bfb8b8">
							</div>

							<div style="display: flex; flex-direction: column;">
								<label style="font-size: 13px; margin-bottom: 7px">Select
									Starting Time</label> <input id="" name="" type="text"
									required="required"
									style="padding: 10px; border-radius: 5px; border: 1px solid #bfb8b8">
							</div>
							<div style="display: flex; flex-direction: column;">
								<label style="font-size: 13px; margin-bottom: 7px">Select
									Expire Date and Time</label> <input id="" name="" type="text"
									required="required"
									style="padding: 10px; border-radius: 5px; border: 1px solid #bfb8b8">
							</div>
						</div>
						<div
							style="display: flex; justify-content: center; gap: 50px; margin-top: 30px">
							<button
								style="cursor: pointer; background-color: #59f7f1; color: #ffffff; border-radius: 5px; padding: 10px; width: 100px; border: none">Submit</button>
							<a href="manageaddmaterial">
								<button type="button" data-dismiss="modal"
									style="cursor: pointer; background-color: red; color: #ffffff; border-radius: 5px; padding: 10px; width: 100px; border: none">Close</button>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="modal fade" id="myModal2">
			<div class="modal-dialog modal-dialog-scrollable">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title">Subscription Students</h4>
					</div>
					<div class="modal-body">
						<div class="container3" style="">
							<div style="display: flex; flex-direction: column;">
								<label style="font-size: 13px; margin-bottom: 7px">Select
									Course</label> <select id="" name=""
									style="padding: 10px; border-radius: 5px; border: 1px solid #bfb8b8;">
									<option>Select</option>
									<option>Permission</option>
									<option>Roles</option>
								</select>
							</div>
							<div style="display: flex; flex-direction: column;">
								<label style="font-size: 13px; margin-bottom: 7px">Select
									Date</label> <input id="" name="" type="date" required="required"
									style="padding: 10px; border-radius: 5px; border: 1px solid #bfb8b8">
							</div>

							<div style="display: flex; flex-direction: column;">
								<label style="font-size: 13px; margin-bottom: 7px">Select
									Starting Time</label> <input id="" name="" type="text"
									required="required"
									style="padding: 10px; border-radius: 5px; border: 1px solid #bfb8b8">
							</div>
							<div style="display: flex; flex-direction: column;">
								<label style="font-size: 13px; margin-bottom: 7px">Select
									Expire Date and Time</label> <input id="" name="" type="text"
									required="required"
									style="padding: 10px; border-radius: 5px; border: 1px solid #bfb8b8">
							</div>
						</div>
						<div
							style="display: flex; justify-content: center; gap: 50px; margin-top: 30px">
							<button
								style="cursor: pointer; background-color: #59f7f1; color: #ffffff; border-radius: 5px; padding: 10px; width: 100px; border: none">Submit</button>
							<a href="manageaddmaterial">
								<button type="button" data-dismiss="modal"
									style="cursor: pointer; background-color: red; color: #ffffff; border-radius: 5px; padding: 10px; width: 100px; border: none">Close</button>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Include Bootstrap JS -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


	<script>
		$(document).ready(function() {
			// Handle dropdown change event
			$('#myDropdown').change(function() {
				var selectedOption = $(this).val();
				// Show respective modal based on the selected option
				if (selectedOption === "1") {
					$('#myModal1').modal('show');
				} else if (selectedOption === "2") {
					$('#myModal2').modal('show');
				} else {
					// Handle other options if needed
				}
			});
		});
	</script>
	<script src="js/adminscript.js"></script>
</body>
</html>