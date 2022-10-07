# BookStore
Subject2 Web front end and Backend(API) project:
- **tools and technologies**: Vscode, Xampp, Angular, Springboot, Bootstrap, firebase, Stripe Devmode, some Node and Express.

**Noted**: - make sure to run your Sql server before runnning the application(in my case I use localhost database Xampp) 
           - The database is provided 


 To Run **Client** folder: 
  - **npm install**
  - **ng serve -o** or **ng s -o**
  - Then the web page will automatically load up
  
 To Run **Server** 
  - Simply click on the"Run Java" option in your IDE, for my case VSCode
  - if your angular app is already running on port **http://localhost:4200** don't worry about the below waring
  
   **warning**: *Config your client port in **server/src/main/java/tgi/group5/bookstore/BookstoreApplication.java**
  before running this server, by default the server is comportable with the **client with port 4200**
  
  
  To run **Stripe-Payment-Server**
  - in your terminal run **nodemon index.js**
  - note that you can run the Bookstore application with or without **Stripe-Payment-Server**
  - purpose of this this **Stripe-Payment-Server** is to check if the payment is added to seller stripe account
  - we use stripe Devmode so don't worry if you accidently fill up the payment info with your card HEHE!

**Project Features**
- Login via 3rd parties ,Email and Google with Firebase
- register
- passowrd recovery, forgot password 
- add to card
- make payment
- view product
- Create , Read, Update and delete product
- ..etc.


 
