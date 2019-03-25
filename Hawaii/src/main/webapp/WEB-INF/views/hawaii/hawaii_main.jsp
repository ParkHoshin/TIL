<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="jumbotron text-center">
  
  <div class="container" style="padding: 0; margin: 0; width: 100%; height: 100%;">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <!-- <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol> -->
 

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="${ pageContext.request.contextPath }/resources/image/하와이_4k.jpg" alt="Los Angeles" style="width: 100%;">
        <div class="carousel-caption">
        </div>
      </div>

      <div class="item">
        <img src="${ pageContext.request.contextPath }/resources/image/라나이_4k.jpg" alt="Chicago" style="width:100%;">
        <div class="carousel-caption">
        </div>
      </div>
    
  
    </div>

    <!-- Left and right controls -->
    <!-- <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a> -->
  </div>
</div>
  
</div>





<!-- Container (Services Section) -->
<div id="services" class="container-fluid text-center" 
			 style="background-image: url('${ pageContext.request.contextPath }/resources/image/배경1.jpg'); background-repeat: no-repeat;">
  <h1>하와이 둘러보기</h1>
  <br>
  <div class="row slideanim" >
    <div class="col-sm-4">
      <a data-toggle="modal" data-target="#big_modal">
	      <!-- <span class="glyphicon glyphicon-off logo-small"></span> -->
	      <img src="${ pageContext.request.contextPath }/resources/image/이모티콘 (1).png" class="im">
	      <h3>빅 아일랜드</h3>
	      <p>하와이 아일랜드는 하와이 제도에서 가장 크고 제일 어린 섬입니다.</p>
      </a>
    </div>
    <div class="col-sm-4">
      <a data-toggle="modal" data-target="#kauai_modal">
	      <!-- <span class="glyphicon glyphicon-heart logo-small"></span> -->
	      <img src="${ pageContext.request.contextPath }/resources/image/이모티콘 (2).png"  class="im">
	      <h3>카우아이</h3>
	      <p>카우아이의 별명은 ‘가든 아일랜드’ 입니다.</p>
      </a>
    </div>
    <div class="col-sm-4">
      <a data-toggle="modal" data-target="#oahu_modal">
	     <!-- <span class="glyphicon glyphicon-lock logo-small"></span> -->
	     <img src="${ pageContext.request.contextPath }/resources/image/이모티콘 (3).png"  class="im">
	     <h3>오아후</h3>
	     <p>'만남의 장소'라는 별명이 무색하지 않은 오아후로 여행을 떠나보세요.</p>
      </a>
    </div>
  </div>
  <br><br>
  <div class="row slideanim">
    <div class="col-sm-4">
      <a data-toggle="modal" data-target="#molokai_modal">
	     <!-- <span class="glyphicon glyphicon-leaf logo-small"></span> -->
	     <img src="${ pageContext.request.contextPath }/resources/image/이모티콘 (4).png"  class="im">
	     <h3>몰로카이</h3>
	     <p>하와이의 과거가 살아 있는 섬 고유의 아웃도어 모험을 즐겨보세요!</p>
      </a>
    </div>
    <div class="col-sm-4">
      <a data-toggle="modal" data-target="#lanai_modal">
	      <!-- <span class="glyphicon glyphicon-certificate logo-small"></span> -->
	      <img src="${ pageContext.request.contextPath }/resources/image/이모티콘 (5).png"  class="im">
	      <h3>라나이</h3>
	      <p>여행자에게 더할 나위 없이 매력적인 섬입니다.</p>
      </a>
    </div>
    <div class="col-sm-4">
      <a data-toggle="modal" data-target="#maui_modal">
	      <!--  <span class="glyphicon glyphicon-wrench logo-small"></span> -->
	      <img src="${ pageContext.request.contextPath }/resources/image/이모티콘 (6).png"  class="im">
	      <h3 style="color:#303030;">마우이</h3>
	      <p>계곡의 섬'이라 불리는 하와이 제도에서 두 번째로 큰 섬입니다. </p>
      </a>
    </div>
  </div>
