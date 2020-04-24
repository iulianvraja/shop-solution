<%--
  Created by IntelliJ IDEA.
  User: George Craciun
  Date: 10/14/2019
  Time: 8:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Icon</title>
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans&display=swap" rel="stylesheet">

    <style type="">
        body {
            background: url(https://cdn.pixabay.com/photo/2018/05/12/19/20/mosaic-3394375_1280.jpg);
            font-size: 20px;

            background-size: cover;
            text-align: center;
        }

        #username {
            font-size: 20px;

        }

        #lastname {
            font-size: 20px;

        }

        #firstname {
            font-size: 20px;
        }

        form {
            text-align: center;
            padding: 50px;
        }

    </style>
</head>
<body>
<h1>Welcome,please login</h1>






<form action="getinfoaboutproduct" method="post" modelAttribute="Product" >

        <p>
            <label>Category:</label>>
                <input list="categorie" name="categorie">

                <datalist id="categorie">
                    <option value="Electrocasnice"/>
                    <option value="Laptop&Gaming"/>
                    <option value="AlteProduse"/>

                </datalist>
        </p>
    <p>
        <label>Description:</label>
        <input type="text" name="descriere" width="10"/>
    </p>


    <p>
        <label>UrlPicture:</label>>
        <input type="text"
               id="poza" name="poza"

    </p>

    <p>
        <label>Pret</label>>
        <input type="text"
               id="pret" name="pret"

    </p>
    <p>
        <button  type="submit" name="loggin2" class="btn btn-primary btn-lg" value="1" >AddProduct</button>
    </p>
</form>


</form>




<p style="color:red">${error} </p>
</body>
</html>