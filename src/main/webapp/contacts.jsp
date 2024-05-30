<%-- 
    Document   : contacts
    Created on : 27 mai 2024, 11:47:15
    Author     : mariame.daou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
       <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

        <title>JSP Page</title>
    </head>
    <body>   
        
        <div class="container">
           
           <button class="open-button" onclick="openForm()">
               Ajouter   <i class="bi bi-people"></i>
           </button>
            
            <div class="form-popup" id="myForm">
                
            <form action="contacts" method="post" class="form-container">
                <h1>Veuillez remplir le formulaire</h1>
                <label for="nom" >Nom:</label>
                <input type="text" name="nom" id="nom" placeholder="ajouter votre nom" required><br>
                <label for="prenom" >Prenom:</label>
                <input type="text" name="prenom" id="prenom" placeholder="ajouter votre prenom" required><br>
                <label for="competences" >Competences:</label>
                <input type="text" name="competences" id="competences" placeholder="ajouter une competences" required><br>
                <label for="email" >Email:</label>
                <input type="email" name="email" id="email" placeholder="votre email" required><br>
                <label for="numero" >Tel:</label>
                <input type="tel" name="numero" id="numero" placeholder="ajouter une competences" required><br>
                <input type="submit" value="Envoyer" />

  
                <button type="button"  onclick="closeForm()">Close</button>
            </form>
            </div>

            
        <div class="table-container">
            <h1>La liste des contacts
                
            </h1>
        <table>
            <tr>
              <th>Nom</th>
              <th>Prenom</th>
              <th>Competences</th>
              <th>Email</th>
              <th>Contact</th>
              <th>Action</th>
            </tr>
            <c:forEach var="Contact" items="${contacts}">
                <tr>
                    <td><c:out value="${Contact.nom}"/></td>
                    <td><c:out value="${Contact.prenom}"/></td>
                    <td><c:out value="${Contact.competences}"/></td>
                    <td><c:out value="${Contact.email}"/></td>
                    <td><c:out value="${Contact.numero}"/></td>
                    <td>
                    <!-- Formulaire pour envoyer l'action de suppression -->
                    <form action="contacts" method="get">
                        <input type="hidden" name="action" value="delete">
                        <!-- Champ caché pour l'email du contact à supprimer -->
                         <label for="email" ></label>
                        <input type="hidden" name="email" value="${Contact.email}">
                        <!-- Bouton de soumission pour supprimer le contact -->
                        <input type="submit" value="Supprimer">
                    </form>
                </td>
                </tr>
            </c:forEach>
   

        </table>
        </div>
        
<script>
function openForm() {
  document.getElementById("myForm").style.display = "block";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}
</script>

    </body>
</html>
