

		<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>Money Bazzar Finance</title>
	<meta charset="UTF-8">
	<meta name="description" content="loans HTML Template">
	<meta name="keywords" content="loans, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<!-- Favicon -->
	<link href="img/favicon.ico" rel="shortcut icon"/>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&display=swap" rel="stylesheet">
 
	<!-- Stylesheets -->
	<link rel="stylesheet" href="<?php echo base_url()?>loans2go/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="<?php echo base_url()?>loans2go/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="<?php echo base_url()?>loans2go/css/owl.carousel.min.css"/>
	<link rel="stylesheet" href="<?php echo base_url()?>loans2go/css/flaticon.css"/>
	<link rel="stylesheet" href="<?php echo base_url()?>loans2go/css/slicknav.min.css"/>

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="<?php echo base_url()?>loans2go/css/style.css"/>


	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section -->
	<header class="header-section">
		<a href="<?php echo base_url() ?>" class="site-logo">
			<img src="<?php echo base_url() ?>loans2go/img/logo2.png" alt="">
		</a>
		<nav class="header-nav" style="margin-left;">
			<ul class="main-menu">
				<li><a href="<?php echo base_url() ?>" class="active">Home</a></li>
				<li><a href="<?php echo base_url('home_front/about') ?>">About Us</a></li>
				<!-- <li><a href="#">Pages</a>
					<ul class="sub-menu">
						<li><a href="<?php echo base_url('home_front/about') ?>">About Us</a></li>
						<li><a href="<?php echo base_url('home_front/loan') ?>">Loans</a></li>
						<li><a href="<?php echo base_url('home_front/element') ?>">elements</a></li>
					</ul>
				</li> -->
				<!-- <li><a href="<?php echo base_url('home_front/news') ?>">News</a></li> -->
				<li><a href="<?php echo base_url('home_front/contact') ?>">Contact</a></li>
			</ul>
			<div class="header-right">
				<div></div>
			</div>
		</nav>
	</header>
	<!-- Header Section end -->

	<!-- Hero Section end -->
	<?php if(isset($content)){ $this->load->view($content);} ?>
	<!-- Footer Section -->
	<footer class="footer-section">
		<div class="container">
			<a href="index.html" class="footer-logo">
				<img src="<?php echo base_url()?>loans2go/img/logo.png" alt="">
			</a>
			<div class="row">
				<div class="col-lg-3 col-sm-6">
					<div class="footer-widget">
						<h2>What we do</h2>
						<ul>
							<li><a href="<?php echo base_url('home_front/loan') ?>">Loans</a></li>
							<!-- <li><a href="#">Car loans</a></li>
							<li><a href="#">Debt consolidation loans</a></li>
							<li><a href="#">Home improvement loans</a></li>
							<li><a href="#"> Wedding loans</a></li>
							<li><a href="#">Innovative Finance ISA</a></li> -->
						</ul>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="footer-widget">
						<h2>About us</h2>
						<ul>
							<li><a href="<?php echo base_url('home_front/about') ?>">About us</a></li>
							<!-- <li><a href="#">Our story</a></li>
							<li><a href="#">Meet the board</a></li>
							<li><a href="#">Meet the leadership team</a></li>
							<li><a href="#">Awards</a></li>
							<li><a href="#">Careers</a></li> -->
						</ul>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="footer-widget">
						<h2>Legal</h2>
						<ul>
							<li><a href="#">Privacy policy</a></li>
							<!-- <li><a href="#">Loans2go principles</a></li>
							<li><a href="#">Website terms</a></li>
							<li><a href="#">Cookie policy</a></li>
							<li><a href="#">Conflicts policy</a></li> -->
						</ul>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="footer-widget">
						<h2>Site Info</h2>
						<ul>
							<!-- <li><a href="#">Support</a></li>
							<li><a href="#">FAQ</a></li>
							
							<li><a href="#">Careers</a></li> -->
							<li><a href="#">Contact us</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tem por incididunt ut labore et dolore mag na aliqua.  Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse potenti. Ut gravida mattis magna, non varius lorem sodales nec. In libero orci, ornare non nisl.</p> -->
			<div class="copyright"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://alliancetech.in/" target="_blank">Alliance Tech</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
		</div>
	</footer>
	<!-- Footer Section end -->
	
	<!--====== Javascripts & Jquery ======-->
	<script src="<?php echo base_url()?>loans2go/js/jquery-3.2.1.min.js"></script>
	<script src="<?php echo base_url()?>loans2go/js/bootstrap.min.js"></script>
	<script src="<?php echo base_url()?>loans2go/js/jquery.slicknav.min.js"></script>
	<script src="<?php echo base_url()?>loans2go/js/owl.carousel.min.js"></script>
	<script src="<?php echo base_url()?>loans2go/js/jquery-ui.min.js"></script>
	<script src="<?php echo base_url()?>loans2go/js/main.js"></script>
	 <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.1/dist/jquery.validate.js"></script>  

	</body>
</html>

