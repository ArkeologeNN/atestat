<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="atestat/css/style.css"/>
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

    </div>

    </form>
    <script type="text/javascript" src="scripts/script.js"></script>
</body>
</html>
