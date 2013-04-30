﻿<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="homepagecontent.aspx.cs" Inherits="webpages_content" %>

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
   
    <script src="js/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="js/jquery.easing.1.2.js" type="text/javascript"></script>
<script src="js/jquery.slideviewer.1.2.js" type="text/javascript"></script>
<script type="text/javascript">
    $(window).bind("load", function () {
        $("div#mygalone").slideView({
            easeFunc: "easeInOutSine",
            easeTime: 500,
     
            ttOpacity: 0.5,
            toolTip: false
        });
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
             <div id="mygalone" class="svw">
        <ul>
        <li><img alt="abc defrg thysu ooip jkifbtg fff"  src="slide_images/tempphoto-1.jpg" /></li>
        <li><img alt="abc defrg thysu ooip jkifbtg fff"  src="slide_images/tempphoto-2.jpg" /></li>     
        <li><img alt="abc defrg thysu ooip jkifbtg fff"  src="slide_images/tempphoto-3.jpg" /></li>
        <li><img alt="abc defrg thysu ooip jkifbtg fff"  src="slide_images/tempphoto-4.jpg" /></li>
        <!-- eccetera -->
        <li><img alt="abc defrg thysu ooip jkifbtg fff"  src="slide_images/tempphoto-5.jpg" /></li>
        </ul>
</div>  
       
        </div>
        </div>
    </form>
</asp:Content>

