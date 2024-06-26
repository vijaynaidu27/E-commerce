<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Item </title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
    
     @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@700&display=swap');
        body {
            background-image: linear-gradient(to right, #4facfe 0%, #00f2fe 100%);
        }

        h1 {
            font-family: 'Roboto', sans-serif; /* Applying custom font */
            font-weight: 700; /* Bold */
            text-align: center; /* Center align */
        }

#g{

 float-right;
}
        .custom-div {
            border-radius: 25px;
           background: #948E99;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #2E1487, #948E89);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #2E1417, #948E89); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
           
            margin-bottom: 20px;
            box-shadow: 0 3px 17px rgba(0,0,0,.7);
            padding: 20px;
        }

        .container {
            max-width: 700px;
            max-hight: 500px;
            margin: 0 auto;
        }

        .form-group {
            margin-bottom: 20px;
            
            color: white;
        }

        input[type="text"],
        input[type="password"] {
            border-radius: 5px;
            border: 1px solid #ced4da;
            padding: 10px;
            width: 100%;
        }

        .btn-success {
            width: 38%;
           
        }

        .dev {
            overflow: hidden;
        }
        
        .multicolor {
            background: linear-gradient(to right, #ff4e50, #f9d423, #ff4e50); /* Gradient background */
            -webkit-background-clip: text; /* Clip text to the background area */
            -webkit-text-fill-color: transparent; /* Hide original text color */
        }
    </style>
    
</head>
<body>

<header>
    <div class="container">
        
        <h1 class="multicolor"><b>Edit Item</b></h1>
    </div>
</header>

<div class="container">
    <div class="">
        <div class="custom-div">
            <div class="card-body">
                <form action="/edit" method="post" >
                    
<fieldset class="form-group">
                        <label>Item Id</label> <input type="text" value="<c:out value='${item.itemId}' />" class="form-control" name="itemId" readonly>
                    </fieldset>

                    <fieldset class="form-group">
                        <label>Item Name</label> <input type="text" value="<c:out value='${item.itemName}' />" class="form-control" name="itemn" required="required">
                    </fieldset>

                    <fieldset class="form-group">
                    <label>Item Short Code</label> <input type="text" value="<c:out value='${item.itemShortCode}' />"class="form-control" name="itemsc" required="required">
                </fieldset>


                <fieldset class="form-group">
                            		<label for="cars">Choose a Item  Category Name:</label>
    <select id="itemCategory" name="itemCategory">

        <c:forEach var="item" items="${ItemCategory}">
        	
            <option value="${item.itemCategory}">${item.itemCategory}</option>
            
        </c:forEach>
       
    </select><br><br>

          <fieldset class="form-group">
                <label> Description </label> <input type="text" value="<c:out value='${item.itemDescription}' />" class="form-control" name="desc" >
            </fieldset>
          
<fieldset class="form-group">
                <label> Item Old Price </label> <input type="text" value="<c:out value='${item.itemOldPrice}' />" class="form-control" name="itemop" readonly>
            </fieldset>

 <fieldset class="form-group">
                <label> Item Price </label> <input type="text" value="<c:out value='${item.itemPrice}' />"class="form-control" name="itemp" >
            </fieldset>
      
       <fieldset class="form-group">
                <label> Item Status</label> <input type="text" value="<c:out value='${item.itemStatus}' />"class="form-control" name="items" >
            </fieldset>

                    <button type="submit" class="btn btn-success">Save</button>
                     <button  id="g" type="clear" class="btn btn-success">cancel</button>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>
