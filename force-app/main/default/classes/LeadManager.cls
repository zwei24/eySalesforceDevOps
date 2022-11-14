@RestResource(urlMapping='/Lead/*')
global with sharing class LeadManager {
    @HttpPost
    global static ID createLead(String FirstName, String LastName, String Email, String Phone, String Company){
        Lead newLead= new Lead
            (FirstName=FirstName, LastName=LastName, Email=Email, Phone=Phone, Company=Company);
        insert newLead;
        return newLead.Id;
    }
}