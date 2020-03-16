<%--
  Created by IntelliJ IDEA.
  User: George Craciun
  Date: 11/4/2019
  Time: 6:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Form Exercise</title>
    <style type="">
        body {
            background: url(https://cdn.pixabay.com/photo/2018/05/12/19/20/mosaic-3394375_1280.jpg);
            font-size: 20px;
            background-repeat: no-repeat;
            background-size: cover;

        }

        #email {
            font-size: 20px;

        }

        #password {
            font-size: 20px;

        }

        #varsta {
            font-size: 20px;
        }

        form {
            text-align: center;
        }
    </style>
</head>
<body>
<form action="/register" method="post">
    <h1>Register</h1>
    <p>
        <label class="email">email:</label>
        <input class="email" id="email" type="text" name="email">
    </p>
    <p>
        <label class="password">password:</label>
        <input class="password" id="password" type="text" name="password" >
    </p>
    <p><label class="varsta">varsta:</label>
        <input class="varsta" id="varsta type="text" name="varsta" ></p>



    <p><label for="checkbox">I agree to the terms and conditions</label>
        <input id="checkbox" type="checkbox" name="checkbox" value="Agreed">
    </p>
    <p>
        <button type="submit" class="btn btn-primary btn-lg " value="register">Register</button>
    </p>


</form>

</body>
</html>
