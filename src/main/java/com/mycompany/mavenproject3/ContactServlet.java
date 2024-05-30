package com.mycompany.mavenproject3;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/contacts")
public class ContactServlet extends HttpServlet {
    private List<Contact> contacts = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
    
    String action = req.getParameter("action");
        // Supprimer le contact avec l'email spécifié de la liste "contacts"
       if ("delete".equals(action)) {
        String email = req.getParameter("email");
        removeContactByEmail(email);
    }
        // Rediriger vers la page JSP pour afficher la liste mise à jour des contacts
        req.setAttribute("contacts", contacts);
        req.getRequestDispatcher("/contacts.jsp").forward(req, resp);
    }
    

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
            
           
   
        String nom = req.getParameter("nom");
        String prenom = req.getParameter("prenom");
        String competences = req.getParameter("competences");
        String email = req.getParameter("email");
        String numero = req.getParameter("numero");
        Contact newcontact= new Contact();
        newcontact.setNom(nom);
        newcontact.setPrenom(prenom);
        newcontact.setCompetences(competences);
        newcontact.setEmail(email);
        newcontact.setNumero(numero);
        contacts.add(newcontact);
        resp.sendRedirect("contacts");
        
        
}
 private void removeContactByEmail(String email) {
        for (int i = 0; i < contacts.size(); i++) {
            if (contacts.get(i).getEmail().equals(email)) {
                contacts.remove(i);
                break; // Sortir de la boucle dès que le contact est trouvé et supprimé
            }
        }
    }
}