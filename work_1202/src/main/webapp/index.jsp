<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <html>
    <head>
      <!--Import Google Icon Font-->
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      
      <!-- icon -->
       <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      
      <style type="text/css">
        .dropdown-button {
            background:#3949ab;
        }
      
      </style>
      
    </head>

    <body>
    
    <i class="medium material-icons">reorder</i>
    
      <!--Import jQuery before materialize.js-->
      <script type="text/javascript" src="node_modules/jquery/dist/jquery.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>
      
      
 <ul id="dropdown2" class="dropdown-content">
    <li><a href="#!">one<span class="badge">1</span></a></li>
    <li><a href="#!">two<span class="new badge">1</span></a></li>
    <li><a href="#!">three</a></li>
  </ul>
  <a class="btn dropdown-button" href="#!" data-activates="dropdown2">
        Dropdown
        <i class="mdi-navigation-arrow-drop-down right"></i>
   </a>
      
    </body>
  </html>