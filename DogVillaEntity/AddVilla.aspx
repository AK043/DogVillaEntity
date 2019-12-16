<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddVilla.aspx.cs" Inherits="DogVillaEntity.AddVilla" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    
    <div class="main">
 	<div class="top-box">
	  <div class="wrap">
		 <div class="content-top">
		 	    <div class="contact-left">
						<h2>location</h2>
						<p>Follow Us</p>
						<div class="contact-left-grid">
							<div class="contact-left-grid-pic">
								<img src="images/fb.png" title="facebook">
							</div>
							<div class="contact-left-grid-info">
								<h5>www.facebook.com</h5>
								
							</div>
							<div class="clear"> </div>
						</div>
						<div class="contact-left-grid">
							<div class="contact-left-grid-pic">
								<img src="images/tw.png" title="twitter">
							</div>
							<div class="contact-left-grid-info">
								<h5>www.twitter.com</h5>
								
							</div>
							<div class="clear"> </div>
						</div>
						<div class="contact-left-grid">
							<div class="contact-left-grid-pic">
								<img src="images/rss.png" title="rss">
							</div>
							<div class="contact-left-grid-info">
								<h5>www.rss.com</h5>
								
							</div>
							<div class="clear"> </div>
						</div>
						
					</div>
					<div class="contact-right">
						<h2>Add New Villa</h2>
						<div class="contact-form">
							
                               <asp:TextBox ID="txtName" name="txtName" runat="server"  class="textbox" value="Name:" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}"></asp:TextBox>

                           <asp:TextBox ID="txtPrice" name="txtPrice" runat="server"  class="textbox" value="Price:" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}"></asp:TextBox>

                             <asp:TextBox ID="txtSize" name="txtName" runat="server"  class="textbox" value="Size:" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}"></asp:TextBox>


                            <asp:Button ID="btnSubmit" runat="server" Text="Add Villa " OnClick="btnSubmit_Click" />	

							
						<h1 id="rslt" runat="server"></h1>	

						</div>
					</div>
					<div class="clear"> </div>
				</div>
		   </div>
	   </div>
	</div>


</asp:Content>
