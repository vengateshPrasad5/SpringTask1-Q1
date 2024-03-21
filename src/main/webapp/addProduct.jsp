<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Product Catalog System</title>
    </head>
    <Style>
        .container {
            margin-left: 40px;
            margin-top: 40px;
            width: fit-content;
        }

        .heading {
            text-align: center;
        }

        .btn-primary {
            padding: 8px 30px;
            border-radius: 5px;
            background-color: lightblue;
            font-weight: 500;
            cursor: pointer;
        }
        .textbox-position {
                float: right;
            }
    </Style>
    <body>
        <div class="container">
            <form action="home.jsp" method="get">
               <button class="btn-primary"> <- Back to Home </button>
            </form>
            <h3 class="heading">Add Product</h3>
            <form action="/addProduct" method="post">
                <label for="name">Product Name : </label>
                <input type="text" name="name" id="name" class="textbox-position"> <br><br>
                <label for="price">Price : </label>
                <input type="text" name="price" id="price" class="textbox-position"><br><br>
                <label for="category">Category : </label>
                <input type="text" name="category" id="category" class="textbox-position"><br><br>
                <input type="submit" class="btn-primary" value="Submit">
             </form>
        </div>
    </body>
</html>