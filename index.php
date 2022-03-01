<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<link rel="stylesheet" href="">
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="owl-carousel/owl.carousel.min.css">
	<link rel="stylesheet" href="icons/font/bootstrap-icons.css">
	<!-- <link rel="stylesheet" href="{{ asset('public/owlcarousel/owl.carousel.min.css') }}"> -->
	<script type="text/javascript" src="js/jquery-3.5.1.min.js"></script>
</head>
<style>
    @font-face{
        font-family: Sansita-Regular, sans-serif;
        src:url(../font/Sansita-Regular.ttf);
    }

	*{
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		list-style: none;
		text-decoration: none;
	}

    /*** Generales ***/

    li a, a, ul li a{
        text-decoration: none;
    }

    textarea{
        resize: none;
    }

    .header-img.owl-carousel .owl-nav, .categories.owl-carousel .owl-nav, .header-img.owl-carousel .owl-dots, 
    .clints.owl-carousel .owl-dots, .categories.owl-carousel .owl-dots, .offers.owl-carousel .owl-dots{ 
        display: none; 
    }

    .offers.owl-carousel .owl-nav{
        top: -2.5rem;
        position: absolute;
        right: 0;
    }

	body{
		
	}

    /*** Pagina **/
	nav{
        position: fixed;
		background: #25262711;
        /*background: #182431;*/
		color: white;
		height: 60px;
        top: 0;
        left: 0;
        right: 0;
        z-index: 10;
	}

	   nav ul, figure{ margin-bottom: 0;}

        nav .bi{
            color: white;
            padding-right: 10px;
            font-size: 1.3rem
        }

    header{
        height: 100%;
    }

        .header-img figure{
            height: 100%;
        }

    .Abouts{
        text-align: justify; 
        z-index: 1; 
        padding:3rem 0 4rem; 
        background: #0574bb; 
        clip-path: polygon(0px 0px, 100% 0px, 100% 80%, 50% 100%, 0% 80%); 
        height: 50vh;
    }

    .categori{
        width: 100%;
    }
     
        .category-items{
            text-align: center;
            padding: 1.5rem;
            position: relative;
        }
            .category-items:nth-child(2n+1):after{
                content: '';
                position: absolute;
                top: 7%;
                right: 7%;
                background: #f7941f44;
                border-radius: 12px;
                width: 110px;
                height: 110px;
                z-index: -1;
            }
            .category-items:before{
                content: '';
                position: absolute;
                bottom: 6%;
                left: 8%;
                background: #0574bb33;
                border-radius: 12px;
                width: 100px;
                height: 100px;
                z-index: -1;   
            }
            
            .category-items figure img{
                border-radius: 12px;
                box-shadow: 0px 0px 3px 0px #f4f4f4
            }

        .category-items:hover{
            filter: drop-shadow(1px 1px 1px orange);
            transform: scale(1.1,1.1);
            transition: 0.5s;
            cursor: pointer;
        }

        .bi{
            color: #f7a644
        }

    .bestOffers{
        background: linear-gradient(to bottom, white, #e1e1e1);
    }

	.Destiny{
        background: #0574bb;
	}

        .Destiny-title{
            color: white;
            font-family: Sansita-Regular, sans-serif;
            padding-top: 10%;
        }
            .Destiny-title span{
                font-size: 5rem;
                text-align: center;
            }

            .Destiny-title p{
                padding-top: 8%;
                font-size: 1.4rem;
                line-height: 1.7
            }
            .Destiny-title button{
                background: #f7a644;padding: 0.5rem 4rem; color: white; border-radius: 25px; font-size: 1.2rem; text-transform: uppercase; display: block; width: 50%; margin: 3rem auto
            }

        .Destiny-items{
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            grid-template-rows: repeat(4, 1fr);
            grid-gap: 20px;
        }

            .Destiny-items div:nth-child(1){ 
                grid-column: 1 / 2;
                grid-row:1 / 3; 
                height: 300px;            
            }
            .Destiny-items div:nth-child(2){ 
                grid-column: 2 / 3;
                grid-row:2 / 4; 
            }
            .Destiny-items div:nth-child(3){ 
                grid-row:3 / 5; 
            }
            .Destiny-items div:nth-child(4){ 
                grid-column: 2 / 3;
                grid-row:1 / 2; 
            }
            .Destiny-items div:nth-child(5){ 
                grid-column: 2 / 3;
                grid-row:4 / 5; 
            }

    .galery{
        background: #0574bb;
        padding: 4rem 0 3rem
    }
        .colap {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            grid-gap: 15px;
            padding: 10px;
            list-style: none;
            margin-bottom: 0;
        }
            .colap li {
                min-height: 150px;
                background-color: white;
                box-shadow: 6px 8px 18px -2px #25262766; 
            }
            .colap li:nth-child(1) {
              grid-row: 1 / 3;
              grid-column: 1 / 2;
            }
            .colap li:nth-child(4) {
              grid-row: 2 / 2;
              grid-column: 2 / 4;
            }
            .colap li:nth-child(9) {
              grid-column: 4 / 5;
              grid-row: 2 / 4;
            }

        .galery-title{
            color: white;
            font-family: Sansita-Regular, sans-serif;
            padding-top: 5%;
        }
            .galery-title span{
                font-size: 5rem;
                text-align: center;
                display: block;
                margin: 0 auto;
            }

            .galery-title p{
                padding-top: 4%;
                font-size: 1.5rem;
                line-height: 1.5;
            }
            .galery-title button{
                background: #f7a644;padding: 0.5rem 4rem; color: white; border-radius: 25px; font-size: 1.2rem; text-transform: uppercase; display: block; width: 70%; margin: 3rem auto
            }

    .comentarios{
        background: url(img/abouts-fondo.jpg);
        background-size: 100% 100%;
    }
    
        .clints-title span{
            font-size: 4rem;
            font-family: Sansita-Regular, sans-serif;
            
        }

        .clints{ padding: 3rem 0 4rem; }

            .comentarios-svg-bottom{
                width: 100%;
            }

        .clints.owl-carousel .owl-nav{
            top: -2.5rem;
            position: absolute;
            right: 0;
        }

	footer{
        padding: 4rem 0 1rem;
		background: linear-gradient(180deg, #0574bb, #26b6ec);
        color: #212529;
	}
        footer .bi{
            color: white;
        }

        .footer-redes{ padding-left: 0;}

            .footer-redes li{ font-size: 2rem; padding-right: 1.5rem }

        .footer-servicios{
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(100px, 1fr));
            grid-gap: 20px;
        }

        .form-control {
            background: #25262755;
            /*background: transparent;*/
            border: none;
        }

            ::placeholder{ color: white !important; }

        .copyright{
            color: #212529;
            font-size: 12px
        }

    @media screen and (max-width: 720px){
        .header-img figure{
            height: 100%;
        }
        .categories.owl-carousel .owl-nav{
            display: block;
        }
        footer{
            padding: 2rem 0 1rem;
        }
    }

</style>
<body class="">
	<header class="" style="">
    	<nav>
    		<section class="container-xl d-flex justify-content-between align-items-center h-100">
                <figure style="width: 150px;">
    			    <img src="img/logo.png" alt="" width="100%" height="100%">
                </figure>
    			<ul class="d-flex justify-content-around">
    				<li>Hola Mundo</li>
    				<li>Hola Mundo</li>
    				<li>Hola Mundo</li>
    			</ul>
    			<ul class="d-flex">
    				<li><i class="bi bi-geo-alt"></i></li>
    				<li><i class="bi bi-person-circle"></i></li>
    				<li><i class="bi bi-list"></i></li>
    			</ul>
    		</section>
    	</nav>
		<article class="header-img owl-carousel" style="z-index: -1;">
			<figure>
				<img src="img/believe-1.jpg" alt="" width="100%" height="100%" style="width: 100%; height: 100%;" >
			</figure>
			<figure>
				<img src="img/believe-2.jpg" alt="" width="100%" height="100%" style="width: 100%; height: 100%;" >
			</figure>
			<figure>
				<img src="img/believe-5.jpg" alt="" width="100%" height="100%" style="width: 100%; height: 100%;" >
			</figure>
			<figure>
				<img src="img/believe-6.jpg" alt="" width="100%" height="100%" style="width: 100%; height: 100%;" >
			</figure>
			<figure>
				<img src="img/believe-7.jpg" alt="" width="100%" height="100%" style="width: 100%; height: 100%;" >
			</figure>
			<!-- <figure>
				<img src="img/believe-9.jpg" alt="" width="100%" height="100%" style="width: 100%; height: 100%;" >
			</figure> -->
		</article>
        <article style="margin-top: -4%">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1920 155.33"><defs><style>.cls-1{fill:#0381cb;}.cls-2{fill:#0574bb;}</style></defs><g id="Layer_2" data-name="Layer 2"><g id="Layer_1-2" data-name="Layer 1"><path class="cls-1" d="M1920,144.32s-707.77,11.49-944,11c-243.77-.51-976-15-976-15V59.55S224.64-78.61,1134.34,66c463.13,50.19,664.81,60.62,785.66,70.46Z"/><path class="cls-2" d="M0,155.32H1920V74.55S1695.36-63.61,785.66,81C322.53,131.15,120.85,130.47,0,140.32Z"/></g></g></svg>
        </article>
        
	</header>

    <section class="Abouts">
        <article class="container-xl text-white">
            <p style="font-size: 1.4rem; width: 70%; margin:0 auto;">
                Somos una Agencia de Viajes con más de 10 años de experiencia. Brindamos atención personalizada en las reservas de boletos aéreos, hoteles, renta de autos, vacaciones al Caribe, Europa y dentro de Estados Unidos.
            </p>
        </article>
    </section>

	<section class="categori">
        <article>
            <svg viewBox="0 0 1440 320" style="background: white; margin-bottom: -12%; margin-top: -5% "><path fill="#f4f4f4" fill-opacity="1" d="M0,160L120,144C240,128,480,96,720,90.7C960,85,1200,107,1320,117.3L1440,128L1440,0L1320,0C1200,0,960,0,720,0C480,0,240,0,120,0L0,0Z"></path></svg>
        </article>
        <article class="container-xl">
            
            <div class="categories owl-carousel">
                <div class="category-items">
                    <figure>
                        <img src="img/services/hoteles.jpg" alt="" class="w-100 h-100">
                    </figure>
                </div>
                <div class="category-items">
                    <figure>
                        <img src="img/services/pasaporte.jpg" alt="" class="w-100 h-100">
                    </figure>
                </div>
                <div class="category-items">
                    <figure>
                        <img src="img/services/renta-car.jpg" alt="" class="w-100 h-100">
                    </figure>
                </div>
                <div class="category-items">
                    <figure>
                        <img src="img/services/vacaciones.jpg" alt="" class="w-100 h-100">
                    </figure>
                </div>
                <div class="category-items">
                    <figure>
                        <img src="img/services/vuelos.jpg" alt="" class="w-100 h-100">
                    </figure>
                </div>
                <div class="category-items">
                    <figure>
                        <img src="img/services/cruceros.jpg" alt="" class="w-100 h-100">
                    </figure>
                </div>
            </div>
        </article>
    </section>

	<section class="bestOffers">
        <article class="container-xl">
            <h1>Best Offers</h1>
            <div class="offers owl-carousel">
                <div class="" style="margin:5px 15px; box-shadow:10px 10px 3px -4px #c4c4c4;">
                    <figure style="width:100%; height:230px;">
                        <img src="img/offers/offers-1.jpg" alt="" style="width:100%; height:100%; object-fit: cover">
                    </figure>
                    <div style="background:white;">
                        <h3>Title</h3>
                        <ul class="d-flex justify-content-between">
                            <li><i class="bi bi-star"></i></li>
                            <li><i class="bi bi-star"></i></li>
                            <li><i class="bi bi-star"></i></li>
                            <li><i class="bi bi-star"></i></li>
                            <li><i class="bi bi-star"></i></li>
                        </ul>
                        <p>Lorem ipsum dolor sit amet, consectetur.</p>
                        <span style="display:block">$550</span>
                        <button>View Offerts</button>
                    </div>
                </div>
                <div class="" style="margin:5px 15px; box-shadow:10px 10px 3px -4px #c4c4c4;">
                    <figure style="width:100%; height:230px;">
                        <img src="img/offers/offers-2.jpg" alt="" style="width:100%; height:100%; object-fit: cover">
                    </figure>
                    <div style="background:white;">
                        <h3>Title</h3>
                        <ul class="d-flex justify-content-between">
                            <li><i class="bi bi-star"></i></li>
                            <li><i class="bi bi-star"></i></li>
                            <li><i class="bi bi-star"></i></li>
                            <li><i class="bi bi-star"></i></li>
                            <li><i class="bi bi-star"></i></li>
                        </ul>
                        <p>Lorem ipsum dolor sit amet, consectetur.</p>
                        <span style="display:block">$550</span>
                        <button>View Offerts</button>
                    </div>
                </div>
                <div class="" style="margin:5px 15px; box-shadow:10px 10px 3px -4px #c4c4c4;">
                    <figure style="width:100%; height:230px;">
                        <img src="img/offers/offers-3.jpg" alt="" style="width:100%; height:100%; object-fit: cover">
                    </figure>
                    <div style="background:white;">
                        <h3>Title</h3>
                        <ul class="d-flex justify-content-between">
                            <li><i class="bi bi-star"></i></li>
                            <li><i class="bi bi-star"></i></li>
                            <li><i class="bi bi-star"></i></li>
                            <li><i class="bi bi-star"></i></li>
                            <li><i class="bi bi-star"></i></li>
                        </ul>
                        <p>Lorem ipsum dolor sit amet, consectetur.</p>
                        <span style="display:block">$550</span>
                        <button>View Offerts</button>
                    </div>
                </div>
                <div class="" style="margin:5px 15px; box-shadow:10px 10px 3px -4px #c4c4c4;">
                    <figure style="width:100%; height:230px;">
                        <img src="img/offers/offers-4.jpg" alt="" style="width:100%; height:100%; object-fit: cover">
                    </figure>
                    <div style="background:white;">
                        <h3>Title</h3>
                        <ul class="d-flex justify-content-between">
                            <li><i class="bi bi-star"></i></li>
                            <li><i class="bi bi-star"></i></li>
                            <li><i class="bi bi-star"></i></li>
                            <li><i class="bi bi-star"></i></li>
                            <li><i class="bi bi-star"></i></li>
                        </ul>
                        <p>Lorem ipsum dolor sit amet, consectetur.</p>
                        <span style="display:block">$550</span>
                        <button>View Offerts</button>
                    </div>
                </div>
                <div class="" style="margin:5px 15px; box-shadow:10px 10px 3px -4px #c4c4c4;">
                    <figure style="width:100%; height:230px;">
                        <img src="img/offers/offers-5.jpg" alt="" style="width:100%; height:100%; object-fit: cover">
                    </figure>
                    <div style="background:white;">
                        <h3>Title</h3>
                        <ul class="d-flex justify-content-between">
                            <li><i class="bi bi-star"></i></li>
                            <li><i class="bi bi-star"></i></li>
                            <li><i class="bi bi-star"></i></li>
                            <li><i class="bi bi-star"></i></li>
                            <li><i class="bi bi-star"></i></li>
                        </ul>
                        <p>Lorem ipsum dolor sit amet, consectetur.</p>
                        <span style="display:block">$550</span>
                        <button>View Offerts</button>
                    </div>
                </div>
                <div class="" style="margin:5px 15px; box-shadow:10px 10px 3px -4px #c4c4c4;">
                    <figure style="width:100%; height:230px;">
                        <img src="img/offers/offers-6.jpg" alt="" style="width:100%; height:100%; object-fit: cover">
                    </figure>
                    <div style="background:white;">
                        <h3>Title</h3>
                        <ul class="d-flex justify-content-between">
                            <li><i class="bi bi-star"></i></li>
                            <li><i class="bi bi-star"></i></li>
                            <li><i class="bi bi-star"></i></li>
                            <li><i class="bi bi-star"></i></li>
                            <li><i class="bi bi-star"></i></li>
                        </ul>
                        <p>Lorem ipsum dolor sit amet, consectetur.</p>
                        <span style="display:block">$550</span>
                        <button>View Offerts</button>
                    </div>
                </div>
                <div class="" style="margin:5px 15px; box-shadow:10px 10px 3px -4px #c4c4c4;">
                    <figure style="width:100%; height:230px;">
                        <img src="img/offers/offers-7.jpg" alt="" style="width:100%; height:100%; object-fit: cover">
                    </figure>
                    <div style="background:white;">
                        <h3>Title</h3>
                        <ul class="d-flex justify-content-between">
                            <li><i class="bi bi-star"></i></li>
                            <li><i class="bi bi-star"></i></li>
                            <li><i class="bi bi-star"></i></li>
                            <li><i class="bi bi-star"></i></li>
                            <li><i class="bi bi-star"></i></li>
                        </ul>
                        <p>Lorem ipsum dolor sit amet, consectetur.</p>
                        <span style="display:block">$550</span>
                        <button>View Offerts</button>
                    </div>
                </div>
            </div>
        </article>
        <article>
            <svg style="margin-top:-30px" viewBox="0 0 1440 200" version="1.1" xmlns="http://www.w3.org/2000/svg">
                <defs>
                    <linearGradient id="sw-gradient" x1="0" x2="0" y1="1" y2="0"><stop stop-color="rgba(246, 150, 34, 1)" offset="0%"></stop><stop stop-color="rgba(255, 255, 255, 1)" offset="100%"></stop></linearGradient>
                </defs>
                <path style="transform:translate(0, 0px); opacity:1" fill="url(#sw-gradient)" d="M0,120L240,123.3C480,127,960,133,1440,113.3C1920,93,2400,47,2880,53.3C3360,60,3840,120,4320,120C4800,120,5280,60,5760,56.7C6240,53,6720,107,7200,130C7680,153,8160,147,8640,126.7C9120,107,9600,73,10080,53.3C10560,33,11040,27,11520,46.7C12000,67,12480,113,12960,133.3C13440,153,13920,147,14400,146.7C14880,147,15360,153,15840,153.3C16320,153,16800,147,17280,130C17760,113,18240,87,18720,86.7C19200,87,19680,113,20160,113.3C20640,113,21120,87,21600,70C22080,53,22560,47,23040,63.3C23520,80,24000,120,24480,116.7C24960,113,25440,67,25920,70C26400,73,26880,127,27360,140C27840,153,28320,127,28800,100C29280,73,29760,47,30240,50C30720,53,31200,87,31680,103.3C32160,120,32640,120,33120,130C33600,140,34080,160,34320,170L34560,180L34560,200L34320,200C34080,200,33600,200,33120,200C32640,200,32160,200,31680,200C31200,200,30720,200,30240,200C29760,200,29280,200,28800,200C28320,200,27840,200,27360,200C26880,200,26400,200,25920,200C25440,200,24960,200,24480,200C24000,200,23520,200,23040,200C22560,200,22080,200,21600,200C21120,200,20640,200,20160,200C19680,200,19200,200,18720,200C18240,200,17760,200,17280,200C16800,200,16320,200,15840,200C15360,200,14880,200,14400,200C13920,200,13440,200,12960,200C12480,200,12000,200,11520,200C11040,200,10560,200,10080,200C9600,200,9120,200,8640,200C8160,200,7680,200,7200,200C6720,200,6240,200,5760,200C5280,200,4800,200,4320,200C3840,200,3360,200,2880,200C2400,200,1920,200,1440,200C960,200,480,200,240,200L0,200Z"></path>
                <defs><linearGradient id="sw-gradient-2" x1="0" x2="0" y1="1" y2="0"><stop stop-color="rgba(243, 106, 62, 1)" offset="0%"></stop><stop stop-color="#0574bb" offset="100%"></stop></linearGradient></defs><path style="transform:translate(0, 50px);" fill="#0574bb" d="M0,100L240,110C480,120,960,140,1440,143.3C1920,147,2400,133,2880,120C3360,107,3840,93,4320,100C4800,107,5280,133,5760,123.3C6240,113,6720,67,7200,43.3C7680,20,8160,20,8640,40C9120,60,9600,100,10080,106.7C10560,113,11040,87,11520,83.3C12000,80,12480,100,12960,90C13440,80,13920,40,14400,33.3C14880,27,15360,53,15840,70C16320,87,16800,93,17280,80C17760,67,18240,33,18720,23.3C19200,13,19680,27,20160,46.7C20640,67,21120,93,21600,86.7C22080,80,22560,40,23040,30C23520,20,24000,40,24480,63.3C24960,87,25440,113,25920,110C26400,107,26880,73,27360,70C27840,67,28320,93,28800,86.7C29280,80,29760,40,30240,50C30720,60,31200,120,31680,130C32160,140,32640,100,33120,93.3C33600,87,34080,113,34320,126.7L34560,140L34560,200L34320,200C34080,200,33600,200,33120,200C32640,200,32160,200,31680,200C31200,200,30720,200,30240,200C29760,200,29280,200,28800,200C28320,200,27840,200,27360,200C26880,200,26400,200,25920,200C25440,200,24960,200,24480,200C24000,200,23520,200,23040,200C22560,200,22080,200,21600,200C21120,200,20640,200,20160,200C19680,200,19200,200,18720,200C18240,200,17760,200,17280,200C16800,200,16320,200,15840,200C15360,200,14880,200,14400,200C13920,200,13440,200,12960,200C12480,200,12000,200,11520,200C11040,200,10560,200,10080,200C9600,200,9120,200,8640,200C8160,200,7680,200,7200,200C6720,200,6240,200,5760,200C5280,200,4800,200,4320,200C3840,200,3360,200,2880,200C2400,200,1920,200,1440,200C960,200,480,200,240,200L0,200Z"></path></svg>
        </article>
    </section>

	<section class="Destiny">
		<article class="container-xl py-3">
			<div class="row">
                <div class="col-md-6">
                    <div class="Destiny-title">
                        <span>Best Destiny</span>
                        <p>Lorem ipsum dolor sit, amet consectetur, adipisicing elit. Repellat, exercitationem, nobis. Voluptates recusandae provident esse numquam commodi ut ratione deleniti exercitationem animi fugiat. Ullam, sapiente quas dolores, quaerat placeat quos.</p>
                        <button>
                            <a href="" class="text-white">Contactanos</a>
                        </button>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="Destiny-items">
                        <div class="">
                            <figure style="box-shadow: 0px 0px 1px 2px white; height: 100%;">
                                <img src="img/galery/galery-1.jpg" alt="" width="100%" height="100%" style="width: 100%; height: 100%; object-fit: cover;">
                            </figure>
                            <span></span>
                        </div>
                        <div class="">
                            <figure style="box-shadow: 0px 0px 1px 2px white; height: 100%;">
                                <img src="img/galery/galery-2.jpg" alt="" width="100%" height="100%" style="width: 100%; height: 100%; object-fit: cover;">
                            </figure>
                            <span></span>
                        </div>
                        <div class="">
                            <figure style="box-shadow: 0px 0px 1px 2px white; height: 100%;">
                                <img src="img/galery/galery-3.jpg" alt="" width="100%" height="100%" style="width: 100%; height: 100%; object-fit: cover;">
                            </figure>
                            <span></span>
                        </div>
                        <div class="">
                            <figure style="box-shadow: 0px 0px 1px 2px white; height: 100%;">
                                <img src="img/galery/galery-1.jpg" alt="" width="100%" height="100%" style="width: 100%; height: 100%; object-fit: cover;">
                            </figure>
                            <span></span>
                        </div>
                        <div class="">
                            <figure style="box-shadow: 0px 0px 1px 2px white; height: 100%;">
                                <img src="img/galery/galery-2.jpg" alt="" width="100%" height="100%" style="width: 100%; height: 100%; object-fit: cover;">
                            </figure>
                            <span></span>
                        </div>
                    </div>
                </div>
            </div>
		</article>
	</section>
	
    <section class="galery">
        <article class="container-xl">
            <div class="row">
                <div class="col-md-8">
                    <ul class='colap'>
                        <li>
                            <figure class="h-100">
                                <img src="img/bb/img-1.jpg" alt="" class="w-100 h-100" style="object-fit: cover;">
                            </figure>
                        </li>
                        <li>
                            <figure class="h-100">
                                <img src="img/bb/img-2.jpg" alt="" class="w-100 h-100" style="object-fit: cover;">
                            </figure>
                        </li>
                        <li>
                            <figure class="h-100">
                                <img src="img/bb/img-3.jpg" alt="" class="w-100 h-100" style="object-fit: cover;">
                            </figure>
                        </li>
                        <li>
                            <figure class="h-100">
                                <img src="img/bb/img-2.jpg" alt="" class="w-100 h-100" style="object-fit: cover;">
                            </figure>
                        </li>
                        <li>
                            <figure class="h-100">
                                <img src="img/bb/img-4.jpg" alt="" class="w-100 h-100" style="object-fit: cover;">
                            </figure>
                        </li>
                        <li>
                            <figure class="h-100">
                                <img src="img/bb/img-1.jpg" alt="" class="w-100 h-100" style="object-fit: cover;">
                            </figure>
                        </li>
                        <li>
                            <figure class="h-100">
                                <img src="img/bb/img-2.jpg" alt="" class="w-100 h-100" style="object-fit: cover;">
                            </figure>
                        </li>
                        <li>
                            <figure class="h-100">
                                <img src="img/bb/img-3.jpg" alt="" class="w-100 h-100" style="object-fit: cover;">
                            </figure>
                        </li>
                        <li>
                            <figure class="h-100">
                                <img src="img/bb/img-4.jpg" alt="" class="w-100 h-100" style="object-fit: cover;">
                            </figure>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <div class="galery-title">
                        <span>Galería</span>
                        <p>Los momentos mas importantes de tu vida puedes hacerlos realidad. Comparte con nosotros la manera de disfrutas tus vacaciones</p>
                        <button>
                            <a href="">Ver mas</a>
                        </button>
                    </div>
                </div>
            </div>
        </article>
    </section>

    <section class="comentarios">
        <article class="comentarios-svg-top">
            <svg viewBox="0 0 1440 200" style="transform:rotate(180deg); margin-top:-10px">
                <defs><linearGradient id="sw-gradient-0" x1="0" x2="0" y1="1" y2="0"><stop stop-color="#0574bb" offset="0%"></stop><stop stop-color="#f4f4f4" offset="100%"></stop></linearGradient></defs><path fill="url(#sw-gradient-0)" d="M0,100L60,96.7C120,93,240,87,360,83.3C480,80,600,80,720,70C840,60,960,40,1080,33.3C1200,27,1320,33,1440,40C1560,47,1680,53,1800,66.7C1920,80,2040,100,2160,120C2280,140,2400,160,2520,146.7C2640,133,2760,87,2880,83.3C3000,80,3120,120,3240,120C3360,120,3480,80,3600,60C3720,40,3840,40,3960,50C4080,60,4200,80,4320,80C4440,80,4560,60,4680,73.3C4800,87,4920,133,5040,143.3C5160,153,5280,127,5400,96.7C5520,67,5640,33,5760,33.3C5880,33,6000,67,6120,66.7C6240,67,6360,33,6480,40C6600,47,6720,93,6840,106.7C6960,120,7080,100,7200,106.7C7320,113,7440,147,7560,163.3C7680,180,7800,180,7920,180C8040,180,8160,180,8280,160C8400,140,8520,100,8580,80L8640,60L8640,200L8580,200C8520,200,8400,200,8280,200C8160,200,8040,200,7920,200C7800,200,7680,200,7560,200C7440,200,7320,200,7200,200C7080,200,6960,200,6840,200C6720,200,6600,200,6480,200C6360,200,6240,200,6120,200C6000,200,5880,200,5760,200C5640,200,5520,200,5400,200C5280,200,5160,200,5040,200C4920,200,4800,200,4680,200C4560,200,4440,200,4320,200C4200,200,4080,200,3960,200C3840,200,3720,200,3600,200C3480,200,3360,200,3240,200C3120,200,3000,200,2880,200C2760,200,2640,200,2520,200C2400,200,2280,200,2160,200C2040,200,1920,200,1800,200C1680,200,1560,200,1440,200C1320,200,1200,200,1080,200C960,200,840,200,720,200C600,200,480,200,360,200C240,200,120,200,60,200L0,200Z"></path><defs><linearGradient id="sw-gradient-1" x1="0" x2="0" y1="1" y2="0"><stop stop-color="#0574bb" offset="0%"></stop><stop stop-color="#0574bb" offset="100%"></stop></linearGradient></defs><path style="transform:translate(0, 50px);" fill="url(#sw-gradient-1)" d="M0,80L60,66.7C120,53,240,27,360,30C480,33,600,67,720,66.7C840,67,960,33,1080,46.7C1200,60,1320,120,1440,136.7C1560,153,1680,127,1800,120C1920,113,2040,127,2160,126.7C2280,127,2400,113,2520,116.7C2640,120,2760,140,2880,136.7C3000,133,3120,107,3240,93.3C3360,80,3480,80,3600,66.7C3720,53,3840,27,3960,20C4080,13,4200,27,4320,26.7C4440,27,4560,13,4680,23.3C4800,33,4920,67,5040,76.7C5160,87,5280,73,5400,83.3C5520,93,5640,127,5760,123.3C5880,120,6000,80,6120,83.3C6240,87,6360,133,6480,153.3C6600,173,6720,167,6840,166.7C6960,167,7080,173,7200,166.7C7320,160,7440,140,7560,113.3C7680,87,7800,53,7920,43.3C8040,33,8160,47,8280,43.3C8400,40,8520,20,8580,10L8640,0L8640,200L8580,200C8520,200,8400,200,8280,200C8160,200,8040,200,7920,200C7800,200,7680,200,7560,200C7440,200,7320,200,7200,200C7080,200,6960,200,6840,200C6720,200,6600,200,6480,200C6360,200,6240,200,6120,200C6000,200,5880,200,5760,200C5640,200,5520,200,5400,200C5280,200,5160,200,5040,200C4920,200,4800,200,4680,200C4560,200,4440,200,4320,200C4200,200,4080,200,3960,200C3840,200,3720,200,3600,200C3480,200,3360,200,3240,200C3120,200,3000,200,2880,200C2760,200,2640,200,2520,200C2400,200,2280,200,2160,200C2040,200,1920,200,1800,200C1680,200,1560,200,1440,200C1320,200,1200,200,1080,200C960,200,840,200,720,200C600,200,480,200,360,200C240,200,120,200,60,200L0,200Z"></path>
            </svg>
        </article>
        <article class="container-xl">
          <!--   <div class="clints-title">
                <span>Opiniones</span>
            </div> -->
            <div class="clints owl-carousel">
                <div class="" style="display: flex; align-items: center; justify-content: center;">
                    <figure style="width: 300px; height:250px; box-shadow:-9px -8px 6px -3px #25262722; background:white; margin:15px; border-radius:12px;padding:1px">
                        <img src="img/opiniones/Perfil-1.jpg" alt="" style="width: 100%; height: 100%;object-fit:cover; border-radius:12px;">
                    </figure>
                    <div style="background:white; padding:0.5rem 1rem; margin-left:-10%; margin-bottom:-20%; border-radius:12px">
                        <h3>Name Person</h3>
                        <ul class="d-flex p-0">
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                        </ul>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde, mollitia.</p>
                    </div>
                </div>
                <div class="" style="display: flex; align-items: center; justify-content: center;">
                    <figure style="width: 300px; height:250px; box-shadow:-9px -8px 6px -3px #25262722; background:white; margin:15px; border-radius:12px;padding:1px">
                        <img src="img/opiniones/Perfil-2.jpg" alt="" style="width: 100%; height: 100%;object-fit:cover; border-radius:12px;">
                    </figure>
                    <div style="background:white; padding:0.5rem 1rem; margin-left:-10%; margin-bottom:-20%; border-radius:12px">
                        <h3>Name Person</h3>
                        <ul class="d-flex p-0">
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                        </ul>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde, mollitia.</p>
                    </div>
                </div>
                <div class="" style="display: flex; align-items: center; justify-content: center;">
                    <figure style="width: 300px; height:250px; box-shadow:-9px -8px 6px -3px #25262722; background:white; margin:15px; border-radius:12px;padding:1px">
                        <img src="img/opiniones/Perfil-3.jpg" alt="" style="width: 100%; height: 100%;object-fit:cover; border-radius:12px;">
                    </figure>
                    <div style="background:white; padding:0.5rem 1rem; margin-left:-10%; margin-bottom:-20%; border-radius:12px">
                        <h3>Name Person</h3>
                        <ul class="d-flex p-0">
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                        </ul>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde, mollitia.</p>
                    </div>
                </div>
                <div class="" style="display: flex; align-items: center; justify-content: center;">
                    <figure style="width: 300px; height:250px; box-shadow:-9px -8px 6px -3px #25262722; background:white; margin:15px; border-radius:12px;padding:1px">
                        <img src="img/opiniones/Perfil-4.jpg" alt="" style="width: 100%; height: 100%;object-fit:cover; border-radius:12px;">
                    </figure>
                    <div style="background:white; padding:0.5rem 1rem; margin-left:-10%; margin-bottom:-20%; border-radius:12px">
                        <h3>Name Person</h3>
                        <ul class="d-flex p-0">
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                        </ul>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde, mollitia.</p>
                    </div>
                </div>
                <div class="" style="display: flex; align-items: center; justify-content: center;">
                    <figure style="width: 300px; height:250px; box-shadow:-9px -8px 6px -3px #25262722; background:white; margin:15px; border-radius:12px;padding:1px">
                        <img src="img/opiniones/Perfil-5.jpg" alt="" style="width: 100%; height: 100%;object-fit:cover; border-radius:12px;">
                    </figure>
                    <div style="background:white; padding:0.5rem 1rem; margin-left:-10%; margin-bottom:-20%; border-radius:12px">
                        <h3>Name Person</h3>
                        <ul class="d-flex p-0">
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                        </ul>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde, mollitia.</p>
                    </div>
                </div>
                <div class="" style="display: flex; align-items: center; justify-content: center;">
                    <figure style="width: 300px; height:250px; box-shadow:-9px -8px 6px -3px #25262722; background:white; margin:15px; border-radius:12px;padding:1px">
                        <img src="img/opiniones/Perfil-6.jpg" alt="" style="width: 100%; height: 100%;object-fit:cover; border-radius:12px;">
                    </figure>
                    <div style="background:white; padding:0.5rem 1rem; margin-left:-10%; margin-bottom:-20%; border-radius:12px">
                        <h3>Name Person</h3>
                        <ul class="d-flex p-0">
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                        </ul>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde, mollitia.</p>
                    </div>
                </div>
                <div class="" style="display: flex; align-items: center; justify-content: center;">
                    <figure style="width: 300px; height:250px; box-shadow:-9px -8px 6px -3px #25262722; background:white; margin:15px; border-radius:12px;padding:1px">
                        <img src="img/opiniones/Perfil-7.jpg" alt="" style="width: 100%; height: 100%;object-fit:cover; border-radius:12px;">
                    </figure>
                    <div style="background:white; padding:0.5rem 1rem; margin-left:-10%; margin-bottom:-20%; border-radius:12px">
                        <h3>Name Person</h3>
                        <ul class="d-flex p-0">
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                            <li class="pe-2"><i class="bi bi-star"></i></li>
                        </ul>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde, mollitia.</p>
                    </div>
                </div>
            </div>
        </article>
        <article class="comentarios-svg-bottom">
            <svg id="wave" style="transform:rotate(0deg); transition: 0.3s; margin-bottom: -1%; margin-top: -5%" viewBox="0 0 1440 200">
                <defs><linearGradient id="sw-gradient-0" x1="0" x2="0" y1="1" y2="0"><stop stop-color="rgba(21, 91, 187, 1)" offset="0%"></stop><stop stop-color="rgba(246.213, 246.213, 246.213, 1)" offset="100%"></stop></linearGradient></defs><path fill="url(#sw-gradient-0)" d="M0,40L60,56.7C120,73,240,107,360,116.7C480,127,600,113,720,100C840,87,960,73,1080,83.3C1200,93,1320,127,1440,140C1560,153,1680,147,1800,150C1920,153,2040,167,2160,153.3C2280,140,2400,100,2520,100C2640,100,2760,140,2880,146.7C3000,153,3120,127,3240,123.3C3360,120,3480,140,3600,123.3C3720,107,3840,53,3960,40C4080,27,4200,53,4320,60C4440,67,4560,53,4680,40C4800,27,4920,13,5040,13.3C5160,13,5280,27,5400,30C5520,33,5640,27,5760,30C5880,33,6000,47,6120,73.3C6240,100,6360,140,6480,156.7C6600,173,6720,167,6840,146.7C6960,127,7080,93,7200,76.7C7320,60,7440,60,7560,70C7680,80,7800,100,7920,110C8040,120,8160,120,8280,113.3C8400,107,8520,93,8580,86.7L8640,80L8640,200L8580,200C8520,200,8400,200,8280,200C8160,200,8040,200,7920,200C7800,200,7680,200,7560,200C7440,200,7320,200,7200,200C7080,200,6960,200,6840,200C6720,200,6600,200,6480,200C6360,200,6240,200,6120,200C6000,200,5880,200,5760,200C5640,200,5520,200,5400,200C5280,200,5160,200,5040,200C4920,200,4800,200,4680,200C4560,200,4440,200,4320,200C4200,200,4080,200,3960,200C3840,200,3720,200,3600,200C3480,200,3360,200,3240,200C3120,200,3000,200,2880,200C2760,200,2640,200,2520,200C2400,200,2280,200,2160,200C2040,200,1920,200,1800,200C1680,200,1560,200,1440,200C1320,200,1200,200,1080,200C960,200,840,200,720,200C600,200,480,200,360,200C240,200,120,200,60,200L0,200Z"></path><defs><linearGradient id="sw-gradient-1" x1="0" x2="0" y1="1" y2="0"><stop stop-color="rgba(21, 91, 187, 1)" offset="0%"></stop><stop stop-color="rgba(21, 91, 187, 1)" offset="100%"></stop></linearGradient></defs><path style="opacity:1" fill="url(#sw-gradient-1)" d="M0,0L60,26.7C120,53,240,107,360,130C480,153,600,147,720,130C840,113,960,87,1080,80C1200,73,1320,87,1440,106.7C1560,127,1680,153,1800,136.7C1920,120,2040,60,2160,33.3C2280,7,2400,13,2520,23.3C2640,33,2760,47,2880,53.3C3000,60,3120,60,3240,50C3360,40,3480,20,3600,30C3720,40,3840,80,3960,100C4080,120,4200,120,4320,126.7C4440,133,4560,147,4680,130C4800,113,4920,67,5040,66.7C5160,67,5280,113,5400,136.7C5520,160,5640,160,5760,163.3C5880,167,6000,173,6120,176.7C6240,180,6360,180,6480,150C6600,120,6720,60,6840,46.7C6960,33,7080,67,7200,70C7320,73,7440,47,7560,30C7680,13,7800,7,7920,20C8040,33,8160,67,8280,86.7C8400,107,8520,113,8580,116.7L8640,120L8640,200L8580,200C8520,200,8400,200,8280,200C8160,200,8040,200,7920,200C7800,200,7680,200,7560,200C7440,200,7320,200,7200,200C7080,200,6960,200,6840,200C6720,200,6600,200,6480,200C6360,200,6240,200,6120,200C6000,200,5880,200,5760,200C5640,200,5520,200,5400,200C5280,200,5160,200,5040,200C4920,200,4800,200,4680,200C4560,200,4440,200,4320,200C4200,200,4080,200,3960,200C3840,200,3720,200,3600,200C3480,200,3360,200,3240,200C3120,200,3000,200,2880,200C2760,200,2640,200,2520,200C2400,200,2280,200,2160,200C2040,200,1920,200,1800,200C1680,200,1560,200,1440,200C1320,200,1200,200,1080,200C960,200,840,200,720,200C600,200,480,200,360,200C240,200,120,200,60,200L0,200Z"></path>
            </svg>
        </article>
    </section>

    <footer>
		<div class="container-xl">
            <div class="row justify-content-between">
                <div class="col-md-4 text-white">
                    <figure class="pb-2">
                        <img src="img/logo.png" alt="" class="w-100 h-100">
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
                    <form action="">
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
                            <textarea name="" id="" cols="30" rows="4" class="form-control" placeholder="Escribe tu mensaje aquí"></textarea>
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

	<script type="text/javascript" src="owl-carousel/owl.carousel.min.js"></script>
	<!-- <script type="text/javascript" src="{{ asset('public/owlcarousel/owl.carousel.min.js') }}"></script> -->
	<script type="text/javascript">
		$(`.header-img`).owlCarousel({
			loop:true,
		    margin:0,
		    nav:false,
		    autoplay:true,
		    autoplayTimeout:6000,
		    autoplayHoverPause:false,
		    responsive:{
		        0:{ items:1 },
		        1000:{ items:1 }
		    }
		});
		$(`.offers`).owlCarousel({
			loop:true,
		    margin:0,
		    nav:false,
		    autoplay:false,
		    autoplayTimeout:10000,
		    autoplayHoverPause:false,
		    responsive:{
		        0:{ items:1 },
		        500: { items: 2},
		        1000:{ items:3 }
		    }
		});
		$(`.categories`).owlCarousel({
			loop:true,
		    margin:0,
		    nav:false,
		    autoplay:false,
		    autoplayTimeout:10000,
		    autoplayHoverPause:false,
		    responsive:{
		        0:{ items:1 },
		        500: { items: 3},
		        1000:{ items:6 }
		    }
		});
        $(`.clints`).owlCarousel({
            loop:true,
            margin:20,
            nav:false,
            autoplay:false,
            autoplayTimeout:10000,
            autoplayHoverPause:false,
            responsive:{
                0:{ items:1 },
                500: { items: 2},
                1000:{ items:2 }
            }
        });
	</script>
</body>
</html>