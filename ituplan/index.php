<html>
	<head>
		<title></title>
		
		<!-- CSS -->
		<link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/ui-lightness/jquery-ui.css" />
		<link rel="stylesheet" type="text/css" href="css/style.css" media="all" />
		
		<!-- JAVASCRIPT -->
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/jquery-ui.min.js"></script>
		<script type="text/javascript" src="js/screen.js"></script>
		
		<!-- PHP -->
		<?php include_once('php/floor_maps.php'); ?>
	</head>
	<body>
		<header>
			<a id="logo" href="/"><span>ITU's Locale Booking</span></a>
			<nav id="toolbar">
				<ul>
					<li><a href="#">Do this</a></li>
					<li><a href="#">Do that</a></li>
					<li><a href="#">Nuke it</a></li>
					<li><a href="#">Logout</a></li>
				</ul>
			</nav>
		</header>
		<div class="col7">
			<section id="floors">
				<img src="img/floor4.png" usemap="floor4map" />
				<img src="img/floor3.png" usemap="floor3map" />
				<img src="img/floor2.png" usemap="floor2map" />
				<img src="img/floor1.png" usemap="floor1map" />
				<img src="img/floor0.png" usemap="floor0map" />
			</section>
		</div>
		<div class="col3 last">
			<section id="rightcolumn">
				<div id="cal"></div>
				<nav id="quicknav">
					<button id="quickfind">Find room</button>
					<button id="advanced">Advanced</button>
				</nav>
			</section>
		</div>
		<footer>&nbsp;</footer>
	</body>
</html>
