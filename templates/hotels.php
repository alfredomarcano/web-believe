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
    			    <img src="../img/logo.png" alt="" width="100%" height="100%">
                </figure>
    			
    			<ul class="d-flex">
    				<li><i class="bi bi-geo-alt"></i></li>
    				<li><i class="bi bi-person-circle"></i></li>
    				<a href="javascript:void(0)"><li><i class="bi bi-list"></i></li></a>
    			</ul>
    		</section>
    	</nav>
    	<article class="container-xxl">
    		<div style="z-index: 1; position: relative; padding-top: 15vh;">
	    		<div class="row">
	    			<div class="col-md-7">
	    				<form action="" style="background: #fff; height: 100%;">
	    					<!-- <form action="{{ route('hotels.store') }}" class="from-contact" method="POST">
							@csrf -->
							<h2>Enter your Information</h2>

							<input type="hidden" name="Tiposervicio" value="Hotels">

							<div class="formulario-contact">
								<div class="col col-md-12">
									<label class="form-control-contact form-control d-block"> Name
										<input type="text" class="form-control" name="name" required="required" maxlength="40">
									</label>
								</div>
							</div>
							
							<div class="formulario-contact">
								<div class="col col-md-12">
									<label class="form-control-contact form-control d-block"> Phone
										<input type="tel" class="form-control" name="phone" required="required" maxlength="10">
									</label>
								</div>
							</div>

							<div class="formulario-contact">
								<div class="col col-md-12">
									<label class="form-control-contact form-control d-block"> Email
										<input type="email" class="form-control" name="email" required="required" maxlength="100">
									</label>
								</div>
							</div>

							<div class="formulario-contact">
								<div class="col col-md-12">
									<label class="form-control-contact form-control d-block">City or Hotel
										<input type="text" name="cityhotel" id="city" class="form-control"/>
									</label>
								</div>
							</div>

							<div class="formulario-contact">
								<div class="col col-md-6">
									<label class="form-control-contact form-control d-block">Check in
										<input type="date" name="checkin" id="checkin" class="form-control"/>
									</label>
								</div>
								<div class="col col-md-6">
									<label class="form-control-contact form-control d-block">Check out
										<input type="date" name="checkout" id="checkout" class="form-control"/>
									</label>
								</div>
							</div>

							<div class="formulario-contact">
								<div class="col col-md-4">
									<label class="form-control-contact form-control d-block">Adults
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
								<div class="col col-md-4">
									<label class="form-control-contact form-control d-block">Child
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
								<div class="col col-md-4">
									<label class="form-control-contact form-control d-block">Age
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
	    				<h1 class="text-center">Gestiona tu Cita</h1>
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
    	<svg viewBox="0 0 1440 490" style="margin-top: -500px; position: absolute;"><path fill="#0574bb" d="M0,441L80,392C160,343,320,245,480,236.8C640,229,800,310,960,302.2C1120,294,1280,196,1440,130.7C1600,65,1760,33,1920,89.8C2080,147,2240,294,2400,310.3C2560,327,2720,212,2880,155.2C5440,180,5600,163,5760,196C5920,429,6080,210,6240,490L11440,490C320,490,160,490,130,490L0,490Z"></path></svg>
	</header>
	<footer>
		<div class="container-xxl">
            <div class="row justify-content-between">
                <div class="col-md-4 text-white">
                    <figure class="pb-2">
                        <img src="../img/logo.png" alt="" class="w-100 h-100">
                    </figure>
                    <p style="font-size: 1.2rem;">Somos tu mejor elección a la hora de viajar, ven a disfrutar de tus vacaciones con toda seguridad</p>
                    <ul class="ps-0">
                        <li><a href="tel:+17025121453" class="text-white"><i class="bi bi-whatsapp"></i> +1 702 512 1453</a></li>
                    </ul>
                    <ul class="d-flex footer-redes">
                        <li><a href="https://www.facebook.com/believecuba"><i class="bi bi-facebook"></i></a></li>
                        <li><a href="https://www.instagram.com/believecuba"><i class="bi bi-instagram"></i></a></li>
                        <li><a href="https://www.twitter.com/believecuba"><i class="bi bi-twitter"></i></a></li>
                    </ul>
                </div>
                <div class="col-md-5">
                    <form action="" class="footer-form">
                        <div class="text-center text-white mb-2">
                            <h3>Contactanos</h3>
                        </div>
                        <div class="mb-2">
                            <input type="text" class="form-control" placeholder="Ingresa tu nombre">
                        </div>
                        <div class="mb-2">
                            <input type="text" class="form-control" placeholder="Tu email">
                        </div>
                        <div class="mb-2">
                            <input type="text" class="form-control" placeholder="Asunto">
                        </div>
                        <div class="mb-2">
                            <textarea name="" id="" cols="30" rows="3" class="form-control" placeholder="Escribe tu mensaje aquí"></textarea>
                        </div>
                        <div class="footer-button">
                            <button>Enviar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <hr>
        <div class="d-flex justify-content-center align-items-center copyright">
            <span>© Copyright 2021 BelieveCuba</span>
        </div>
	</footer>
</body>
</html>