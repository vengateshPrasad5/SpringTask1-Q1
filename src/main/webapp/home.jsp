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
            padding: 10px 50px;
            border-radius: 5px;
            background-color: lightblue;
            font-weight: 600;
            cursor: pointer;
        }

        .btn-extra {
            padding: 10px 60px;
        }
    </Style>
    <body>
        <div class="container">
            <h3 class="heading">Product Catalog System</h3>
            <form action="addProduct.jsp" method="get">
               <button class="btn-primary btn-extra">Add Product</button>
            </form>
            <form action="/showProduct" method="get">
               <button class="btn-primary">Display Product</button>
            </form>
        </div>
    </body>
</html>