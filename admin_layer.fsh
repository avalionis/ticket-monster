@/* Example Forge Script - Generates a Point-of-sale Style Application */;  

@/* Clear the screen */;
clear;
    
@/* This means less typing. If a script is automated, or is not meant to be interactive, use this command */; 
set ACCEPT_DEFAULTS true;

@/* Enable scaffolding from entities */;

scaffold setup;

@/* Scaffold CRUD views for the entities that an admin would start drilling down into the data model from */;

scaffold from-entity org.jboss.jdf.example.ticketmonster.model.*

@/* Deploy this to JBoss AS 7 to see the result */;
build clean package jboss-as:deploy;

echo Examine the app so far at http://localhost:8080/ticket-monster;

wait;