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
	    			<div class="col-md-7">
						<h1 class="text-center mb-3">Ingrese Información</h1>
	    				<form action="" class="form-hotels">
	    					<!-- <form action="{{ route('hotels.store') }}" class="from-contact" method="POST">
							@csrf -->

							<input type="hidden" name="Tiposervicio" value="Hotels">

							<div class="row">
								<div class="col-md-6 mb-3">
									<label class="form-control-contact d-block"> Name
										<input type="text" class="form-control" name="name" required="required" maxlength="40">
									</label>
								</div>
							
								<div class="col-md-6 mb-3">
									<label class="form-control-contact d-block"> Phone
										<input type="tel" class="form-control" name="phone" required="required" maxlength="10">
									</label>
								</div>
							</div>

							<div class="row">
								<div class="col-md-7 mb-3">
									<label class="form-control-contact d-block"> Email
										<input type="email" class="form-control" name="email" required="required" maxlength="100">
									</label>
								</div>
							
								<div class="col-md-5 mb-3">
									<label class="form-control-contact d-block">City or Hotel
										<input type="text" name="cityhotel" id="city" class="form-control"/>
									</label>
								</div>
							</div>

							<div class="row">
								<div class="col-md-6 mb-3">
									<label class="form-control-contact d-block">Check in
										<input type="date" name="checkin" id="checkin" class="form-control"/>
									</label>
								</div>
								<div class="col-md-6 mb-3">
									<label class="form-control-contact d-block">Check out
										<input type="date" name="checkout" id="checkout" class="form-control"/>
									</label>
								</div>
							</div>

							<div class="row mb-3">
								<div class="col-md-4 mb-3">
									<label class="form-control-contact d-block">Adults
										<select name="adults" id="adults" class="form-control form-control-select">
											<option value="">Choose Quantity</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
											<option value="13">13</option>
											<option value="14">14</option>
											<option value="15">15</option>
											<option value="16">16</option>
											<option value="17">17</option>
											<option value="18">18</option>
											<option value="19">19</option>
											<option value="20">20</option>
										</select>
									</label>
								</div>
								<div class="col-md-4 mb-3">
									<label class="form-control-contact d-block">Child
										<select name="childs" id="childs" class="form-control form-control-select">
											<option value="">Choose Quantity</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
											<option value="13">13</option>
											<option value="14">14</option>
											<option value="15">15</option>
											<option value="16">16</option>
											<option value="17">17</option>
											<option value="18">18</option>
											<option value="19">19</option>
											<option value="20">20</option>
										</select>
									</label>
								</div>
								<div class="col-md-4 mb-3">
									<label class="form-control-contact d-block">Age
										<select name="age" id="age" class="form-control form-control-select">
											<option value="">Choose Age</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
											<option value="13">13</option>
											<option value="14">14</option>
											<option value="15">15</option>
											<option value="16">16</option>
											<option value="17">17</option>
										</select>
									</label>
								</div>
							</div>

							<div class="form-control-button">
								<button>SENDING</button>
							</div>
	    				</form>
	    			</div>
	    			<div class="col-md-5">
	    				<div class="Hotels-items">
	                        <figure>
	                            <img src="../img/galery/galery-1.jpg" alt="" width="100%" height="100%" class="w-100 h-100 obj-fit-cover">
	                        </figure>
	                        <figure>
	                            <img src="../img/galery/galery-2.jpg" alt="" width="100%" height="100%" class="w-100 h-100 obj-fit-cover">
	                        </figure>
	                        <figure>
	                            <img src="../img/galery/galery-3.jpg" alt="" width="100%" height="100%" class="w-100 h-100 obj-fit-cover">
	                        </figure>
	                        <figure>
	                            <img src="../img/galery/galery-1.jpg" alt="" width="100%" height="100%" class="w-100 h-100 obj-fit-cover">
	                        </figure>
	                        <figure>
	                            <img src="../img/galery/galery-2.jpg" alt="" width="100%" height="100%" class="w-100 h-100 obj-fit-cover">
	                        </figure>
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