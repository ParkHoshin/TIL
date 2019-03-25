<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com -->
  <title>Hawaii</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  
  
  <!-- 전제 Thema -->
  <style>
  body {
    font: 400 15px Lato, sans-serif;
    line-height: 1.8;
    color: #818181;
  }
  h2 {
    font-size: 24px;
    text-transform: uppercase;
    color: #303030;
    font-weight: 600;
    margin-bottom: 30px;
  }
  h4 {
    font-size: 19px;
    line-height: 1.375em;
    color: #303030;
    font-weight: 400;
    margin-bottom: 30px;
  }  
  .jumbotron {
    background-color: DodgerBlue;
    color: #fff;
    padding: 0;
    margin: 0;
    font-family: Montserrat, sans-serif;
  }
  .container-fluid {
    padding: 60px 50px;
  }
  .bg-grey {
    background-color: #f6f6f6;
  }
  .bg-blue{
  	background-color: #7989ff33;
  }
  .logo-small {
    color: #f4511e;
    font-size: 50px;
  }
  .logo {
    color: #f4511e;
    font-size: 200px;
  }
  .thumbnail {
    padding: 0 0 15px 0;
    border: none;
    border-radius: 0;
  }
  .thumbnail img {
    width: 100%;
    height: 100%;
    margin-bottom: 10px;
  }
  .carousel-control.right, .carousel-control.left {
    background-image: none;
    color: #f4511e;
  }
  .carousel-indicators li {
    border-color: #f4511e;
  }
  .carousel-indicators li.active {
    background-color: #f4511e;
  }
  .item h4 {
    font-size: 19px;
    line-height: 1.375em;
    font-weight: 400;
    font-style: italic;
    margin: 70px 0;
  }
  .item span {
    font-style: normal;
  }
  .panel {
    border: 1px solid #f4511e; 
    border-radius:0 !important;
    transition: box-shadow 0.5s;
  }
  .panel:hover {
    box-shadow: 5px 0px 40px rgba(0,0,0, .2);
  }
  .panel-footer .btn:hover {
    border: 1px solid #f4511e;
    background-color: #fff !important;
    color: #f4511e;
  }
  .panel-heading {
    color: #fff !important;
    background-color: #f4511e !important;
    padding: 25px;
    border-bottom: 1px solid transparent;
    border-top-left-radius: 0px;
    border-top-right-radius: 0px;
    border-bottom-left-radius: 0px;
    border-bottom-right-radius: 0px;
  }
  .panel-footer {
    background-color: white !important;
  }
  .panel-footer h3 {
    font-size: 32px;
  }
  .panel-footer h4 {
    color: #aaa;
    font-size: 14px;
  }
  .panel-footer .btn {
    margin: 15px 0;
    background-color: #f4511e;
    color: #fff;
  }
  .navbar {
    margin-bottom: 0;
    background-color: #1111ff33;
    z-index: 9999;
    border: 0;
    font-size: 12px !important;
    line-height: 1.42857143 !important;
    letter-spacing: 4px;
    border-radius: 0;
    font-family: Montserrat, sans-serif;
    font-weight: bold;
  }
  .navbar li a, .navbar .navbar-brand {
    color: #fff !important;
  }
  .navbar-nav li a:hover, .navbar-nav li.active a {
    color: DodgerBlue !important;
    background-color: #fff !important;
  }
  .navbar-default .navbar-toggle {
    border-color: transparent;
    color: #fff !important;
  }
  footer .glyphicon {
    font-size: 20px;
    margin-bottom: 20px;
    color: #f4511e;
  }
  .slideanim {visibility:hidden;}
  .slide {
    animation-name: slide;
    -webkit-animation-name: slide;
    animation-duration: 1s;
    -webkit-animation-duration: 1s;
    visibility: visible;
  }
  @keyframes slide {
    0% {
      opacity: 0;
      transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      transform: translateY(0%);
    }
  }
  @-webkit-keyframes slide {
    0% {
      opacity: 0;
      -webkit-transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      -webkit-transform: translateY(0%);
    }
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
    .btn-lg {
      width: 100%;
      margin-bottom: 35px;
    }
  }
  @media screen and (max-width: 480px) {
    .logo {
      font-size: 150px;
    }
  }
  
  /* 날씨css */ 
  #weather_table{
  	margin: auto;
  }
  #weather_table th{
  	background-color: #bf1d5577;
  	font-size: 35pt;
  	width: 250px;
  	text-align: center;
  	color: white;
  }  
  #weather_table td{
  	background-color: #bf1ddd77;
  	font-size: 35pt;
  	text-align: center;
  	color: white;
  }
  
  .modal{
  	margin: auto;
  	margin-top: 100px;
  }
  
  .weather_city{
  	display: inline-block;
  	font-size: 35pt;
  	margin: auto;
  	margin-bottom: 30px;
  }
  
  .weather_city input[type='button']{
  	background-color: #11111100; 
  	border: none;
  	color: white;
  	font-weight: bold;

  }
  
  .weather_city input[type='button']:hover{
  	color: #3333ff;
  	text-decoration: underline;
  }
  
  #weather_img{
  	width: 700px;
  }
  
  #current_weather{
  	width: 80px;
  }
  
  </style>
  
  <!-- 네비게이션바 -->
  <style>
