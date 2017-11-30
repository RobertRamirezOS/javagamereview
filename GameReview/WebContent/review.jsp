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
               <a class="nav-link js-scroll-trigger" href="#../">Home</a> 
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
	            <a class="portfolio-link" href="#portfolioModal1" data-toggle="modal">
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
        <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
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
	                 
	                 
	                 <ul class="list-inline item-details">
     					<c:forEach items="${game.gameReview}" var="review">
     						<li>${review.review}</li>
     					</c:forEach>
	                  </ul>
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
    
    <!-- - -->
    <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
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
                  <h2>Horizon Zero Dawn</h2>
                  <hr class="star-primary">
                  <img class="img-fluid img-centered" src="data:image/jpeg;base64,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" alt="">
                  <p>Place another Review
   <!--                    <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!</p> -->   <% /**comment out**/ %> 
                 <ul class="list-inline item-details">
   <!--                 <li>Client: --> <!--  Comment Out -->
                      <strong>
  <!--                      <a href="http://startbootstrap.com">Start Bootstrap</a> --> <% /**comment out**/ %>
                      </strong>
                    </li>
    <!--                  <li>Date:
                      <strong>
                        <a href="http://startbootstrap.com">April 2014</a>
                      </strong>
                    </li> <!--  Comment Out -->
   <!--                 <li>Service:  --> 
                      <strong>
    <!--                    <a href="http://startbootstrap.com">Web Development</a>
                      </strong>
                    </li> <!--  Comment Out -->
                  </ul>
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
    <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
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
                  <h2>The Last Guardian</h2>
                  <hr class="star-primary">
                  <img class="img-fluid img-centered" src="data:image/jpeg;base64,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" alt="">
                  <p>Review
   <!--                    <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!</p> -->   <% /**comment out**/ %> 
                 <ul class="list-inline item-details">
   <!--                 <li>Client: --> <!--  Comment Out -->
                      <strong>
  <!--                      <a href="http://startbootstrap.com">Start Bootstrap</a> --> <% /**comment out**/ %>
                      </strong>
                    </li>
    <!--                  <li>Date:
                      <strong>
                        <a href="http://startbootstrap.com">April 2014</a>
                      </strong>
                    </li> <!--  Comment Out -->
   <!--                 <li>Service:  --> 
                      <strong>
    <!--                    <a href="http://startbootstrap.com">Web Development</a>
                      </strong>
                    </li> <!--  Comment Out -->
                  </ul>
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
    <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
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
                  <h2>Injustice 2</h2>
                  <hr class="star-primary">
                  <img class="img-fluid img-centered" src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTExIVFRUVFxgXFxgXFxUXFxgYFxcWGBgVFhYYHSggGBolHRgVITEiJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGisfHx0tLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKy0tLS0tKy0tLS0uLS0tLS4tLf/AABEIAKgBLAMBIgACEQEDEQH/xAAcAAAABwEBAAAAAAAAAAAAAAAAAQIDBAYHBQj/xABQEAACAQIDBAcEBgQICwkAAAABAgMAEQQSIQUxQVEGEyJhcYGRBzJSoRRCscHR8CNicuEIFTM2U4LE8RY0NXN0hJKys7TDJCUmQ0VGg6LC/8QAGQEAAwEBAQAAAAAAAAAAAAAAAAECAwQF/8QAKBEAAgICAgEDAwUBAAAAAAAAAAECEQMhEjEEQVFhE5HwIoGxwdFx/9oADAMBAAIRAxEAPwDJ1Y7vnSxa/HzppsRbcPXXztTRJbvrYwokDE2vxvx/Dyph5SdNPL8605Hh+dOo6jS34n86UARgpFjQJpby3uALXpugYdChRhfKgA6eXDORexPPkPGmhbx/PIUssSLXNuX7qQEmG0ayPcggAKRvBYHh5b9K4ZHGtK2bsKPEbElaGO+Ijmcux3koA4VTbd1Te78VzWbsDfdu7qy522vYvjWzqLKDGoQDOoJDD3iNLgjjb76WJ2a5WwJubXte/vJ4fhXLiU5rqcrDdvpBxRufHXx51fIXGzvYUkLIwkA0zqTa1wLMjA7ja3p3UMRtRZesGiZ1uoBsFZj2/Uk38+dcZtoNrbiLEcCPx799NwQMdwO4nyG8+VHIOJLw0RUtfhofG/8AfS2NXLo7sFGwONxWITQqyxbroYvekU8zJ1cY5ksOdVARE0oyTtL0G0IWW3AedE8rHefLcPQUvKo33PcLfbSXccBbzJqiRIjPKhYDfvpJak0AOGbkAPzzpssaKhagQVFRmgtuN/LnwpDE0KFFQMFC9EaFqABelKjEEgEhbFiAbAE2BYjdc6a0ihagAqBo6FACKFHQpDDoXFC9DyoAmoigi/md9h4UbzDhv9KQkDHXh305HCDx/PhWhmNmQnSjWE8afNgeAHLedKS03IeutADqxgeB43+2mJUAJ7QPh+NJYk76AFMAyRbQa8TSDRgUdIYAKcUUccDHW1hzOg9adQxrvu57uyvz1PChgab7KNpQxYLGiYFkWSNmAHuq65M5Pw3QX5WvxrNeleDihxc0cD54gxyk7xqQVPA2IIuLgi3fazezjbnU46NTYRz3w7Abv0uiMednCDwY1WdoYAdU8xurLK0ZAtlaxIvbgdNbadwrGUVdrs0i369HCkNt1NEU8RelBKnkacREEV9eVXHYezElIDELvzMbBUTITIx4WCB2P7NcvZ2HRFBcZjcabq7OKkCwuI8pV0/SBbkixBCE391jYkAa5LXtcFXbJaLftLbDybPxS4aFY8HGkMcZPvOesjJU3OpVc5NtxJ94kmsxkYneav3TDEdXgcLh7EBcNDI24Ayyqoy2G8qgkbxes/JrSFVpUZ012NNSTS2pBFWISRRWpVEaAAq3pwxkDQndY8Lg7xSFa1KeXS1MQyaKjNFUjCoUKFABUKUq0rq+dAxvLQy05cURbutQIbC0vJ4UM1JvQFiWXvostKJo8pNACKF6O1KAFAWdDrrd/hupnrOWnhRKKPLVkhWpQFGBTgj4nQczQA3agqk7qUSBu1+XyoixPGgAynMj7TRmQD3R5nX5bqbAo7UDCdyd5vQAor0dAErBTmN1ddWVlK2+IMCPmAKsHS2UwSMFH6NpsQrDgWEpcHuOWRD61WIlYsAgu5ICgC5LE9kAcSTwq9e0PB9W5hfe/Vvr9WVIo4mH9bIzeEqHlWORKjXHKmin4j6M0eYl+sv9VVtbvN7n086iQNF9ZiLd2tMvHbSn9k7LM2cAdoC6jmRwrmUbXZ2yy/CJ+zsRhySX6w2HZBy2J71008z4VZOjhOID5x+iAYhFGXrGVWPaA4aDTmaqGCwRvYgjmDvHceVaB0LhWORCzAICrOTuSNDmYn09BWUpJS1sc5XDpIhe1TaQfFHDr7uHOQngSI4lAHcMrf7Rqk2ro7Yx30jETTkEdbI8gB3gMxKg94Fh5VBda74qkkeexlqTThFJIqyRsiiIpZFJtQAmiNKtQIoARRUqhagBNC9KyHlRrCT4UBYgvSb06sd91IG/zooVhBTypQhNSctAU6FY9snZiyuVaQJZJGBbQMUUsFvuW9jqTawPdTLRAGwIOtgRrfw410thbSfCyidVBsrLYhdQRbQsDYg2OYDhbjY86JN3pRRNiWiAJ0v3X9aY4VL6om4FRUJGlqBpjcopaRXF9KKRqEbG2hNIZKCE7h+fGjAA3m/cPxpBYnj5cPSjC1QDnXfCAvfx9abo7UdAwstGSOVC1LSMncuY8Bw8WO4KNSSdNKVglYi2mpA8T9gGtSDGm6OSIniXD6+AKZQPH1rmsiZu0zSNxybvJiNfS1KPVjeki/1rfatYym2d2LFBbZNxH0qJSTrGeKhWj89NPO1QVxgJ7S2vxG7xt91TsDjcn8liHS+9WAZWB4NbQjxU0vFYRJFLsgjP9JF2oSf1096Py0/VqVKjSeFNWi1YjprhsKuGTCQQyiDNaSSICUswXNNfeCTqAd1rEdlTXC6RdKmxk2d/dKgc8pG4j7/3CqzNhypym3kQQe8HjRxR2NVKdqjmWGpWzrHDFwxJsALnjryFt9O4DEFFIWRVJ0zESZwO6w1/O6j2fY2DMyG3BQ1+VrsB8/WtF2B0HkmhSYSy5W1AKoDa5GjEfPWuGc+PZ0R4rsquw8EjXKs7MdLsjDMTxu283rqbWxUceGk0zDNHHYEi6spYsWU6ZgosPhbjm0s+1ui6YKNsRPiGZBfLE1izDgtxYW1A3XO7QmqRt+QrGIALu4M099e3JJG4APcRJ5NSxbfNjVSaXoQ1gwmYqWlNzoQVAQHUbwc1gQNSL24Vz8ZgyjOvvBDYsAbW4E/DfSjeL9NrooIv4KB+FS4OkEqSMwbIjEt1Y/k7G91yneCNNd9dMcz9TTJ4kGlx0cgrTbLXSxUak50UqjaqCDpf6oPEA3t3WqMYTyrpTs8ySadMiEUm1S/o9H1fdTJIQQ8qUITUsrSbUybGFhHjUhIxypIpWc8B50xDculRAPnUox8zc0TrcUAJy20qNMupqYNRe27Q/j+eVMTrupsEx2jCUeFYW1F7ab/spY5UEsfw0gLoH924BsbdwN+Qv9vjXXxGAjRwEewNwXAuLHQWA3kggnzp7ofsYYlniK2PZOYg3AIJFhwB0N+Ip44RB1imVQI9QX7I7GfsjvJy6VaMpPZwcLCbZt/DTnpXLxL3kY+Wm7TQVOx20b3WMWXieJ/AVD+huF63KQhNgTpmPHLz/dUv4NI/JHdaaCVIagITUl2Oi1HaiApxEoKEgU7DAWIABJJAAG8k6AAcTQZRwrUvZD0f97GyLot0hv8AF9dxysLKD3tyrLNkWODk/QqEeTpDXRb2TO+WTGOI495jUgysPhY7o/mfA1ojbB2bCmVcHh7WAt1SMTqCLlgS2oBueVSXgLbweYAsCe8m1UTpz0vjwt0iYST8OKRnm7fWYfCPO3HyV5ufK+MI0dv0ccVbZVekHStnxhghihigSQpZIowWCkglmtextuFh413cVsXDSrnsUuN8btHw32BsfSsu2diLSBiL2PE/M99bBsfF9dEoCDcb5bgeg317C6PPlaejJ9vYKTCTHOsc0THssyKb8bNlsVa3frvFTNjHCOwIYxE70QsQe4iQm48DXf2uIWcwvkOcMG1BtxXQaixF7nla9UvF9H3W7R9peX1v3j82rJx5dHXizyj2dnFbHjUnqipUm4zq1x5G61EfAtex17siW9QBTGydrSxnKQHA0KPofAHn+bVe9gY3CTMFe8L/AAyCw8m3etq5MjlE7sbhLvRxOj2xZ2cZIi9zYKRfyvWwbNXFrGEOaHLyMLeXG49PGulsrZyxJdLXYCxFt3MV0suUCwB531rzZOUpX0LLOK/Str5Mo6T9GsficSGZHmRWSzdZGFIuLlUMnZtc6dx36Xe2t0OmlE//AGdg7zBg+eI3ROsiVRZrgZVjfXjKeWmk4xmsAixgg7iCFI5XG70NcrFYnEDT6KpPNWT1tcGumE5VxjX3r+Tl58XbMsl6BY1Qf0UjXIvpmvbduua4uN2DPExJjZXHBkKsBzUMPmPKtxwW0JlXt4YtbkBm8rb660iQToA0ZI5OjXB8xdT4WroUJfH3NI+WvY8wRyyCQNIHKkkHQ3N9L2420PlXRlw1q2Lb3Q5xaXB2Lg36t7WcclcjQ8r23b6qmMwrSKRJhySLg/VdDc3Fxe5B4G9dOFpqvU5M825X2igPFw40y8dWPHbDaOxAJUk2NrEEb1Yc/t9QIUmCPKteVaMjislNkeddKXCHlpTLYbuq0xNEDLz9KFS2hPKmzFVWSR6Bp5o6Tk7qYDcYF/Ef3fnupGJTTw/P5FSDCSt7buI3DlTdiVN99rfh+e6mIZwvHy/D8KsfRXARyNIZAxKxuV0/RqQrHNIQb8NBVawxsas+H6Qww4Z4oUkaSVbO7lQi3ADBEFydL6m2/wAqEKSJWF2kqSSTOQcwUKtyC3V5AlgNwso31WNoTl2vwO4DcO4czTRkLHiTyGp9BUrCbOxLtaOFyw5ra1xfUtu0pt2SlWzpbJ6OKYnllY9kHKi2vmtcFj91dLZ5TqWWXERKrxkKGPulswJy8+4a1w8RsrGXCuHF+8ldeFxpeok+ygsgjL9rQMctgjaaNruF94p9Cq+2QJXFza1gTa17b+F+HKkgnnan9qwRpKyxPnQWs3M27W7vvUUVBqiYDS1am1pYpjJeDjMjqii7Myoo5sxCqPMkV6FkxWF2bho1mkCxxKERfrSMNWYLvJJufPWsF6P7SGEY4vKrPD/Io17NM4IDMBvRFzPw1CC+tcfa+2sRipDJPI0jnieA5KBoo7hXLmxubS9DWEuOzQOl/tXknBjgXq0Omh7RH6zD7B6ms8lxmbtNqeZ3VEKgbyPu/fTea+75/cKI4ow6HybOgmMC7lDHv3eg/HyqX/GsrDKc2TityqeYuAfOuFc8/TT7KONRe5BNNoC07Kx6DPZVuscj6agWUi5I03keZHlP2Xt9XGUoMwH+0OY7+Y8+dqw20ykbRIiIH0chbuy77FmubXtutxqHHKQQQbEUopLoHs0wrh5wA0Qv8Q0b14ily9HMZDGskKDEQm5yMucgDgU8vqkVUdl7UZiAps/IfW/ZHPu9OQ0zoJ0sGTq2exV+zyOe1h43B9RVShGfZlznj2jmbD6dwoeql63BMNN7TYe/J4nGaIdykd7CtAw23WRBJJkeIi4niOeEj4m3tEPHMo+KuHt7CYTaSuHVA8ZIzWysLXve+7UVQ4NnbQ2STNhX6yC95IzqpG67C2h71sfHUVyZPCT3B7/Pz+jeHlJ6kbi2NVlzKM2l7AgXHCxOnzt31wP8N8ErFZJGjZTZldGUqeTZgLVwOjO10xSGbAdiRdZsG5AFzvaE7kJ7uy2twCTaw4SeOW8yIue2RyUAlXLfsNfUWuez6V5rag39RP8AY6/p8lcGTMP0lwkovHOhH7S/Ze9P4HacbNZZAfA3HyqvbX6O4Wf6gikIv1kQCk/tAaOPEX5EVycN0CEbBhipD4RhT65z9lXB4H+pTaf/AD/CHHKtcbNUjcb6zjpVtEwYyXsgB8rC4uDdQL28QR5VdNljq41QljkW5LG7c7E8/wAarfSXArj4JBGR18LPlHOze6TwB3dxsdwIPZjyyydPoxlFRWypv0uuCkkash5CxB4MDf8AvuRUSXa8Vz+jHyqtYqdo2XrFGRtxsQdDZlIJ3g/aKenscrqdGB18GZfurrS5LbMXo6U21o/6JahS7Tj/AKJa5slRZZAOIrRQRNnSk2gn9GtRpMYvwL865r4jlrTJdj3fnvq1Ek6EmKTioFRpMcnw1GEB4ml9QBw9apIBTY8knKoF+X5tTEoO9tL+f2U+XA+y3H0qJiJS1uXD88adCEZqegiLHuqK43860jaUsAji6mAdcEXKigEgZVOdvhF/XWmkTJ0M7IwCxGJo4zcLmfUFjmuAPAgj1q0vIoYsB2mIzEfWIFhfwqrYVurAlmkVb27KdleYB4k92lJl6QjrAisMp3NfXXiRbQVpo53bGOmO0VzhTnDqt1ytZSGv7wtv0HzqpS4l2vc3zWLd9t16Vj0KyOrXuGOp1J10JPHSo5qGbRVIalpq9OyUxeoZoieKUKSKUKoYxOtz6UyZOA18NP76mYi4RiOFrnlc2rl37qhjQUlybmgGpOagBeoNBaa1OwgDEAZbkgakAanjfhUBhbQedSsPGApY7gL/AHAVE1oaezTNv+zZZYg+Fe0ioBka2WWw9+NhuvqfOsuxuEkhbJIjI3Ij7Dx8q73RLppNhCEv1kN9YmNgL7zG2+M/I8RxGmLtDAbUTJdXcj3GAWcG3wn+Ut8SE+Irg55vHdTXKPuu0dPGGTrTMPWUjjXawu2FbSW6sdDIB2WB+tIg+sDY5l38RcljbNpezAkkwvpfgQ1vENYj1auJiPZxjA1lyt5SL/8Am3zrph5WGW1Iylil6oewm3ZCSxfObWJve9gALnedOO+uhhukciqUv2Tvvr5VwU6A4/UrFmtyJH2gVEm2LjozYwTeSuw+V61+tjlqLRhLD6tHVM7wyriMM5jkU3BHzBG4g8Qd9ahsXbo2hGcVhgseOiAE8JNlmUcD3GxyvvU6GsUjknuU6uQkEhlyvcHiCOBp/Zm0cTgp48SiOhB+sGUOPrI1+B+0AjUVlmwfUXybYsjgzcxJFj4MyM8bqSDlJWWKQe8rAH1U6Ea8iE9EtjTozy4qZ3SM2QZ2KyNwNid3cfOuHi9ohlXa2BBIYD6VDxdRvJH9ImuvIceNt2btKGWFcQjgxMM3n8JHA309a8flPHaS1/D/AD7ndLHHJUkSdu7WGGw7yNvtnPedMi+bFR51k+yOlEkEyyZr63YfED7wPjrSfab0s62UQKdFs7+NjkXyBJ/rDlVElx3fXp+JicYps5PJab4+xfPaYUADJukm61D+rLEc3q0aue96rcGLbq0X4b/N2b76ndLnBweCF+0iDP8A10AS3PtQzg+Vcl3sABuFd3HZy74qx53ZuNN5R4+NJRtKBNaUTYtu6kmipLGmIMtbU7qjy4kndoPn+6iZT40FRRv1PKmAMNAXItxO87qt0PR2BAnWOQuXNJJwW+4AcLczVVjnN77vDlVg/j/OgRVGiqLMQA2UggHx00J11oJZwsdhFRiovcC5Bsbd11q1bBx0SYbQ2d+y8jDMQQOzZT9UAAVTsZiWZyx0LXJ8Sb28KPDy2UjTXT77ihdhJWjobUxLOcpbOFA1tbUXBJ8dPsqAL+lEjkbqny7VY4fqLrlzXtlGY/tPTZKRz3cnUm/jSAddaBNJFybAXP2UikhqY00QeVdKLDganU1Gxb2bypUUmOqad6k2udB3/hSoZssg0GmhB3HX860vaIFwQ5YHgRYr+ry058aYEXHMoj0LXuLcATrw8L1E2hEFkKKQQnZLAWzEe8fW/pUmOzTRqdwu5/qgtb/6/OomIXKiA+86528GJyj01/rVLNF0RhRqaSKWKkY4g1peKluMo3bz400r2pomhiQhadVrU0BxpwCoLLLs3pzjobATlwOEoEnlmbtgeDVZsB7YMRGLNBE3erOnyOas1UenOiC3rKXj45O3EtTklVmtRe12NzefDPcD6rI2vLVVrlba9rM0nZiRkj5ZgCR32BrO5IwBTQpQ8THB2kDyuSplug6ZSi7rhwbcSWIA8ALcah7Q6WzzAr1cKBtCRHcnxzEg+lQhix1OTcbevG9c8Pu8a6aMqXsWDox0jkwDm3aikAzKd1yPeA58O+3cK756WqmHyRoqqGZsoAAeRzcZrbxz7gRyqkNMCoFvzc/dTcYtxvy8Dv8AOuefjwnLkzeGeUFSJ42qrAiVCWuSX7LXYm5JVuJN+NWr2ats+TECPEQo7FgYiwca/AQDlbgQD3jiBVEdhe9WjB5YYkxcdswLKyn6jFGKsvjlcWN/qkVtKNqjG92NbXxEksmPEj53DCQEjesUhRSh3BckhsOVq5sE11Hhb00qTiZM+DQg9qL9E3MxMS6fMSDwQc65eFfQjv8At/uqkJ7RPElLzVCD6051lWRRKzUjrx40w0mlNZqBUSDMaQGprNRrrQFDwb8iivSCpApOagKDmO6hE+tNyNSVagKJsc5AIG5tCPsPce+hk0udB8/SiSdQLgdo/nyoIlzd9eQ4UyaDijznTReZ3mpqoFFgP300H5UvrTvvrfz8aBDd6h409ry/GpLvc+NQ8WbnTlSY0iXibHWm+tuLGgXqJK1r/nwobLSLd7KtjRY7HvBKDlaCWzDepGQK694BPdqarnS7AHD43EQFgxikKXAsCF0XThparp/B/X/vS/AQSepKafKqz7Tf8q43/Pt91Z2a0c3oxAsmMwqOoZXxEKsp3FWkUEHxBNXH2oezSTZ7GeANJhGO/e0JP1JOa8m8jra9R6H/AOP4P/SoP+KlemekfTTDYbGx4HFqoixENxI1imYs6GOUHQKQBr66agCjygxrWPZv0Zwk+xMfiJoEeaIz5HN7rlw8bLax4MSfOm/av7LThM2LwalsMe08Y1aH9YfFH/u+Gtdr2S/ze2l+1if+ViobAxFO7WlE+Z+X76bzUKkZrcnRvC/4LjG9Qn0kj+V1zf40U5293TdWVg6VtUn8zR4f201h4amJmkdG+hUWN2JicVfJPhpJWDbw6JFG5jcetjwJrNL1ufsq/m7tL/Wv+WSsLosZr3s36NYTEbFx+ImgR5ouvyOb3XJh1ZbWNtCb1kamty9kn83tpf6z/wAqlYYKANE9j/QOPaUskmIJ+jwZcyg5TIzXIXMNVUAEkjXUVdItvdGJZ/of0NFUnqxP1SrGSdARKG6wC/1iBzvbWql7FunMOAllgxOkGIy9u1wjgEdsDXKQbE8LDhcjvdIPYqkynEbKxSSRt2ljdgy2Oto5lvccAGHi1AGZdMcLhYcXLHg5jLArWVj81DfXANwG4/M9j2c7RwiSSDHpnw2XMy2LdoEKhsDfe9VTaez5cPK0M0bRyIbMrCxB+8cbjfRxG0Tn4iqD1zn/AHU9adio9GdD8BsDaAmXC4QERhOsDLIujFiu9tdUP5NUfpN0g2AkTLgtnrJiLlR1iOqJbe5u3atwA310P4NJ/wAoeGH/ALRWOzH9I37R++hAxRatDwXQ6JdhTbSc55XyiIfViUYhY2P6zmx14A+dZwTW2X/8HDw/tlMlIxm9d7oZ0Um2jiOpiIUAZpJCCVjW+8jix3Ace4Amq5ety9nkv0Ho5iMbGB1r9a9/1lbqY/IEXt3mm2CQMdhOjuyf0M0X0vEAdsFRM4Nh7wJEcfhoa4nSLb3R+bCuYcC8eI3RqqiE3P1mZCyFRyNyeXEZesmZruxJYksx7TEk3LHmb60d+VCBsdLVpvsT6OYTGHFfSYEl6vqsua+mbrL2seNh6VlxItqbeN9fCt99hnRqfDQzTTAJ9I6spGffVVzWZx9UnNou/TXlQ2KK2V+fb3RZVNsEWIBIURSAsRwBLAa99ZpLtaGSeRxgoo4nWywoTZADoc5uS9r3Pyq9dIfY39Hw0+I/jBH6mN5MohtmyAtlv1pte2+xrKY9aSGztYaOB5Ll1hEjgKpvljDG3ab4RvJturW9qrsHY6RxTQ/TJnUMbKsrEEaOczBEU8ANT376wsrY2NPMBvOthxN9BoPIUxdGw9I+i+Ax+z32jskdW0QYyRWIBCDM6GO5ySBdRbQ+YIx/rnO78+tbj0Ywn8T7CxE+I7MuJBZYzvDSJkijt8X1jyF+VYkNNO6hBJDfVsd5pmQWNql3qHKdTQyUOtNTMrE2G+9KApUbZTntc/UHf8R8OHf4UmWjSfYcuXaqp8OHlLd7Ex39NB5VUfab/lXG/wCfb7qkezTpRHs7G/SZlkderdLJlLXYrr2iBbQ8a5HTDai4rG4jEIrKk0hdQ1swB52JF/OkUguh5/7wwf8ApMH/ABUrRP4R4/7dhv8AR/8AqPWY7BxghxMEzAlYpo5GAtchHViBfS9hVt9qvTGHaeIimhjkRY4urIkCgk52a4ysdLGkxlg9lftSOGy4PHMXw57KSHUw30yv8UfzXw3apj9g4bCbN2h9FAEc8c8+VSCgLQBT1dtyEKDbvNtLAeUTV26Je0ObC4afBSky4aaGSNBvaF3RgGQnelzqvmLahgdFIFC9CtU6H9L9hx4NMPi9nFpFOZnyJLnfcXzEhlvb3dw76BHfxqlOhyBtCwUj+vi8w+RvWGGtF9p3tIXHxx4XCxGHCxkGxADMVFlGVdFRRuHhyrOqAN29ikfX7F2hhkP6RmmAHH9LAqofMgjyrCZIypKsCCCQQRYgjQgg7jVh6D9MJ9mYjrobMrDLJG3uyLe9jyI4Nw7wSDp8/tF6P4huvxGzWMx1a8MT3Pe2YZ/EigB/2eQHDdGcbLKMomXEOl9LhohEtvFhYVg4rQ/aT7Tn2igw8MfUYVSDl0zPl93PbRVHBRyvc6WzygCx7G6F4vE4PEY2NLxQDX4nIIzhF/VU5iTwGl6HQLb2KwuMh+jOwLyorRgnLIGYDIy7je9r7xwrq+zL2hvst3VkMuHlILoCAysNM6E6XtoQd9hutV8j9pmwYHOJw+zmGI1IIhiQ5je/azHLe5uQOJoA5v8ACTw6DE4VwB1jROH5lVZcl/8AaesjmfRV+EfM6n7h5V2Ol/SWbaOLbET2BNlVB7qINQg57ySeJJrhGgDbf4NP/qHhh/7RWOSi7NzDN5i5+Y/O6rL0H6cSbMgxawpebEdUqObFYwnW5nI+s3bWw3byd1jUyxve+t7376AHL1tn/s3y/tlYkGvWg/4eQfxD/FfVy9db37J1f+MdbvzZt2m7fTJM/rcfZJNHj9j4rZbMFkUSBf2JTmV7cbSXv5c6w6p+xNsTYSZZ8O5SRNxG4g71YbmU8RTYITtfZ02FmeCdCkiGxB+TKeKneDUPrDzrZ09rOzsZGq7T2dmdRvVElXvK5iGS/LXxrldJumOw3wr4fC7LOZ9Q+VISjC+V+sBZiRc6WsbkcaAoy4Anea2r+DcNcd/8P/VrF6v/ALKenUGyziDNFK/XdXl6sIbZM975mHxChiRQFt9tEvvVsMntC2DY5diqTY2Bw+EAJ4AnMbDvsay3bW0PpExl6qKIH3Y4UWONF4KFUC/idTQFEKYca1X2SdC0K/xpjrJhoQXjD6K5X/zmv9RbaDiRyGuc7GOHEyHFiRoFN3WK2d7fUBLCwPE3vbdrWyT+2PZUkQgfATPCAoEbR4cpZbZRkMlrCwt4UMEZ57SOmz7SxFxdcPESIUPHnK4+JvkNOd6qDWk9I+nuzGhK4LZEMczaCSbD4bKg4sqrmzNyB0462sczZ/WhCYt5LeNRKfyWBvvpimCHVFyBzpqR7m/Pd3DgKFCkMSKDChQoAIJSbUdChjTCoqOhUGgVJoUKaJYKOhQpiBQNChQAVGaFCgYVChQpAPJ7w77fZTdChQxAoxQoUAKSnDa27W++/DlahQqhAFHQoUCCtS1oUKADo6KhQAmThTi7qFCgBQFNqLGhQoEPZaJVtR0KYgpd1MWoUKQ0f//Z" alt="">
                  <p>Review
    <!--                    <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!</p> -->   <% /**comment out**/ %> 
                 <ul class="list-inline item-details">
   <!--                 <li>Client: --> <!--  Comment Out -->
                      <strong>
  <!--                      <a href="http://startbootstrap.com">Start Bootstrap</a> --> <% /**comment out**/ %>
                      </strong>
                    </li>
    <!--                  <li>Date:
                      <strong>
                        <a href="http://startbootstrap.com">April 2014</a>
                      </strong>
                    </li> <!--  Comment Out -->
   <!--                 <li>Service:  --> 
                      <strong>
    <!--                    <a href="http://startbootstrap.com">Web Development</a>
                      </strong>
                    </li> <!--  Comment Out -->
                  </ul>
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
    <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
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
                  <h2>Tekken 7</h2>
                  <hr class="star-primary">
                  <img class="img-fluid img-centered" src="data:image/jpeg;base64,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" alt="">
                  <p>Review
    <!--                    <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!</p> -->   <% /**comment out**/ %> 
                 <ul class="list-inline item-details">
   <!--                 <li>Client: --> <!--  Comment Out -->
                      <strong>
  <!--                      <a href="http://startbootstrap.com">Start Bootstrap</a> --> <% /**comment out**/ %>
                      </strong>
                    </li>
    <!--                  <li>Date:
                      <strong>
                        <a href="http://startbootstrap.com">April 2014</a>
                      </strong>
                    </li> <!--  Comment Out -->
   <!--                 <li>Service:  --> 
                      <strong>
    <!--                    <a href="http://startbootstrap.com">Web Development</a>
                      </strong>
                    </li> <!--  Comment Out -->
                  </ul>
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
