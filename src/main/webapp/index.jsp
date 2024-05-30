<%-- 
    Document   : index
    Created on : 27 mai 2024, 11:45:02
    Author     : mariame.daou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>

  body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f8f9fa;
        
    }

    .container {
         max-width: 600px;
         min-width: 300px;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    padding: 20px;
    background-color: #fff;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
    text-align: center;
    }

    .fade-in {
        animation: fadeIn 1s ease-in-out;
    }

    @keyframes fadeIn {
        from {
            opacity: 0;
        }
        to {
            opacity: 1;
        }
    }

    h1 {
        margin-bottom: 20px;
       
    }

  
    button {
        background-color: darkblue;
        color: #fff;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
        font-size: 20px;
        font-weight: bold;
        transition: background-color 0.3s ease-in-out;
    }

    button:hover {
        background-color: #555;
    }
</style>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     
        <title>JSP Page</title>
    </head>
    <body>
       
        
        <div class="container fade-in">
             <h1>Bienvenue dans notre formulaire de contact!</h1><b>
            <button onclick="document.location='contacts.jsp'">Voir les contacts</button>
            
           
        </div>
        
       
    </body>
</html>
