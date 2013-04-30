<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Copy of homepagecontent_slides01.aspx.cs" Inherits="webpages_content" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script> 
    <script src="http://code.jquery.com/jquery-migrate-1.1.1.js"></script>
    <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>  
    <script type="text/javascript" src="js/datetimepicker.js">
    //Date Time Picker script- by TengYong Ng of http://www.rainforestnet.com
    //Script featured on JavaScript Kit (http://www.javascriptkit.com)
    //For this script, visit http://www.javascriptkit.com 
    </script>
    <script>
        jQuery.noConflict();
        jQuery(document).ready(function ($) {
            $("#tabs").tabs().addClass("ui-tabs-vertical ui-helper-clearfix");
            $("#tabs li").removeClass("ui-corner-top").addClass("ui-corner-left");
        });
    </script>
   
<script type="text/javascript" src="slide_js/jquery-1.2.6.min.js"></script>
<script type="text/javascript" src="slide_js/jquery-easing-1.3.pack.js"></script>
<script type="text/javascript" src="slide_js/jquery-easing-compatibility.1.2.pack.js"></script>
<script type="text/javascript" src="slide_js/coda-slider.1.1.1.pack.js"></script>

     <script type="text/javascript" src="slide_js/try.js"></script>
<script type="text/javascript">
    var theInt = null;
    var $crosslink, $navthumb;
    var curclicked = 0;

    theInterval = function (cur) {
        clearInterval(theInt);

        if (typeof cur != 'undefined')
            curclicked = cur;

        $crosslink.removeClass("active-thumb");
        $navthumb.eq(curclicked).parent().addClass("active-thumb");
        $(".stripNav ul li a").eq(curclicked).trigger('click');

        theInt = setInterval(function () {
            $crosslink.removeClass("active-thumb");
            $navthumb.eq(curclicked).parent().addClass("active-thumb");
            $(".stripNav ul li a").eq(curclicked).trigger('click');
            curclicked++;
            if (6 == curclicked)
                curclicked = 0;

        }, 3000);
    };
    $(function () {

        $("#main-photo-slider").codaSlider();

        $navthumb = $(".nav-thumb");
        $crosslink = $(".cross-link");

        $navthumb
        .click(function () {
            var $this = $(this);
            theInterval($this.parent().attr('href').slice(1) - 1);
            return false;
        });

        theInterval();
    });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div id="searchpad">
    <div id="product_content_box">
<div id="tabs">
  <ul>
    <li><a href="#tabs-1">Flight Tickets</a></li>
    <li><a href="#tabs-2">Book Hotels</a></li>
    <li><a href="#tabs-3">Rent Cars</a></li>
  </ul>
  <div id="tabs-1">
    <h2>Finding Flight Tickets</h2>
    <div id="flight">
        <asp:Label ID="Label1" runat="server" Text="From"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
        <asp:Label ID="Label2" runat="server" Text="To"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
            <br />
        <asp:Label ID="Label3" runat="server" Text="Depart:"></asp:Label>
        <input id="depart" type="text" size="25"/><a href="javascript:NewCal('depart','ddmmyyyy')">
            <img src="js/cal.gif" width="16" height="16" border="0" alt="Pick a date"/></a>
        
        <asp:Label ID="Label4" runat="server" Text="Return:"></asp:Label>
     
        <input id="return" type="text" size="25"/><a href="javascript:NewCal('return','ddmmyyyy')">
            <img src="js/cal.gif" width="16" height="16" border="0" alt="Pick a date"/></a>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Seat Qty"></asp:Label>
        <asp:DropDownList ID="DropDownList3" runat="server">
        </asp:DropDownList>
        <br />   
        <br />
        <asp:Button ID="Button1" runat="server" Text="Search" />
      </div>
  </div>
  <div id="tabs-2">
    <h2>Book Hotels</h2>
       <div id="hotels">
           <asp:Label ID="Label9" runat="server" Text="Country"></asp:Label>
           <asp:DropDownList ID="DropDownList7" runat="server">
        </asp:DropDownList>
           <asp:Label ID="Label10" runat="server" Text="City"></asp:Label>
           <asp:DropDownList ID="DropDownList8" runat="server">
        </asp:DropDownList>
           <br />
           <asp:Label ID="Label11" runat="server" Text="Check In"></asp:Label>
           <input id="checkin" type="text" size="25"/><a href="javascript:NewCal('checkin','ddmmyyyy')">
            <img src="js/cal.gif" width="16" height="16" border="0" alt="Pick a date"/></a>
           <br />
           <asp:Label ID="Label12" runat="server" Text="Check Out"></asp:Label>
           <input id="checkout" type="text" size="25"/><a href="javascript:NewCal('checkout','ddmmyyyy')">
            <img src="js/cal.gif" width="16" height="16" border="0" alt="Pick a date"/></a>
           <br />
           <asp:Button ID="Button2" runat="server" Text="Search" />
       </div>
  </div>
  <div id="tabs-3">
    <h2>Rent Cars</h2>
     <div id="cars">
         <asp:Label ID="Label13" runat="server" Text="Country"></asp:Label>
         <asp:DropDownList ID="DropDownList9" runat="server"></asp:DropDownList>
         <asp:Label ID="Label14" runat="server" Text="Pick Up City"></asp:Label>
         <asp:DropDownList ID="DropDownList10" runat="server"></asp:DropDownList>
         <br />
         <asp:Label ID="Label15" runat="server" Text="Date and Time"></asp:Label>
         <input id="pickupdate" type="text" size="25"/><a href="javascript:NewCal('pickupdate','ddmmyyyy',true,24)">
            <img src="js/cal.gif" width="16" height="16" border="0" alt="Pick a date"/></a>
         <br />
         <br />
         <asp:Label ID="Label17" runat="server" Text="Drop off"></asp:Label>
         <asp:CheckBox ID="CheckBox1" runat="server" Text="As same as Pick Up place" />
         <br />
         <asp:Label ID="Label18" runat="server" Text="Date and Time"></asp:Label>
          <input id="dropoffdate" type="text" size="25"/><a href="javascript:NewCal('dropoffdate','ddmmyyyy',true,24)">
            <img src="js/cal.gif" width="16" height="16" border="0" alt="Pick a date"/></a>
  
         <br />
         <asp:Button ID="Button3" runat="server" Text="Search" />
     </div>
