<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
    <style>
    body{
    font-family: Arial, Helvetica, sans-serif;
    background-color: buttonface;
    margin: 0;
    padding: 0;
}

h1 {
    text-align: center;
    margin-top: 50px;
    }

    form{
        background-color: gray;
        max-width: 400px;
        margin: 50px auto;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 20px rgb (red,green,blue);
    }

   .error{
      background-color:greenyellow;
      text-align: center;
      margin-top: 20px;
        }
    
     label{
        display: block;
        margin-bottom: 10px;
        font-weight: bold;
                 }

        input[type =" text"],
        input[type= "pasword"]{
            width: calc(100% - 20px);
            padding: 20px;
            margin-bottom:  5px; 
            border: 1px solid;
            border-radius: 30px;
            font-size:20px;
            }
input[type = "submit"]{
    width: 100%;
    padding: 10px;
    margin: 8px;
    border: 1px solid;
    border-radius: 5px;
    background-color: aquamarine;
    color: black;
    font-family: 14px;
    cursor: pointer;
    }

input[type "submit"]: hover{
        background-color:red;
    }
    </style>
</head>
<body>
    <h1>INICIAR SESION</h1>
    <form action="procesarInicioSesion" method="post">
        <label for="usuario">Usuario:</label>
        <input type="text" id="usuario" name="Usuario" placeholder="usuario">
        
        <label for="clave">Clave:</label>
        <input type="password" id="Clave" name="Clave" placeholder="Clave">
        <input type="Submit" value="ENTER">
    </form>
    <%
         String error = (String) request.getAttribute("error");
         if (error != null) {
     %>
     <p class ="error"> <%= error %></p>
     <%
     
            }
     %>
</body>
</html>


