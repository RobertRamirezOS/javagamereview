<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <% /**taglib directive that specifies the JSTL core Library**/ %>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

     <!--  <title>Robert's Game Review Website</title> -->

    <!-- Bootstrap core CSS -->
   <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
   <link href="css/freelancer.min.css" rel="stylesheet"> 


  </head>

  <body id="page-top">

    <!-- Navigation -->
   <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
  <!--        <a class="navbar-brand js-scroll-trigger" href="#page-top">Robert's Game Review Website</a> --> <% /**comment out**/ %>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
               <a class="nav-link js-scroll-trigger" href="<c:out value="${pageContext.request.contextPath}"/>">Home</a> 
            </li>
            <li class="nav-item">
<!--             <a class="nav-link js-scroll-trigger" href="#about">About</a> --> <% /**comment out**/ %>
            </li>
            <li class="nav-item">
<!--              <a class="nav-link js-scroll-trigger" href="#contact">Contact</a> --> <% /**comment out**/ %>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    

    <!-- Portfolio Grid Section -->
    <section id="portfolio">
      <div class="container">
        <h2 class="text-center">Review these Games-${test} - ${games.get(0).getGameTitle()}</h2>
        <hr class="star-primary">
        <div class="row">
        
        <c:forEach items="${games}" var="game"> 
        	<div class="col-sm-4 portfolio-item">
	            <a class="portfolio-link" href="#<c:out value="${game.id}"/>" data-toggle="modal">
	              <div class="caption">
	                <div class="caption-content">
	                  <i class="fa fa-search-plus fa-3x"></i>
	                </div>
	              </div>
	              ${game.gameTitle}
	              <img class="img-fluid" src=" ${game.gameImage}" alt="">
	            </a>
	          </div>
		</c:forEach>
        </div>
      </div>
    </section>

    
    
    <!-- Footer -->
    <footer class="text-center">
      <div class="footer-above">
        <div class="container">
          <div class="row">
            <div class="footer-col col-md-4">
              <h3>Location</h3>
              <p>1234 Somewhere 
                <br>Austin, TX 78748</p>
            </div>
            <div class="footer-col col-md-4">
              <h3>Around the Web</h3>
              <ul class="list-inline">
                <li class="list-inline-item">
                  <a class="btn-social btn-outline" href="#">
                    <i class="fa fa-fw fa-facebook"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a class="btn-social btn-outline" href="#">
                    <i class="fa fa-fw fa-google-plus"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a class="btn-social btn-outline" href="#">
                    <i class="fa fa-fw fa-twitter"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a class="btn-social btn-outline" href="#">
                    <i class="fa fa-fw fa-linkedin"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a class="btn-social btn-outline" href="#">
                    <i class="fa fa-fw fa-dribbble"></i>
                  </a>
                </li>
              </ul>
            </div>
            <div class="footer-col col-md-4">
              <h3>Robert Ramirez</h3>
              <p>Capstone Project
 <!--                <a href="http://startbootstrap.com">Start Bootstrap</a>.</p>   -->  <% /**comment out**/ %>
            </div>
          </div>
        </div>
      </div>
      <div class="footer-below">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
 <!--               Copyright &copy; Your Website 2017  --> 
            </div>
          </div>
        </div>
      </div>
    </footer>

    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-top d-lg-none">
      <a class="btn btn-primary js-scroll-trigger" href="#page-top">
        <i class="fa fa-chevron-up"></i>
      </a>
    </div>

    <!-- Portfolio Modals -->
    
    <!-- - -->
     <c:forEach items="${games}" var="game"> 
        <div class="portfolio-modal modal fade" id="${game.id}" tabindex="-1" role="dialog" aria-hidden="true">
	      <div class="modal-dialog" role="document">
	        <div class="modal-content">
	          <div class="close-modal" data-dismiss="modal">
	            <div class="lr">
	              <div class="rl"></div>
	            </div>
	          </div>
	          <div class="container">
	            <div class="row">
	              <div class="col-lg-8 mx-auto">
	                <div class="modal-body">
	                  <h2>${game.gameTitle}</h2>
	                  <hr class="star-primary">
	                  <img class="img-fluid img-centered" src="${game.gameImage}" alt="">
	                  <p>${game.gameSummary}
	 <!--                    <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!</p> -->   <% /**comment out**/ %> 
	                 
	                 <table>
	                 	<thead><tr><th>Summary</th><th>Rating</th><th>Review</th></tr></thead>
	                 	<tbody>
	     					<c:forEach items="${game.gameReview}" var="review">
		                 		<tr><td>${review.summary}</td><td>${review.rating}</td><td>${review.review}</td></tr>
	     					</c:forEach>
	                 	</tbody>
	                 </table>
	                  <div>
	                  Form
	                  
   
      <form method="post" action="/GameReview/review"> <!--take this form and send all data in the review-->
      	<input type="hidden" name="gameId" value="${game.id}" >
         Summary: <textarea id="summary" name="summary" rows ="3" cols = "30"></textarea><br />
         <select name="rating">
        	 </ul>
	              
    <option value=""  selected="selected">Please select a number</option>
    <option value="1">One</option>
    <option value="2">Two</option>
    <option value="3">Three</option>
    <option value="4">Four</option>
    <option value="5">Five</option>
</select><br />
         Review: <textarea id="review" name="review" rows ="7" cols = "30"></textarea><br />
         <br />
         <input class="btn btn-success" type="submit" value="Submit" /><br />
         
      </form> 
       <br />
   

	                  </div>
	                  <button class="btn btn-success" type="button" data-dismiss="modal">
	                    <i class="fa fa-times"></i>
	                    Close</button>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
		</c:forEach>
    

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/freelancer.min.js"></script>

  </body>

</html>