</div>

        </div>
    </div>
        <div id="product_box2">

        </div>

        <div id="product_box3">
             
            <div id="page-wrap">
											
	       <div class="slider-wrap">
		   <div id="main-photo-slider" class="csw">
			<div class="panelContainer">

				<div class="panel" title="Panel 1">
					<div class="wrapper">
						<img src="slide_images/tempphoto-1.jpg" alt="temp" />
						<div class="photo-meta-data">
							Photo Credit: <a href="http://flickr.com/photos/astrolondon/2396265240/">Kaustav Bhattacharya</a><br />
							<span>"Free Tibet" Protest at the Olympic Torch Rally</span>
						</div>
					</div>
				</div>
				<div class="panel" title="Panel 2">
					<div class="wrapper">
						<img src="slide_images/tempphoto-2.jpg" alt="temp" />
						<div class="photo-meta-data">
							Chicago Bears at Seattle Seahawks<br />
							<span>Fifth field goal, overtime win for the Seahawks</span>
						</div>
					</div>
				</div>		
				<div class="panel" title="Panel 3">
					<div class="wrapper">
						
						<img src="slide_images/scotch-egg.jpg" alt="scotch egg" class="floatLeft"/>
						
						<h1>How to Cook a Scotch Egg</h1>
						
						<ul>
							<li>6 hard-boiled eggs, well chilled (i try to cook them to just past soft boiled stage, then stick them in the coldest part of the fridge to firm up)</li>
							<li>1 pound good quality sausage meat (i used ground turkey meat, seasoned with sage, white pepper, salt and a tiny bit of maple syrup)</li>
							<li>1/2 cup AP flour</li>
							<li>1-2 eggs, beaten</li>
							<li>3/4 cup panko-style bread crumbs</li>
							<li>Vegetable oil for frying</li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<a href="#1" class="cross-link active-thumb"><img src="slide_images/tempphoto-1thumb.jpg" class="nav-thumb" alt="temp-thumb" /></a>
		<div id="movers-row">
			<div><a href="#2" class="cross-link"><img src="slide_images/tempphoto-2thumb.jpg" class="nav-thumb" alt="temp-thumb" /></a></div>
			<div><a href="#3" class="cross-link"><img src="slide_images/tempphoto-3thumb.jpg" class="nav-thumb" alt="temp-thumb" /></a></div>
			
		</div>

	</div>
	
	</div>
        </div>
        </div>
    </form>
</asp:Content>

