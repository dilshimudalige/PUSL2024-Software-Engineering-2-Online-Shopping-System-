<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <!-- Importing all ui libs -->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/pignose.layerslider.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <script src="js/simpleCart.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <script src="js/jquery.easing.min.js"></script>
    <script src='../../../../../../ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
    <script src="../../../../../../m.servedby-buysellads.com/monetization.js" type="text/javascript"></script>
</head>
<body style="background: #fff">
<body>
    <div class="header-top bg-main hidden-xs">
            <div class="container">
                <div class="top-bar left">
                    <ul class="horizontal-menu">
                        <li><a href="#"><i class="fa fa-envelope" aria-hidden="true"></i>greensuper777@gmail.com</a></li>
                        <li><a href="#">Free Shipping for all Order of Rs.1199</a></li>
                    </ul>
                </div>
                <div class="top-bar right">
                  
                    <ul class="horizontal-menu">
                        
                        <li><a href="customer-login.jsp" class="login-link"><i class="fa fa-user-circle-o"></i>Login/Register</a></li>
                    </ul>
                </div>
            </div>
        </div>
    <div class="ban-top" style="background: #52BE80 ">
        <div class="container" >
            <div class="top_nav_left">
                <nav class="navbar navbar-default">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed"
                                    data-toggle="collapse"
                                    data-target="#bs-example-navbar-collapse-1"
                                    aria-expanded="false">
                                <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                            </button>
                        </div>
                        <jsp:include page="header.jsp"></jsp:include>
                        </div>
                    </nav>
                </div>
                        
                <div class="top_nav_right" >
                    <div class="cart box_1" style="background: #145A32">
                        <a href="checkout.jsp"> 
                        <%
                            //Getting all cart details of the customer
                            ResultSet resultCount = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblcart where customer_id='" + session.getAttribute("id") + "'");
                            resultCount.next();
                            int count = resultCount.getInt(1);
                        %>
                        <h3>
                            <div class="total">
                                <i class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>
                                (
                                <%=count%>
                                items )
                            </div>
                        </h3>
                    </a>
                    <p>
                        <a href="javascript:;" class="simpleCart_empty" >My Cart</a>
                    </p>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
       <jsp:include page="HeroSlider.jsp"></jsp:include>
    <br/>
    <div class="biolife-service type01 biolife-service__type01 sm-margin-top-0 xs-margin-top-45px">
                        <b class="txt-show-01" >100%Nature</b>
                        <i class="txt-show-02" >Fresh Fruits</i>
                        <ul class="services-list">
                            <li>
                                <div class="service-inner color-reverse">
                                    <span class="number">1</span>
                                    <span ><box-icon name='party'></box-icon></span>
                                    <a class="srv-name" href="#">full stamped product</a>
                                </div>
                            </li>
                            <li>
                                <div class="service-inner color-reverse">
                                    <span class="number">2</span>
                                    <span class="fa fa-calendar-check-o "></span>
                                    <a class="srv-name" href="#">place and delivery on time</a>
                                </div>
                            </li>
                            <li>
                                <div class="service-inner color-reverse">
                                    <span class="number">3</span>
                                    <span class="biolife-icon icon-car"></span>
                                    <a class="srv-name" href="#">Free shipping in the city</a>
                                </div>
                            </li>
                        </ul>
                    </div>
    <div class="product-easy">
        <div class="container">
            <div class="container">
              <h2 style="font-size: 36px; font-weight: bold; text-align: left; color: green; text-transform: uppercase; margin-bottom: 2px;">
    Explore Our Collection
</h2>

            </div>
            <%
                ResultSet retriveProduct = DatabaseConnection.getResultFromSqlQuery("select * from tblproduct");
                while (retriveProduct.next()) {
            %>
            <form action="AddToCart" method="post">
                <div class="single-pro">
                    <div class="col-md-3 product-men" style="margin-top:13px">
                        <div style="border: 1px solid #ddd; border-radius: 15px; 
                             overflow: hidden; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">

    <div style="position: relative; overflow: hidden; border-bottom: 1px solid #ddd;">
        <input type="hidden" name="productId" value="<%=retriveProduct.getInt("id")%>">
        <img src="uploads/<%=retriveProduct.getString("image_name")%>" alt="Product Image" style="width: 100%; padding:10px; height: 200px; object-fit: cover; border-top-left-radius: 15px; border-top-right-radius: 15px;">
    </div>

    <div style="padding: 20px; text-align: left;">
        <h4 style="color: #333; margin: 0; font-size: 1.5em;">
            <a href="#" style="text-decoration: none; color:#3498db; font-weight: bold;">
                <%=retriveProduct.getString("name")%>
            </a>
        </h4>
        <h5 style="color: #777; margin: 10px 0;">
            Category: <%=retriveProduct.getString("product_category")%>
        </h5>
        <div class="info-product-price">
                                    <input type="hidden" name="price"
                                           value="<%=retriveProduct.getString("price")%>"> <input
                                           type="hidden" name="mrp_price"
                                           value="<%=retriveProduct.getString("mrp_price")%>"> <span
                                           class="item_price">Rs.<%=retriveProduct.getString("price")%> </span>
                                    <del><%=retriveProduct.getString("mrp_price")%> </del>
                                </div>
        <input type="submit" value="Add to Cart" class="btn btn-success" onclick="return confirm('Are you sure you want to add this item to the cart?'); background-color: #3498db; color: #fff; border: none; padding: 15px 20px; border-radius: 8px; cursor: pointer; font-size: 1.2em;">
    </div>
</div>

                    </div>
                </div>
            </form>
            <%
                }
            %>
        </div>
        
    </div>
       
        <div style="background-color: #f9f9f9; padding: 40px; text-align: center;">

    <h2 style="color: #333; margin-bottom: 20px;">Subscribe to Our Newsletter</h2>

    <form action="#" method="post" style="max-width: 400px; margin: 0 auto;">

        <div style="position: relative; margin-bottom: 20px;">
            <input type="email" name="email" placeholder="Your Email" style="width: 100%; padding: 15px; border: 1px solid #ddd; border-radius: 5px; outline: none;">
            <button type="submit" style="position: absolute; right: 10px; top: 50%; transform: translateY(-50%); background-color: #3498db; color: #fff; border: none; padding: 10px 15px; border-radius: 5px; cursor: pointer;">
              
                <i class="fa fa-envelope" aria-hidden="true" style="width: 20px; height: 20px; margin-right: 5px;"></i>
                Subscribe
            </button>
        </div>

    </form>

    <div style="display: flex; justify-content: center; align-items: center;">
 

        <div style="text-align: left;">
            <p style="color: #777;">Stay updated with our latest news and promotions. Don't miss out!</p>
            <ul style="list-style: none; padding: 0;">
                <li style="margin-bottom: 10px;">
  <i class="fa fa-envelope" aria-hidden="true" style="width: 20px; height: 20px; margin-right: 5px;"></i>                    Exclusive offers delivered to your inbox
                </li>
                <li style="margin-bottom: 10px;">
  <i class="fa fa-calendar-o" aria-hidden="true" style="width: 20px; height: 20px; margin-right: 5px;"></i>                    Early access to events and sales
                </li>
            </ul>
        </div>
    </div>

</div>

    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>