<%@ page import="java.util.List" %>
<%@ page import="com.springboot.spring.entity.Product" %>
<%@ page import="com.springboot.spring.repository.ProductRepository" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
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
    .btn{
      cursor:pointer;
    }
    table, td, th {
      padding:3px;
    }
    .table{
      border-collapse:collapse;
    }
</Style>
<body>
   <div class="container">
        <form action="home.jsp" method="get">
          <button class= "btn-primary"> <- Back to Home </button>
       </form>
       <h3 class="heading">Product List</h3>
       <table border='1' class="table">
           <thead>
               <tr>
                   <th>ID</th>
                   <th>Name</th>
                   <th>Price</th>
                   <th>Category</th>
               </tr>
           </thead>
             <tbody>
                  <c:forEach items="${list}" var="l">
                        <tr>
                           <td>${l.id}</td>
                           <td>${l.name}</td>
                           <td>${l.price}</td>
                           <td>${l.category}</td>
                        </tr>
                  </c:forEach>
             </tbody>
       </table>
   </div>
</body>
</html>
