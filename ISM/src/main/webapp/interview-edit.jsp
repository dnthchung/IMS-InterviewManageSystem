<%-- 
    Document   : interview-edit
    Created on : Apr 7, 2024, 3:27:21 PM
    Author     : chun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Interview Edit</title>
        <link rel="icon" type="image/x-icon" href="Image/Logo/ims-logo.png">

        <!-- Bootstrap 5 CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
              crossorigin="anonymous">
        <!-- multi select -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" />
        <link rel="stylesheet"
              href="https://cdn.jsdelivr.net/npm/select2-bootstrap-5-theme@1.3.0/dist/select2-bootstrap-5-theme.min.css" />
        <!-- link to css -->
        <link rel="stylesheet" href="CSS/interview-edit.css">

    </head>
    <body>
        <!-- side bar -->
        <div class="d-flex flex-row">
            <div class="d-flex flex-column flex-shrink-0 sidebar-wrap" id="sidebar">
                <a href="#" class="text-decoration-none logo-wrap">
                    <div class="icon-wrap">
                        <img src="Image/Logo/ims-logo.png" class="mlogo" />
                    </div>
                    <span style="font-weight: bolder ;font-size: 20px; color: #000;">ISM</span>
                </a>
                <hr>
                <ul class="nav nav-pills flex-column mb-auto mt-5">
                    <li class="nav-item">
                        <a href="#" class="nav-link " aria-current="page">
                            <div class="icon-wrap">
                                <i data-lucide="home"></i>
                            </div>
                            <span> Home</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="nav-link">
                            <div class="icon-wrap">
                                <i data-lucide="users"></i>
                            </div>
                            <span>Candidate</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="nav-link">
                            <div class="icon-wrap">
                                <i data-lucide="briefcase-business"></i>
                            </div>
                            <span>Job</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="nav-link">
                            <div class="icon-wrap">
                                <i data-lucide="message-circle-code"></i>
                            </div>
                            <span>Interview</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="nav-link">
                            <div class="icon-wrap">
                                <i data-lucide="file-check-2"></i>
                            </div>

                            <span>Offer</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="nav-link">
                            <div class="icon-wrap">
                                <i data-lucide="user-plus"></i>
                            </div>

                            <span>User</span>
                        </a>
                    </li>
                </ul>
                <hr>
            </div>
            <!-- navigation bar + main content-->
            <div class="main-content">
                <!-- navigation bar -->
                <nav class="navbar navbar-expand-sm ">
                    <div class="container-fluid">
                        <div class="mpage-name" href="#">
                            <h2 class="" style="color: black;">Interview Schedule</h2>
                        </div>

                        <div class="collapse navbar-collapse" id="mynavbar">
                            <ul class="navbar-nav me-auto">
                                <li class="nav-item">
                                    <a class="nav-link" href="#"></a>
                                </li>
                            </ul>
                            <!-- <div class="d-flex user-area">
                                <div class="user-info d-flex flex-column align-items-center">
                                    <span class="username">@chungdth</span>
                                    <p>HR Department</p>
                                </div>
                                <div style="padding: 15px;">
                                    <i style="height: 20px;" data-lucide="user"></i>
                                </div>
                                <div class="d-flex align-items-center">
                                    <a href="#" style="font-style: italic; color: black; margin-right: 20px;">Logout</a>
                                </div>
                            </div> -->
                            <div class="d-flex" style="gap: 25px;">
                                <div class="button-2">
                                    <a href="#" style="text-decoration: none; color: #000;">Login</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </nav>

                <!-- body -->
                <div class="container-fluid mt-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb" style="margin-left: 1em">
                            <li class="breadcrumb-item">
                                <a href="#">Interview Schedule List</a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">
                                <a  href="#">New Interview Schedule</a>
                            </li>
                        </ol>
                    </nav>
                    <div class="d-flex">
                        <div class="me-auto p-2 "></div>
                        <div class="p-2"> 
                            <button class="button33">
                                <span class="button-text">Cancel Schedule</span>
                                <span class="button-icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                                         stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                         class="lucide lucide-ban">
                                    <circle cx="12" cy="12" r="10" />
                                    <path d="m4.9 4.9 14.2 14.2" />
                                    </svg>
                                </span>
                            </button>
                        </div>
                    </div>
                    <!-- content-card -->
                    <div class="card my-card">
                        <div class="content">
                            <!-- class="content-1" -->
                            <div class="content-1">

                            </div>
                            <!-- class="content-2" -->
                            <div class="card-body">
                                <form action="">
                                    <div class="part1 mt-3">
                                        <!-- row1 -->
                                        <div class="row mb-3">
                                            <div class="col-md-5 row">
                                                <div class="col-md-4 part-title">
                                                    Schedule title<span style="color: red;">*</span>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="input-group" style="padding: 0px !important;">
                                                        <input type="text" class="form-control" placeholder="Type a title..." required>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-1"></div>
                                            <div class="col-md-5 row">
                                                <div class="col-md-3 part-title">
                                                    Job<span style="color: red;">*</span>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="input-group" style="padding: 0px !important;">
                                                        <select class="form-select"
                                                                data-placeholder="Select a job ...">
                                                            <option selected disabled>Select a job...</option>
                                                            <option>Fresher</option>
                                                            <option>Junior</option>
                                                            <option>Intern</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- row2 -->
                                        <div class="row mb-3">
                                            <div class="col-md-5 row">
                                                <div class="col-md-4 part-title">
                                                    Candidate name<span style="color: red;">*</span>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="input-group" style="padding: 0px !important;">
                                                        <select class="form-select" placeholder="Select candidate ...">
                                                            <option selected disabled>Select candidate...</option>
                                                            <option>Fresher</option>
                                                            <option>Junior</option>
                                                            <option>Intern</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-1"></div>
                                            <div class="col-md-5 row">
                                                <div class="col-md-3 part-title">
                                                    Interviewer<span style="color: red;">*</span>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="input-group" style="padding: 0px !important;">
                                                        <select class="form-select"
                                                                data-placeholder="Choose benefits ..."
                                                                id="small-select2-options-multiple-field-interviews" multiple>
                                                            <option>Lunch</option>
                                                            <option>25 days off</option>
                                                            <option>Team building</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- row3 -->
                                        <div class="row mb-3">
                                            <div class="col-md-5 row">
                                                <div class="col-md-4 part-title">
                                                    Schedule Time<span style="color: red;">*</span>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="input-group" style="padding: 0px !important;">
                                                        <input type="date" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-md-12 d-flex mt-3">
                                                    <span style="margin-right: 10px;margin-left: 182px;margin-top: 5px;">From </span>
                                                    <div class="cs-form col-md-3" style="margin-right: 10px">
                                                        <input type="time" class="form-control" />
                                                    </div>
                                                    <span style="margin-right: 10px;margin-top: 5px;">To </span>
                                                    <div class="cs-form col-md-3">
                                                        <input type="time" class="form-control" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-1"></div>
                                            <div class="col-md-5 row">
                                                <div class="col-md-3 part-title">
                                                    Location
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="input-group" style="padding: 0px !important;">
                                                        <input type="text" class="form-control" placeholder="Type a location...">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="part2 mt-3">
                                        <!-- row1 -->
                                        <div class="row">
                                            <div class="col-md-5 row">
                                                <div class="col-md-4 part-title">
                                                    Notes
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="form-floating" style="padding: 0px !important;">
                                                        <textarea style="height: 200px" class="form-control" placeholder="Type description" id="floatingTextarea"></textarea>
                                                        <label for="floatingTextarea">Type schedule note ...</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-1"></div>
                                            <div class="col-md-5 row">
                                                <div class="col-md-3 part-title">
                                                    Recruiter owner<span style="color: red;">*</span>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="input-group" style="padding: 0px !important;">
                                                        <input type="text" class="form-control" placeholder="">
                                                    </div>
                                                    <div style="margin-top: 15px">
                                                        <a href="#" style="color: #000">Assign me</a>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 row mt-3" >
                                                    <div class="col-md-3 part-title">
                                                        Meeting ID
                                                    </div>
                                                    <div class="col-md-8" >
                                                        <div class="input-group" style="margin-left: 5px;padding: 0px !important;">
                                                            <input type="text" class="form-control" placeholder="">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 row mt-3">
                                                    <div class="col-md-3 part-title">
                                                        Result
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class="input-group" style="margin-left: 5px;padding: 0px !important;">
                                                            <select class="form-select"
                                                                    data-placeholder="Select a job ...">
                                                                <option selected disabled>Please select a result...</option>
                                                                <option>Fresher</option>
                                                                <option>Junior</option>
                                                                <option>Intern</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 row mt-3">
                                                    <div class="col-md-3 part-title">
                                                        Status
                                                    </div>
                                                    <div class="col-md-8" >
                                                        <div class="input-group" style="margin-left: 5px;padding: 0px !important;">
                                                            Open
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- row2 -->
                                        <div class="row mb-3">
                                            <div class="col-md-5 row">

                                            </div>
                                            <div class="col-md-1"></div>
                                            <div class="col-md-5 row">
                                                
                                            </div>
                                        </div>
                                        <!-- row3 -->
                                        <div class="row mb-3">
                                            <div class="col-md-5 row">
                                            </div>
                                            <div class="col-md-1"></div>
                                            <div class="col-md-5 row">
                                                
                                            </div>
                                        </div>
                                        <!-- row4 -->
                                        <div class="row mb-3">
                                            <div class="col-md-5 row">

                                            </div>
                                            <div class="col-md-1"></div>
                                            <div class="col-md-5 row">

                                            </div>
                                        </div>
                                    </div>
                                    <br><br>
                                    <div class="d-flex justify-content-center">
                                        <button class="button-2"
                                                style="background-color: #ABDF75; color: #fff;">Submit</button>
                                        <button class="button-2"
                                                style="background-color: #EFA9AE; color: #fff; margin-left: 3em;">Cancel</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- jQuery -->
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.0/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>

        <script src="https://unpkg.com/lucide@latest"></script>
        <script>
            //icon lucide
            lucide.createIcons();
        </script>
        <script>
            //interviews multi choice
            $('#small-select2-options-multiple-field-interviews').select2({
                theme: "bootstrap-5",
                width: $(this).data('width') ? $(this).data('width') : $(this).hasClass('w-100') ? '100%' : 'style',
                placeholder: $(this).data('placeholder'),
                closeOnSelect: false,
                selectionCssClass: 'select2--small',
                dropdownCssClass: 'select2--small'
            });
        </script>
    </body>
</html>