</div>


<!-- big Modal -->
<div class="modal fade" id="big_modal" role="dialog">
  <div class="modal-dialog">
  
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">    	
        <button type="button" class="close" data-dismiss="modal">×</button>
        <img src="${ pageContext.request.contextPath }/resources/image/빅아일랜드.PNG"
      	 alt="wale" style="width:100%">
      </div>
       <div class="modal-body">
        <p>big</p>
      </div>
      <div class="modal-footer">
        <p>
        	<a href="#">자세히보기</a>
        </p>
      </div>
    </div>
  </div>
</div>

<!-- kauai Modal -->
<div class="modal fade" id="kauai_modal" role="dialog">
  <div class="modal-dialog">
  
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">      	
        <button type="button" class="close" data-dismiss="modal">×</button>
        <img src="${ pageContext.request.contextPath }/resources/image/카우아이.PNG"
      	 alt="wale" style="width:100%">
      </div>
       <div class="modal-body">
        <p>kauai</p>
      </div>
      <div class="modal-footer">      
        <p>
        	<a href="#">자세히보기</a>
        </p>
        </div>
    </div>
  </div>
</div>

<!-- oahu Modal -->
<div class="modal fade" id="oahu_modal" role="dialog">
  <div class="modal-dialog">
  
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">      	
        <button type="button" class="close" data-dismiss="modal">×</button>
        <img src="${ pageContext.request.contextPath }/resources/image/오아후.PNG"
      	 alt="wale" style="width:100%">
      </div>
       <div class="modal-body">
        <p>oahu</p>
      </div>
      <div class="modal-footer">        
        <p>
        	<a href="#">자세히보기</a>
        </p>
      </div>
    </div>
  </div>
</div>

<!-- molokai Modal -->
<div class="modal fade" id="molokai_modal" role="dialog">
  <div class="modal-dialog">
  
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">      	
        <button type="button" class="close" data-dismiss="modal">×</button>
        <img src="${ pageContext.request.contextPath }/resources/image/몰로카이.PNG"
      	 alt="wale" style="width:100%">
      </div>
       <div class="modal-body">
        <p>molokai</p>
      </div>
      <div class="modal-footer">       
        <p>
        	<a href="#">자세히보기</a>
        </p>
      </div>
    </div>
  </div>
</div>

<!-- lanai Modal -->
<div class="modal fade" id="lanai_modal" role="dialog">
  <div class="modal-dialog">
  
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">    	
        <button type="button" class="close" data-dismiss="modal">×</button>
        <img src="${ pageContext.request.contextPath }/resources/image/라나이.PNG"
      	 alt="wale" style="width:100%">
      </div>
       <div class="modal-body">
        <p>lanai</p>
      </div>
      <div class="modal-footer">       
        <p>
        	<a href="#">자세히보기</a>
        </p>
      </div>
    </div>
  </div>
</div>

<!-- maui Modal -->
<div class="modal fade" id="maui_modal" role="dialog">
  <div class="modal-dialog">
  
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">    	
        <button type="button" class="close" data-dismiss="modal">×</button>
        <img src="${ pageContext.request.contextPath }/resources/image/마우이.PNG"
      	 alt="wale" style="width:100%">
      </div>
       <div class="modal-body">
        <p>maui</p>
      </div>
      <div class="modal-footer">        
        <p>
        	<a href="#">자세히보기</a>
        </p>
      </div>
    </div>
  </div>
</div>


