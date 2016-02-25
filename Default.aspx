<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="scripts/jquery-1.12.1.js"></script>

    <script type="text/javascript">
        // Initialize indicators with 0 opacity
        $(function() {
            $('.nav-item img').fadeTo(0, 0);
            $('#about-dialog').fadeTo(0, 0);
            $('#gallery-dialog').hide();
        });
    </script>

    <link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>
    <form id="form1" runat="server">

    <div id="wrapper">

        <div id="nav-wrapper">
            <ul id="nav">
                <li class="nav-item"><img id="ind1" src="images/controls/right.png"/><a href="#" data-ind="ind1">Home</a></li>
                <li class="nav-item"><img id="ind2" src="images/controls/right.png"/><a href="javascript:void(0);" data-ind="ind2" id="gallery">Gallery</a></li>
                <li class="nav-item"><img id="ind3" src="images/controls/right.png"/><a href="#" data-ind="ind3">About</a></li>
            </ul>
        </div> <!-- end of NAV -->

        <div id="right-panel">
            <div id="social-wrapper">
                <div class="social-element noselect" id="about"></div>
                <div class="social-element noselect" id="email"></div>
                <div class="social-element noselect" id="facebook"></div>
                <div class="social-element noselect" id="twitter"></div>
                <div class="social-element noselect" id="rss-feed"></div>
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

        <div id="gallery-dialog">
            <div id="gallery-image" class="contain-bg">
                <div class="controls" id="close-control"></div>
                <div class="controls" id="left-control"></div>
                <div class="controls" id="right-control"></div>
                <!--<img id="gallery-image" src="atestat/images/slideshow/1.jpg"/>-->
            </div>
        </div>

    </div>

    </form>
    <script type="text/javascript" src="scripts/javascript.js"></script>
    <script type="text/javascript" src="scripts/jquery.js"></script>
</body>
</html>