<%-- 
    Document   : HeroSlider
    Created on : Jan 4, 2024, 9:23:55 AM
    Author     : Deelaka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Cairo:400,600,700&amp;display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:600&amp;display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400i,700i" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://fonts.googleapis.com/css?family=Ubuntu&amp;display=swap" rel="stylesheet">
    <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png" />
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/animate.min.css">
    <link rel="stylesheet" href="/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/nice-select.css">
    <link rel="stylesheet" href="/css/slick.min.css">
    <link rel="stylesheet" href="/css/temp.css">
    <link rel="stylesheet" href="/css/main-color03-green.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css"/>

<body>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
 <div class="main-slide block-slider nav-change">
                <ul class="biolife-carousel" style="color: white" >
                    <li>
                     <div style="background-image: url('/assets/img/banner01.jpg'); background-size: cover;" class="slide-contain slider-opt03__layout02 slide_animation type_02">
                            <div class="media background-geen-01" ></div>
                            <div class="text-content" style="margin-left: 100px">
                                <i class="first-line">Pomegranate</i>
                                <h3 class="second-line">Vegetables 100% Organic</h3>
                                <p class="third-line">A blend of freshly squeezed green apple & fruits</p>
                                <p class="buttons">
                                    <a href="products.jsp" class="btn btn-bold">Shop now</a>
                                 
                                </p>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div style="background-image: url('/assets/img/banner02.jpg'); background-size: cover;" class="slide-contain slider-opt03__layout02 slide_animation type_02">
                            <div class="media background-geen-02"></div>
                            <div class="text-content">
                                 <i class="first-line">Fresh Mango</i>
                <h3 class="second-line">Tropical Fruits Delight</h3>
                <p class="third-line">Discover the taste of organic mangoes and tropical fruits</p>
                <p class="buttons">
                    <a href="products.jsp" class="btn btn-bold">Shop now</a>
                </p>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div style="background-image: url('/assets/img/header-bg.jpg'); background-size: cover;" class="slide-contain slider-opt03__layout02 slide_animation type_02">
                            <div class="media background-geen-01"></div>
                            <div class="text-content">
                                <i class="first-line">Healthy Greens</i>
                <h3 class="second-line">Fresh Organic Vegetables</h3>
                <p class="third-line">Explore a variety of organic greens for a healthier lifestyle</p>
                <p class="buttons">
                    <a href="products.jsp" class="btn btn-bold">Shop now</a>
                    
                </p>
                            </div>
                        </div>
                    </li>
                
                        
                   
                </ul>
            </div>
    <script>
    $(document).ready(function(){
        $('.biolife-carousel').slick({
            arrows: false,
            dots: false,
            slidesMargin: 0,
            slidesToShow: 1,
            infinite: true,
            speed: 800,
            autoplay: true,  // Add this line for autoplay
            autoplaySpeed: 4000,  // Set the autoplay speed in milliseconds (e.g., 5000ms or 5s)
        });
    });
</script>

</body>
</html> 

