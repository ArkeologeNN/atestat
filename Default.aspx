<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <script type="text/javascript" src="scripts/jquery-1.12.1.js"></script>

    <script type="text/javascript">
        // Initialize indicators with 0 opacity
        $(function() {
            $('.nav-item span').fadeTo(0, 0);
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">

    <div id="wrapper">

        <div id="nav-wrapper">
            <ul id="nav">
                <li class="nav-item"><span id="ind1">></span><a href="#" data-ind="ind1">Home</a></li>
                <li class="nav-item"><span id="ind2">></span><a href="#" data-ind="ind2">Gallery</a></li>
                <li class="nav-item"><span id="ind3">></span><a href="#" data-ind="ind3">About</a></li>
            </ul>
        </div> <!-- end of NAV -->

        <div id="right-panel">
            <div id="social-wrapper">
                <div class="social-element" id="about"></div>
                <div class="social-element" id="email"></div>
                <div class="social-element" id="facebook"></div>
                <div class="social-element" id="twitter"></div>
                <div class="social-element" id="rss-feed"></div>
            </div> <!-- end of Social-wrapper -->

            <div id="Stuff">
                <p>Aci bagi tu ce vrei.</p>
            </div> <!-- end of Stuff -->

            <div id="login-buttons">
                <p>Aci vin butoanele.</p>
            </div> <!-- end of login-buttons -->

        </div> <!-- end of Right-panel -->

        <div id="about-dialog">
            <p>This will be your about stuff.</p>
        </div>

    </div>

    </form>
    <script type="text/javascript" src="scripts/script.js"></script>
</body>
</html>