<!-- Container (About Section) -->
<div id="about" class="container-fluid"
		style="background-image: url('${ pageContext.request.contextPath }/resources/image/하와이날씨.jpg'); background-repeat: no-repeat;">
  <div class="row">
    <div class="col-sm-8">
      <h1 style="color: white; font-size: 30pt; font-weight: bold;">하와이의 날씨</h1><br>
      <div class="weather_city">
	      <form>
	      	<input type="hidden" name="city" value="lihue">
	      	<input type="button" value="카우아이" onclick="weather(this.form);">
	      </form>
      </div>
      <div class="weather_city">
	      <form>
	      	<input type="hidden" name="city" value="honolulu">
	      	<input type="button" value="오아후" onclick="weather(this.form);">
	      </form>
	  </div>
	  <div class="weather_city">
	      <form>
	      	<input type="hidden" name="city" value="kaunakakai">
	      	<input type="button" value="몰로카이" onclick="weather(this.form);">
	      </form>
      </div>
      <div class="weather_city">
	      <form>
	      	<input type="hidden" name="city" value="lanai">
	      	<input type="button" value="라나이" onclick="weather(this.form);">
	      </form>
      </div>
      <div class="weather_city">
	      <form>
	      	<input type="hidden" name="city" value="kahului">
	      	<input type="button" value="마우이" onclick="weather(this.form);">
	      </form>
      </div>
      <div class="weather_city">
	      <form>
	      	<input type="hidden" name="city" value="hiro">
	      	<input type="button" value="빅아일랜드" onclick="weather(this.form);">
	      </form>
      </div>
      <table id="weather_table" class="container">
      	<tr>
      		<th colspan="5" id="land_city" style="background: #1133dd33;"></th>
      	</tr>
      	<tr>
      		<th>현재온도</th>
      		<th>현재습도</th>
      		<th>날씨</th>
      		<th>바람</th>
      		<th>구름</th>
      	</tr>
      	<tr>
      		<td id="current_temp"></td>
      		<td id="current_humidity"></td>
      		<td><img id="current_weather" src=""></td>
      		<td id="current_wind"></td>
      		<td id="current_cloud"></td>
      	</tr>
      </table>
    </div>
    <div class="col-sm-4">
      <img id="weather_img" src="${ pageContext.request.contextPath }/resources/image/aloha.png">
    </div>
  </div>
</div>


<!-- Container (Portfolio Section) -->
<%-- <div id="portfolio" class="container-fluid text-center bg-white">
  <h2>지도</h2><br>
  <h4>What we have created</h4>
  <div class="row text-center slideanim">
  
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="${ pageContext.request.contextPath }/resources/image/빅아일랜드.PNG" width="400" height="300">
      </div>
    </div>
    
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="${ pageContext.request.contextPath }/resources/image/오아후.PNG" width="400" height="300">
       
      </div>
    </div>
    
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="${ pageContext.request.contextPath }/resources/image/마우이.PNG" width="400" height="300">
        
      </div>
    </div>
    
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="${ pageContext.request.contextPath }/resources/image/라나이.PNG" width="400" height="300">
        
      </div>
    </div>
    
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="${ pageContext.request.contextPath }/resources/image/몰로카이.PNG" width="400" height="300">
       
      </div>
    </div>
    
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="${ pageContext.request.contextPath }/resources/image/카우아이.PNG" width="400" height="300">
        
      </div>
    </div>
    
    
    
  </div><br>
  
  <h2>What our customers say</h2>
  <div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <h4>"This company is the best. I am so happy with the result!"<br><span>Michael Roe, Vice President, Comment Box</span></h4>
      </div>
      <div class="item">
        <h4>"One word... WOW!!"<br><span>John Doe, Salesman, Rep Inc</span></h4>
      </div>
      <div class="item">
        <h4>"Could I... BE any more happy with this company?"<br><span>Chandler Bing, Actor, FriendsAlot</span></h4>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div> --%>

<div class="container-fluid bg-grey"
		style="background-image: url('${ pageContext.request.contextPath }/resources/image/하와이전경.jpg'); background-repeat: no-repeat;">
  <div class="row">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-globe logo slideanim"></span>
    </div>
    <div class="col-sm-8">
      <h2>Our Values</h2><br>
      <h4><strong>MISSION:</strong> Our mission lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</h4><br>
      <p><strong>VISION:</strong> Our vision Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
  </div>
</div>