body {
  font-family: "Lato", sans-serif;
}

.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #1111ffaa;/* #111; */
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: white;
  display: block;
  transition: 0.3s;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}

.im{
	width: 150px;
	height: 150px;
	margin: 20px;
}

</style>
  
  
  <script>
$(document).ready(function(){
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {
    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
    
    
    
    
  });
  
  $(window).scroll(function() {
    $(".slideanim").each(function(){
      var pos = $(this).offset().top;

      var winTop = $(window).scrollTop();
        if (pos < winTop + 600) {
          $(this).addClass("slide");
        }
    });
  });
})
</script>


<!-- /* 날씨api */ -->
<script type="text/javascript">

	var citys = ["lihue", "honolulu", "kaunakakai", "lanai", "kahului", "hiro"];

	var timer;
	
	var index=0;

	$(document).ready(function(){
	
		ha_weather();
		start_weather();
			
		function start_weather(){
			// 2초마다 한번씩 showNews()를 실행
			
				timer = setInterval(ha_weather,5000);

			
			//timer = setTimeout(showNews,2000); //<=2초후에 1회만 호출
		}

		
			
	});
	
	function weather(f){
				
	    var city = f.city.value;
	    
	    if(city == "lihue"){
	    	$("#land_city").html("카우아이 / 리후에");
	    }
	    
	    if(city == "honolulu"){
	    	$("#land_city").html("오아후 / 호놀룰루");
	    }
	    
	    if(city == "kaunakakai"){
	    	$("#land_city").html("몰로카이 / 카우나카카이");
	    }
	    
	    if(city == "lanai"){
	    	$("#land_city").html("라나이 / 라나이시티");
	    }
	    
	    if(city == "kahului"){
	    	$("#land_city").html("마우이 / 카훌루이");
	    }
	    
	    if(city == "hiro"){
	    	$("#land_city").html("빅아일랜드 / 힐로");
	    }
		
		var apiURI = "http://api.openweathermap.org/data/2.5/weather?q="+city+"&appid=0b6870563138bd246303a88b72f43738";
	    $.ajax({
	        url: apiURI,
	        dataType: "json",
	        type: "GET",
	        success: function(resp) {
	           /*  console.log(resp);
	            console.log("현재온도 : "+ (resp.main.temp- 273.15) );
	            console.log("현재습도 : "+ resp.main.humidity);
	            console.log("날씨 : "+ resp.weather[0].main );
	            console.log("상세날씨설명 : "+ resp.weather[0].description );
	            console.log("날씨 이미지 : "+ resp.weather[0].icon );
	            console.log("바람   : "+ resp.wind.speed );
	            console.log("나라   : "+ resp.sys.country );
	            console.log("도시이름  : "+ resp.name );
	            console.log("구름  : "+ (resp.clouds.all) +"%" ); */
	            
	            var main_temp = resp.main.temp - 273.15;
	            
	            /* console.log(main_temp); */
	            
	            var temp = Math.floor(main_temp);
	            
	            /* console.log(temp); */
	            
	            
	            $("#current_temp").html(temp + "°C");
	            $("#current_humidity").html(resp.main.humidity + "%");
	            $("#current_weather").html(resp.weather[0].main);
	            $("#current_wind").html(resp.wind.speed + "m/s");
	            $("#current_cloud").html((resp.clouds.all) +"%");
	            
	            
	        }
	    });
    
	}
	
	function ha_weather(){

	    var city = citys[index++];
	    	    
	    if(index==citys.length){
	    	index=0;
	    }
	    
	    if(city == "lihue"){
	    	$("#land_city").html("카우아이 / 리후에");
	    }
	    
	    if(city == "honolulu"){
	    	$("#land_city").html("오아후 / 호놀룰루");
	    }
	    
	    if(city == "kaunakakai"){
	    	$("#land_city").html("몰로카이 / 카우나카카이");
	    }
	    
	    if(city == "lanai"){
	    	$("#land_city").html("라나이 / 라나이시티");
	    }
	    
	    if(city == "kahului"){
	    	$("#land_city").html("마우이 / 카훌루이");
	    }
	    
	    if(city == "hiro"){
	    	$("#land_city").html("빅아일랜드 / 힐로");
	    }

		var apiURI = "http://api.openweathermap.org/data/2.5/weather?q="+city+"&appid=0b6870563138bd246303a88b72f43738";
	    $.ajax({
	        url: apiURI,
	        dataType: "json",
	        type: "GET",
	        success: function(resp) {
	           /*  console.log(resp);
	            console.log("현재온도 : "+ (resp.main.temp- 273.15) );
	            console.log("현재습도 : "+ resp.main.humidity);
	            console.log("날씨 : "+ resp.weather[0].main );
	            console.log("상세날씨설명 : "+ resp.weather[0].description );
	            console.log("날씨 이미지 : "+ resp.weather[0].icon );
	            console.log("바람   : "+ resp.wind.speed );
	            console.log("나라   : "+ resp.sys.country );
	            console.log("도시이름  : "+ resp.name );
	            console.log("구름  : "+ (resp.clouds.all) +"%" ); */
	            
	            var main_temp = resp.main.temp - 273.15;
	            
	            /* console.log(main_temp); */
	            
	            var temp = Math.floor(main_temp);
	            
	            /* console.log(temp); */
	            
	            
	            $("#current_temp").html(temp + "°C");
	            $("#current_humidity").html(resp.main.humidity + "%");
	            //$("#current_weather").html(resp.weather[0].main);
	            $("#current_wind").html(resp.wind.speed + "m/s");
	            $("#current_cloud").html((resp.clouds.all) +"%");
	            
	           
        		var imgURL = "http://openweathermap.org/img/w/" + resp.weather[0].icon + ".png";
        		$("#current_weather").attr("src", imgURL);
	            
	            
	        }
	    });
    
	}

