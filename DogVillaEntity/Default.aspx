﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DogVillaEntity._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<div class="main">
 	<div class="top-box">
	  <div class="wrap">
		 <div class="content-top">
			<div class="section group">
				<div class="col_1_of_3 span_1_of_3">
					<div class="grid_4 alpha vline">
							
							<div class="thumb-pad1 tp1">
					           <div class="thumbnail clearfix">
				                <figure>
									<img src="images/pic.jpg" alt=""/><em></em>
				                </figure>
					          </div>
			       			 </div>
			       		 <div class="clear"></div>
				         <div class="more1">
				        
				        </div>
					</div>
				</div>
				<div class="col_1_of_3 span_1_of_3">
					<div class="grid_4 alpha vline">
							
							<div class="thumb-pad1 tp1">
					           <div class="thumbnail clearfix">
				                <figure>
									<img src="images/pic1.jpg" alt=""/><em></em>
				                </figure>
					          </div>
			       			 </div>
			       		 <div class="clear"></div>
				         <div class="more1">
				          	
				        </div>
					</div>
				</div>
				<div class="col_1_of_3 span_1_of_3">
					<div class="grid_4 alpha vline">
						
							<div class="thumb-pad1 tp1">
			          <div class="thumbnail clearfix">
		                 <figure>
								 	<img src="images/pic2.jpg" alt=""/><em></em>
		                	  </figure>
			          </div>
			        </div>
			        <div class="clear"></div>
			         <div class="more1">
			          
			        </div>
				</div>
				</div>
				<div class="clear"></div> 
			</div>
		</div>
	   </div>
	</div>
	<div class="content-middle">
		<div class="wrap">
			<h5><span>Our</span> Gallery</h5>
		   <div class="container">
			<ul id="filters" class="clearfix">
				<li><span class="filter active" data-filter="app card icon logo web">Categorie1</span></li>
				<li><span class="filter" data-filter="app">Categorie2</span></li>
				<li><span class="filter" data-filter="card">Categorie3</span></li>
				<li><span class="filter" data-filter="web">Categorie4</span></li>
			</ul>
			<div class="clear"></div>
		    <div id="portfoliolist" style="     " class="">
				<div class="portfolio logo1 mix_all" data-cat="logo" style=" ">
					<div class="portfolio-wrapper">	
						<div class="gallery">				
						<a href="images/t-pic3.jpg" class="flipLightBox-1">
							<img src="images/pic3.jpg" alt="Image 2" style="top: 0px;">
						</a>
						</div>
					</div>
				</div>				
				<div class="portfolio app mix_all" data-cat="app" style="  display: inline-block; opacity: 1;">
					<div class="portfolio-wrapper">	
						<div class="gallery">		
							<a href="images/t-pic4.jpg" class="flipLightBox-2">
								<img src="images/pic4.jpg" alt="Image 2" style="top: 0px;">
							</a>
						</div>
					</div>
				</div>		
				<div class="portfolio web mix_all" data-cat="web" style="  display: inline-block; opacity: 1;">
					<div class="portfolio-wrapper">	
						<div class="gallery">						
						<a href="images/t-pic5.jpg" class="flipLightBox-3">
							<img src="images/pic5.jpg" alt="Image 2" style="top: 0px;">
						</a>
						</div>
					</div>
				</div>				
				<div class="portfolio card mix_all" data-cat="card" style="  display: inline-block; opacity: 1;">
					<div class="portfolio-wrapper">	
						<div class="gallery">			
						<a href="images/t-pic6.jpg" class="flipLightBox-4">
							<img src="images/pic6.jpg" alt="Image 2" style="top: 0px;">
						</a>
						</div>
					</div>
				</div>	
				<div class="portfolio app mix_all" data-cat="app" style="  display: inline-block; opacity: 1;">
					<div class="portfolio-wrapper">
						<div class="gallery">			
						<a href="images/t-pic7.jpg" class="flipLightBox-4">
							<img src="images/pic7.jpg" alt="Image 2" style="top: 0px;">
						</a>
						</div>
					</div>
				</div>			
				<div class="portfolio card mix_all" data-cat="card" style="  display: inline-block; opacity: 1;">
					<div class="portfolio-wrapper">	
						<div class="gallery">			
						<a href="images/t-pic8.jpg" class="flipLightBox-4">
							<img src="images/pic8.jpg" alt="Image 2" style="top: 0px;">
						</a>
						</div>
					</div>
				</div>	
				<div class="portfolio card mix_all" data-cat="card" style="  display: inline-block; opacity: 1;">
					<div class="portfolio-wrapper">	
						<div class="gallery">			
						<a href="images/t-pic9.jpg" class="flipLightBox-4">
							<img src="images/pic9.jpg" alt="Image 2" style="top: 0px;">
						</a>
						</div>
					</div>
				</div>	
				<div class="portfolio logo1 mix_all" data-cat="logo" style=" ">
					<div class="portfolio-wrapper">	
						<div class="gallery">			
						<a href="images/t-pic10.jpg" class="flipLightBox-4">
							<img src="images/pic10.jpg" alt="Image 2" style="top: 0px;">
						</a>
						</div>
					</div>
				</div>																																							
		</div>
	<script type="text/javascript" src="js/jquery.mixitup.min.js"></script>
	<script type="text/javascript">
	$(function () {
		
		var filterList = {
		
			init: function () {
			
				// MixItUp plugin
				// http://mixitup.io
				$('#portfoliolist').mixitup({
					targetSelector: '.portfolio',
					filterSelector: '.filter',
					effects: ['fade'],
					easing: 'snap',
					// call the hover effect
					onMixEnd: filterList.hoverEffect()
				});				
			
			},
			
			hoverEffect: function () {
			
				// Simple parallax effect
				$('#portfoliolist .portfolio').hover(
					function () {
						$(this).find('.label').stop().animate({bottom: 0}, 200, 'easeOutQuad');
						$(this).find('img').stop().animate({top: -30}, 500, 'easeOutQuad');				
					},
					function () {
						$(this).find('.label').stop().animate({bottom: -40}, 200, 'easeInQuad');
						$(this).find('img').stop().animate({top: 0}, 300, 'easeOutQuad');								
					}		
				);				
			
			}

		};
		
		// Run the show!
		filterList.init();
		
		
	});	
	</script>
	</div>
   </div>
   </div>
  


   </div>


</asp:Content>
