<%-- 
    Document   : MOI
    Created on : 28 mai 2024, 14:07:04
    Author     : mariame.daou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    

    <title>CRUD Operations</title>

    
  </head>
  <style>
        /* Your custom CSS styles here */

        /* General styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        /* Button styles */
        .btn {
            display: inline-block;
            font-weight: 400;
            text-align: center;
            white-space: nowrap;
            vertical-align: middle;
            user-select: none;
            border: 1px solid transparent;
            padding: 0.375rem 0.75rem;
            font-size: 1rem;
            line-height: 1.5;
            border-radius: 0.25rem;
            transition: all 0.15s ease-in-out;
            cursor: pointer;
        }

        .btn-primary {
            color: #fff;
            background-color: #007bff;
            border-color: #007bff;
        }

        .btn-primary:hover {
            color: #fff;
            background-color: #0069d9;
            border-color: #0062cc;
        }

        /* Table styles */
        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #dee2e6;
            padding: 0.75rem;
            text-align: left;
        }

        th {
            background-color: #f8f9fa;
        }

        /* Modal styles */
        .modal {
            display: none; /* Hide the modal by default */
            position: fixed;
            z-index: 1000;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0,0,0,0.4);
        }

        /* etc... */
    
    table tr td{
    vertical-align: middle;
}

td button{
    margin: 5px;
}

td button i{
    font-size: 20px;
}


.modal-header{
    background: #0d6efd;
    color: #fff;
}

.modal-body form {
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
    padding: 0;
}

.modal-body form .imgholder{
    width: 200px;
    height: 200px;
    position: relative;
    border-radius: 20px;
    overflow: hidden;
}

.imgholder .upload{
    position: absolute;
    bottom: 0;
    left: 10;
    width: 100%;
    height: 100px;
    background: rgba(0,0,0,0.3);
    display: none;
    justify-content: center;
    align-items: center;
    cursor: pointer;
}

.upload i{
    color: #fff;
    font-size: 35px;
}

.imgholder:hover .upload{
    display: flex;
}

.imgholder .upload input{
    display: none;
}

.modal-body form .inputField{
    flex-basis: 68%;
    border-left: 5px groove blue;
    padding-left: 20px;
}

form .inputField > div{
    width: 100%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 20px;
}

form .inputField > div label{
    font-size: 20px;
    font-weight: 500;
}

#userForm form .inputField > div label::after{
    content: "*";
    color: red;
}

form .inputField > div input{
    width: 75%;
    padding: 10px;
    border: none;
    outline: none;
    background: transparent;
    border-bottom: 2px solid blue;
}

.modal-footer .submit{
    font-size: 18px;
}


#readData form .inputField > div input{
    color: #000;
    font-size: 18px;
}
  </style>
  <body>
    

    <section class="p-3">

        <div class="row">
            <div class="col-12">
                <button class="btn btn-primary newUser" data-bs-toggle="modal" data-bs-target="#userForm">New User <i class="bi bi-people"></i></button>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <table class="table table-striped table-hover mt-3 text-center table-bordered">

                    <thead>
                        <tr>
                            <th>S.No</th>
                            <th>Picture</th>
                            <th>Name</th>
                            <th>Age</th>
                            <th>City</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Post</th>
                            <th>Start Date</th>
                            <th>Action</th>
                        </tr>
                    </thead>

                    <tbody id="data"></tbody>

                </table>
            </div>
        </div>

    </section>


    <!--Modal Form-->
    <div class="modal fade" id="userForm">
        <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content">

                <div class="modal-header">
                    <h4 class="modal-title">Fill the Form</h4>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>

                <div class="modal-body">

                    <form action="#" id="myForm">

                        <div class="card imgholder">
                            <label for="imgInput" class="upload">
                                <input type="file" name="" id="imgInput">
                                <i class="bi bi-plus-circle-dotted"></i>
                            </label>
                            <img src="./image/Profile Icon.webp" alt="" width="200" height="200" class="img">
                        </div>

                        <div class="inputField">
                            <div>
                                <label for="name">Name:</label>
                                <input type="text" name="" id="name" required>
                            </div>
                            <div>
                                <label for="age">Age:</label>
                                <input type="number" name="" id="age" required>
                            </div>
                            <div>
                                <label for="city">City:</label>
                                <input type="text" name="" id="city" required>
                            </div>
                            <div>
                                <label for="email">E-mail:</label>
                                <input type="email" name="" id="email" required>
                            </div>
                            <div>
                                <label for="phone">Number:</label>
                                <input type="text" name="" id="phone" minlength="11" maxlength="11" required>
                            </div>
                            <div>
                                <label for="post">Post:</label>
                                <input type="text" name="" id="post" required>
                            </div>
                            <div>
                                <label for="sDate">Start Date:</label>
                                <input type="date" name="" id="sDate" required>
                            </div>
                        </div>

                    </form>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" form="myForm" class="btn btn-primary submit">Submit</button>
                </div>
            </div>
        </div>
    </div>

    <!--Read Data Modal-->
    <div class="modal fade" id="readData">
        <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content">

                <div class="modal-header">
                    <h4 class="modal-title">Profile</h4>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>

                <div class="modal-body">

                    <form action="#" id="myForm">

                        <div class="card imgholder">
                            <img src="./image/Profile Icon.webp" alt="" width="200" height="200" class="showImg">
                        </div>

                        <div class="inputField">
                            <div>
                                <label for="name">Name:</label>
                                <input type="text" name="" id="showName" disabled>
                            </div>
                            <div>
                                <label for="age">Age:</label>
                                <input type="number" name="" id="showAge" disabled>
                            </div>
                            <div>
                                <label for="city">City:</label>
                                <input type="text" name="" id="showCity" disabled>
                            </div>
                            <div>
                                <label for="email">E-mail:</label>
                                <input type="email" name="" id="showEmail" disabled>
                            </div>
                            <div>
                                <label for="phone">Number:</label>
                                <input type="text" name="" id="showPhone" minlength="11" maxlength="11" disabled>
                            </div>
                            <div>
                                <label for="post">Post:</label>
                                <input type="text" name="" id="showPost" disabled>
                            </div>
                            <div>
                                <label for="sDate">Start Date:</label>
                                <input type="date" name="" id="showsDate" disabled>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>


    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <script src="app.js"></script>
  </body>
</html>