</script>


<!-- 네비게이션바 -->
<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
</script>
  
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="list.do?manu=main">
     		<img src="${ pageContext.request.contextPath }/resources/image/aloha.png"
        	 alt="SUN" style="width:40%">
     </a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
     <ul class="nav navbar-nav navbar-right">
     <c:if test="${ empty user }">
        <li><a href="login_form.do">
        	<span class="glyphicon glyphicon-log-in"></span>Login</a></li>
      </c:if>
       <c:if test="${ not empty user }">
		 <li>${ user["name"] }님께서 접속하셨습니다
		   <a href="logout.do"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
		  </c:if>
		  
		<form class="navbar-form navbar-right" role="search">
        <div class="form-group input-group">
          <input type="text" class="form-control" placeholder="Search..">
          <span class="input-group-btn">
            <button class="btn btn-default" type="button">
              <span class="glyphicon glyphicon-search"></span>
            </button>
          </span>        
        </div>
      </form>
		  
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a class="dropdown-toggle" data-toggle="dropdown" href="#">ISLANDS
	        <span class="caret"></span></a>
	        <ul class="dropdown-menu bg-blue">
		      	<li><a href="list.do?menu=kauai">KAUAI</a></li>
		      	<li><a href="list.do?menu=oahu">OAHU</a></li>
		      	<li><a href="list.do?menu=molokai">MOLOKAI</a></li>
		      	<li><a href="list.do?menu=lanai">LANAI</a></li>
		      	<li><a href="list.do?menu=maui">MAUI</a></li>
		      	<li><a href="list.do?menu=big">BIG ISLAND</a></li>   
	    	</ul>
        </li>
    
        <li><a href="#food">FOOD</a></li>
        <li><a href="#activity">ACTIBITY</a></li>
        <ul class="nav navbar-nav navbar-right">
	        <li><a class="dropdown-toggle" data-toggle="dropdown" href="#">OSEAN
	        <span class="caret"></span></a>
	        <ul class="dropdown-menu bg-blue">
		      	<li><a href="warming.do">GLOBAL WARMING</a></li>
		      	<li><a href="animal.do">ANIMAL</a></li>
		      	<li><a href="polar.do">POLAR REGIONS</a></li>
    		</ul>
        	<li><a href="#contact">CONTACT</a></li>
      
      	</ul>
      	</ul>
   		</div>   		 
    </div>
</nav>

<c:if test="${ param.menu == 'main' || param.menu == null }">
	<%@ include file="hawaii_main.jsp" %>
</c:if>

<c:if test="${ param.menu == 'kauai' }">
	<%@ include file="kauai_main.jsp" %>
</c:if>

<c:if test="${ param.menu == 'lanai' }">
	<%@ include file="lanai_main.jsp" %>
</c:if>

<c:if test="${ param.menu == 'oahu' }">
	<%@ include file="oahu_main.jsp" %>
</c:if>

<c:if test="${ param.menu == 'big' }">
	<%@ include file="big_main.jsp" %>
</c:if>

<c:if test="${ param.menu == 'maui' }">
	<%@ include file="maui_main.jsp" %>
</c:if>

<c:if test="${ param.menu == 'molokai' }">
	<%@ include file="molokai_main.jsp" %>
</c:if>


<footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <h1>개발자</h1>
  <h3>김수현 박호신 이동호 황인주</h3>
</footer>



</body>
</html>