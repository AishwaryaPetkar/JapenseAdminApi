<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manage Teacher</title>
<link rel="stylesheet" href="css/admin.css" />
<link rel="stylesheet" href="css/admin.css">
<script src="https://kit.fontawesome.com/ae73087723.js"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<style>
.Container {
	width: 100%;
	height: 100vh;
	margin-top: 50px
}

.container2 {
	display: grid;
	grid-template-columns: 1fr 1fr 1fr 1fr;
}

.TableContainer {
	margin-top: 20px;
	background: #fff;
	border-radius: 7px;
	border: 1.5px solid #e8e8e8;
	padding: 20px;
	cursor: pointer;
}

.MainTable {
	border-collapse: collapse;
	text-align: center;
	overflow: hidden;
	cursor: pointer;
	width: 100%;
}

.tableheading {
	border-bottom: 1px solid rgb(208, 208, 208);
}

.tableheading th {
	padding: 1rem;
	text-transform: capitalize;
	letter-spacing: 0.1rem;
	font-size: 0.9rem;
	font-weight: 600;
	color: rgb(56, 56, 56);
}

.tablebody {
	padding: 1rem 1.8rem;
	font-weight: 500;
	font-size: 13.5px;
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
					<li><a href="#"><img src="uploadfiles/logo.png"
							style="width: 300px; margin-top: 10px;" /></a></li>
				</ul>
			</div>
			<div class="profile">
				<img src="uploadfiles/profile.jpg" class="profimg"
					alt="profile-photo">
				<div>
					<ul class="profile-link">
						<li
							style="text-transform: uppercase; font-size: 10.5px; margin-left: 10px; padding: .4rem; font-weight: 600;">
							Welcome!</li>
						<li><a href="#"><i
								class="fa-solid fa-person-running icon"></i>Logout</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<main>
			<div class="Container">
				<h1
					style="margin-bottom: 30px; text-align: center; font-weight: 600; font-size: 30px">MANAGE
					TEACHER</h1>
				<div class='TableContainer'>
					<div class="tablestyle">
						<table class='MainTable'>
							<thead class='tableheading'>
								<tr>
									<th style="width: 100px">SrNo</th>
									<th>First Name</th>
									<th>Last Name</th>
									<th>Select Course</th>
									<th>Select Batch</th>
									<th style="width: 350px">Email Id</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody class='tablebody'>
								<!-- <tr>
									<td>1</td>
									<td>Prajwal</td>
									<td>Amdare</td>
									<td>Java</td>
									<td>Batch 1</td>
									<td>prajwalamdare@gmail.com</td>
									<td><a><i class="fa-regular fa-pen-to-square"
											style="color: #12e068; padding-right: 10px"></i></a> <a><i
											class="fa-solid fa-trash" style="color: #eb070f"></i></a></td>
								</tr> -->
							</tbody>
						</table>
					</div>
				</div>
				<div
					style="display: flex; justify-content: center; margin-top: 20px">
					<button
						style="cursor: pointer; background-color: green; color: #ffffff; border-radius: 5px; padding: 15px; width: 100px; border: none">Update</button>
				</div>
			</div>
		</main>
	</section>
	<script>
    $(document).ready(function() {
        // Fetch all teachers when the page loads
        fetchAllTeachers();

        function fetchAllTeachers() {
            $.ajax({
                url: "getAllTeacher",
                type: "GET",
                contentType: "application/json",
                success: function(response) {
                    if (response.status === "SUCCESS") {
                        populateTable(response.data);
                    } else {
                        alert(response.message);
                    }
                },
                error: function(error) {
                    alert("Failed to fetch teachers data");
                }
            });
        }

        function populateTable(teachers) {
            var tableBody = $(".tablebody");
            tableBody.empty(); // Clear existing rows

            teachers.forEach(function(teacher, index) {
                var row = $("<tr>");
                row.append($("<td>").text(index + 1)); // SrNo
                row.append($("<td>").text(teacher.firstName)); // First Name
                row.append($("<td>").text(teacher.lastName)); // Last Name
                row.append($("<td>").text(teacher.courses)); // Select Course
                row.append($("<td>").text(teacher.batch)); // Select Batch
                row.append($("<td>").text(teacher.emailId)); // Email Id
                
                var actionCell = $("<td>");
                
                var updateIcon = $("<i>").addClass("fa-regular fa-pen-to-square").css("color", "#12e068").css("cursor", "pointer").click(function() {
                    editTeacher(teacher.id);
                });
                
                var deleteIcon = $("<i>").addClass("fa-solid fa-trash").css("color", "#eb070f").css("cursor", "pointer").click(function() {
                    deleteTeacher(teacher.id);
                });
                
                actionCell.append(updateIcon).append(" "); // Add a space between icons
                actionCell.append(deleteIcon);

                row.append(actionCell); // Action

                tableBody.append(row);
            });
        }

        function editTeacher(id) {
            window.location.href = "editTeacher?id=" + id;
        }

        function deleteTeacher(id) {
            $.ajax({
                url: "deleteTeacher/" + id,
                type: "DELETE",
                contentType: "application/json",
                success: function(response) {
                    if (response.status === "SUCCESS") {
                        fetchAllTeachers(); // Refresh the table after deletion
                        alert(response.message);
                    } else {
                        alert(response.message);
                    }
                },
                error: function(error) {
                    alert("Failed to delete teacher");
                }
            });
        }
    });
	</script>
	<script src="js/adminscript.js"></script>
</body>
</html>