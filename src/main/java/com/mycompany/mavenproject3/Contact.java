/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mycompany.mavenproject3;

/**
 *
 * @author mariame.daou
 */
public class Contact {
    private String nom;
    private String prenom;
    private String competences;
    private String email;
    private String numero;
    public Contact(String nom, String prenom, String competences,String email,String numero) {
        this.nom = nom;
        this.prenom = prenom;
        this.competences = competences;
        this.email = email;
        this.numero = numero;
    }

    Contact() {
        
    }

    public String getNom() {
        return nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public String getCompetences() {
        return competences;
    }

    public String getEmail() {
        return email;
    }

    public String getNumero() {
        return numero;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public void setCompetences(String competences) {
        this.competences = competences;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

}
    
