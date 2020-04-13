<%@page import="model.CrudUser"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <title>my first page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>


    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: sans-serif;
        }

        .formBox {
            margin-top: 90px;
            padding: 50px;
        }

        .formBox h1 {
            margin: 0;
            padding: 0;
            text-align: center;
            margin-bottom: 50px;
            text-transform: uppercase;
            font-size: 48px;
        }

        .inputBox {
            position: relative;
            box-sizing: border-box;
            margin-bottom: 50px;
        }

        .inputBox .inputText {
            position: absolute;
            font-size: 24px;
            line-height: 50px;
            transition: .5s;
            opacity: .5;
        }

        .inputBox .input {
            position: relative;
            width: 100%;
            height: 50px;
            background: transparent;
            border: none;
            outline: none;
            font-size: 24px;
            border-bottom: 1px solid rgba(0, 0, 0, .5);
            margin-top: 35px;

        }

        .focus .inputText {
            transform: translateY(-30px);
            font-size: 18px;
            opacity: 1;
            color: #00bcd4;

        }

        textarea {
            height: 100px !important;
        }

        .button {
            width: 100%;
            height: 50px;
            border: none;
            outline: none;
            background: #03A9F4;
            color: #fff;
        }
    </style>

</head>



<body>
    <% CrudUser cu = (CrudUser) request.getAttribute("userToUpdate"); %>
    <div class="container-fluid">
        <div class="container">
            <div class="formBox">
                <form action="update" method="post">
                    <div class="row">
                        <div class="col-sm-12">
                            <h1>Update form</h1>
                        </div>
                    </div>

                    <div class="row" hidden>
                        <div class="inputBox ">
                                <div class="inputText">Id</div>
                                <input type="text" name="id" class="input" value="<%= cu.getId()%>">
                            </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="inputBox ">
                                <div class="inputText">Real Name</div>
                                <input type="text" name="realname" class="input" value="<%= cu.getRealName() %>">
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="inputBox">
                                <div class="inputText">Username</div>
                                <input type="text" name="username" class="input" value="<%= cu.getUsername()%>">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-6">
                            <div class="inputBox">
                                <div class="inputText">Password</div>
                                <input type="text" name="password" class="input" value="<%=cu.getPassword()%>">
                            </div>
                        </div>
                        <div class="col-sm-3"></div>
                    </div>

                    <div class="row">
                        <div class="col-sm-12">
                            <input type="submit" name="" class="button" value="Update User">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>



    <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
    <script type="text/javascript">
        $(".input").focus(function () {
            $(this).parent().addClass("focus");
        })
    </script>
</body>

</html>