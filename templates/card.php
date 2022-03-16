<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="../owl-carousel/owl.carousel.min.css">
	<link rel="stylesheet" href="../icons/font/bootstrap-icons.css">
	<link rel="stylesheet" href="../css/style.css">
	<script type="text/javascript" src="../js/jquery-3.5.1.min.js"></script>
</head>
<body>
	<header class="Header-templates">
    	<nav>
    		<section class="container-xxl d-flex justify-content-between align-items-center h-100">
                <figure style="width: 150px;">
                	<a href="../index.php">
    			    	<img src="../img/logo.png" alt="" width="100%" height="100%">
                	</a>
                </figure>
    			
    			<ul class="d-flex">
    				<li><i class="bi bi-geo-alt"></i></li>
    				<li><i class="bi bi-person-circle"></i></li>
    				<a href="javascript:void(0)"><li><i class="bi bi-list"></i></li></a>
    			</ul>
    		</section>
    	</nav>
	</header>
	<section class="section-content">
    	<article class="container-xxl">
    		<div class="panel-template">
	    		<div class="row">
	    			<div class="col-md-3">
						<h1 class="text-center mb-3">Filtro</h1>
	    				
	    			</div>
	    			<div class="col-md-9">
	    				<div class="car-items">
	    					<?php for ($i=0; $i < 15; $i++) { ?>
	    					<div id="$i" class="car-item">
	    						<figure>
	    							<img src="../img/car/png/car-2.png" alt="" width="100%" height="100%">
	    						</figure>
	    						<div class="car-atr">
	    							<h6>Marca Vehiculo</h6>
	    							<h3>Car Title</h3>
	    							<ul>
	    								<li>
	    									<span>Manual</span>
	    									<img src="../img/car/icons/icons-1.png" alt="" width="100%" height="100%">
	    								</li>
	    								<li>
	    									<span>4 Per</span>
	    									<img src="../img/car/icons/icons-2.png" alt="" width="100%" height="100%">
	    								</li>
	    								<li>
	    									<span>4 Puertas</span>
	    									<img src="../img/car/icons/icons-3.png" alt="" width="100%" height="100%">
	    								</li>
	    								<li>
	    									<span>60 Ltros</span>
	    									<img src="../img/car/icons/icons-4.png" alt="" width="100%" height="100%">
	    								</li>
	    							</ul>
	    						</div>
	    						<ul class="car-button">
	    							<li>
	    								<h6>$15</h6>
	    								<span>Hour</span>
	    							</li>
	    							<li>
	    								<h6>$85</h6>
	    								<span>Full Day</span>
	    							</li>
	    							<li>
	    								<button>Reserva</button>
	    							</li>
	    						</ul>
	    					</div>
	    					<?php } ?>
	    				</div>
	    			</div>
	    		</div>
    		</div>
    	</article>
    	<svg viewBox="0 0 1440 490" style="bottom: 0; position: absolute;"><path fill="#0574bb" d="M0,441L80,392C160,343,320,245,480,236.8C640,229,800,310,960,302.2C1120,294,1280,196,1440,130.7C1600,65,1760,33,1920,89.8C2080,147,2240,294,2400,310.3C2560,327,2720,212,2880,155.2C5440,180,5600,163,5760,196C5920,429,6080,210,6240,490L11440,490C320,490,160,490,130,490L0,490Z"></path></svg>
	</section>
	<?php include('../footer.php'); ?>
</body>
</html>