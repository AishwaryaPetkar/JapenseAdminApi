<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Category</title>
<link rel="stylesheet" href="css/admin.css">
<script src="https://kit.fontawesome.com/ae73087723.js"
	crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
		<main>
			<div>
				<h1
					style="margin-bottom: 30px; text-align: center; font-weight: 600; font-size: 30px">UPDATE
					CATEGORY</h1>

				<div class="container2"
					style="margin-left: 20px; margin-right: 20px">
					<input type="hidden" id="id" name="id">
					<div style="display: flex; flex-direction: column;">
						<label style="font-size: 13px; margin-bottom: 7px">Enter
							Category Name</label> <input id="category" name="category" type="text" required="required"
							style="padding: 10px; border-radius: 5px; border: 1px solid #bfb8b8">
					</div>
				</div>
				<div
					style="display: flex; justify-content: center; gap: 50px; margin-top: 30px">
					<button id="saveButton"
						style="cursor: pointer; background-color: #59f7f1; color: #ffffff; border-radius: 5px; padding: 15px; width: 100px; border: none">Update</button>
					
				</div>

			</div>
		</main>
	</section>
	<script src="js/adminscript.js"></script>
	<script type="text/javascript">
    $(document).ready(function() {
        var categoryId = getUrlParameter('id');

        if (categoryId) {
        	getCategoryDetails(categoryId);
        } else {
            alert("Category ID is missing");
        }

        function getCategoryDetails(id) {
            $.ajax({
                url: "categoryFindById/" + id,
                type: "GET",
                contentType: "application/json",
                success: function(response) {
                    console.log("Response Data:", response);
                    if (response) {
                        populateForm(response); 
                    } else {
                        alert("No category data found");
                    }
                },
                error: function(error) {
                    alert("Failed to fetch category data");
                }
            });
        }

        function populateForm(category) {
            $("#id").val(category.id);
            $("#category").val(category.category);
        }

        function getUrlParameter(name) {
            name = name.replace(/[\[]/, '\\[').replace(/[\]]/, '\\]');
            var regex = new RegExp('[\\?&]' + name + '=([^&#]*)');
            var results = regex.exec(location.search);
            return results === null ? '' : decodeURIComponent(results[1].replace(/\+/g, ' '));
        }
    });
</script>
	<script>
    $(document).ready(function() {
        $("#saveButton").click(function() {
            var id = $("#id").val();
            var category = $("#category").val();
           
            var categoryData = {
                id: id,
                category: category
            };

            $.ajax({
                url: "updateCategory",
                type: "PUT", // Use PUT method
                contentType: "application/json",
                data: JSON.stringify(categoryData),
                success: function(response) {
                    alert(response);
                    window.location.href = "managecategory";
                },
                error: function(error) {
                    alert("Failed to update category");
                }
            });
        });
    });
</script>



	
</body>
</html>