<!-- Container (Pricing Section) -->
<div id="food" class="container-fluid">
  <div class="text-center">
    <h1>FOOD</h1>
  </div>
  <div class="row slideanim">
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h2>KAUAI</h2>
        </div>
        <div class="panel-body">
        <img src="${ pageContext.request.contextPath }/resources/image/.jpg"
        	 alt="wale" style="width:100%"><br>
        <button class="btn bg-white" data-toggle="modal" data-target="#myModal">introduce</button>  
        </div>
        <div class="panel-footer">
          
        </div>
      </div>      
    </div>     
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h2>OAHU</h2>
        </div>
        <div class="panel-body">
        <img src="${ pageContext.request.contextPath }/resources/image/.jpg"
        	 alt="wale" style="width:100%"><br>
        <button class="btn bg-white" data-toggle="modal" data-target="#myModal1">introduce</button>
          
        </div>
        <div class="panel-footer">
          
        </div>
      </div>      
    </div>      
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h2>MOLOKAI</h2>
        </div>
        <div class="panel-body">
        <img src="${ pageContext.request.contextPath }/resources/image/.jpg"
        	 alt="wale" style="width:100%"><br>
        <button class="btn bg-white" data-toggle="modal" data-target="#myModal2">introduce</button>
          
        </div>
        <div class="panel-footer">
         
        </div>
      </div>      
    </div>    
  </div>
</div>

 <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
        	<img src="${ pageContext.request.contextPath }/resources/image/.jpg"
        	 alt="wale" style="width:100%">
          <button type="button" class="close" data-dismiss="modal">×</button>
          <h4><span class="glyphicon glyphicon-apple"></span>introduce</h4>
        </div>
         <div class="modal-body">
          <p>kauai food</p>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
            <span class="glyphicon glyphicon-remove"></span>
          </button>
          <p>Restaurant<a href="https://meritagecollection.com/koa-kea/dining/red-salt?NCK=8442078882&utm_campaign=GoHawaii&utm_content=LM%2520Button&utm_medium=RedSaltListing&utm_source=GoHawaii">link</a></p>
        </div>
      </div>
    </div>
  </div>
  
  <!-- Modal1 -->
  <div class="modal fade" id="myModal1" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
        <img src="${ pageContext.request.contextPath }/resources/image/.jpg"
        	 alt="wale" style="width:100%">
          <button type="button" class="close" data-dismiss="modal">×</button>
          <h4><span class="glyphicon glyphicon-apple"></span>introduce</h4>
        </div>
         <div class="modal-body">
          <p>oahu food</p>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
            <span class="glyphicon glyphicon-remove"></span>
          </button>
          <p>Restaurant<a href="https://www.bubbagump.com/index.asp">link</a></p>
        </div>
      </div>
    </div>
  </div>
  
  <!-- Modal2 -->
  <div class="modal fade" id="myModal2" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
        <img src="${ pageContext.request.contextPath }/resources/image/.jpg"
        	 alt="wale" style="width:100%">
          <button type="button" class="close" data-dismiss="modal">×</button>
          <h4><span class="glyphicon glyphicon-apple"></span>introduce</h4>
        </div>
         <div class="modal-body">
          <p>big island food</p>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
            <span class="glyphicon glyphicon-remove"></span>
          </button>
          <p>Restaurant<a href="http://maigrille.com/">link</a></p>
        </div>
      </div>
    </div>
  </div>

<!-- Container (Contact Section) -->
<div id="contact" class="container-fluid bg-grey">
  <h2 class="text-center">CONTACT</h2>
  <div class="row">
    <div class="col-sm-5">
      <p>Contact us and we'll get back to you within 24 hours.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> Chicago, US</p>
      <p><span class="glyphicon glyphicon-phone"></span> +00 1515151515</p>
      <p><span class="glyphicon glyphicon-envelope"></span> myemail@something.com</p>
    </div>
    <div class="col-sm-7 slideanim">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-default pull-right" type="submit">Send</button>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Image of location/map -->
<img src="${ pageContext.request.contextPath }/resources/image/트와이스_우아하게.jpg" class="w3-image w3-greyscale-min" style="width:100%">
