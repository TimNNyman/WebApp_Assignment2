﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addNews.aspx.cs" Inherits="WebApp_Assignment2.addNews" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="style/style.css">
    <link rel="stylesheet" type="text/css" href="style/HovrableArticle.css">
    <link rel="stylesheet" type="text/css" href="style/footer.css">
    <link rel="stylesheet" type="text/css" href="style/createContent.css">
</head>
<body>
    <form id="form1" runat="server">
        <nav>
        <div class="Logo">
            <a href="#">
                <img src="https://www.nasa.gov/sites/all/themes/custom/nasatwo/images/nasa-logo.svg" alt="">
            </a>
        </div>

        <div class="Search">
            <form id="Search">
                <div>
                    <input type="search" id="mySearch" name="Search" placeholder="Search the site..." size="30px" style="border-right:0px" style="margin-right:0px">
                    <input class="searchButton" type="submit" value="Search">
                </div>
            </form>

            <div class="Share">
                <a href="#"></a>
            </div>
        </div>

        <div class="TopNav1">
            <ul>
                <li>
                    <a href="#">Mission</a>
                </li>
                <li>
                    <a href="#">Press Releases</a>
                </li>
                <li>
                    <a href="#">Media</a>
                </li>
                <li>
                    <a href="#">Follow WWRA</a>
                </li>
                <li>
                    <a href="#">WWRA Associates</a>
                </li>
                <li>
                    <a href="#">About</a>
                </li>
            </ul>
        </div>


        <div class="TopNav2">
            <ul>
                <li>
                    <a href="addNews.aspx">Add news</a>
                </li>
                <li>
                    <a href="#">Raptors</a>
                </li>
                <li>
                    <a href="#">Short arms</a>
                </li>
                <li>
                    <a href="#">Research</a>
                </li>
                <li>
                    <a href="#">John Hammond</a>
                </li>
                <li>
                    <a href="#">History</a>
                </li>
            </ul>
        </div>
    </nav>
    <div id="navDiv"></div>
    <main>
        <form action="#" method="post">
            <div>
                <p>
                    <label for="Title">Title: </label>
                    <input type="text" name="title" id="Title" runat="server">
                </p>
                <p>
                    <label for="Content">Content: </label>
                    <textarea name="content" rows="5" id="Content" runat="server"></textarea>
                </p>
                <p>
                    <input type="file" name="pic" accept="image/*,video/*" runat="server">
                </p>
                <p>
                    <asp:Button OnClick="btn_Click" Text="Submit" runat="server" />
                </p>
            </div>
        </form>
    </main>
    <footer>
        <div id="footerDiv">
            <a id="footer-logo" href="#">
                <img src="https://www.nasa.gov/sites/all/themes/custom/nasatwo/images/nasa-logo.svg" alt="">
            </a>
            <div id="footer-info">
                <p>National&nbsp;Aeronautics and Space&nbsp;Administration</p>
                <p>NASA Official: Brian Dunbar</p>
            </div>
        </div>
        <ul id="footer-links">
            <li>
                <a href="#">No Fear Act</a>
            </li>
            <li>
                <a href="#">FOIA</a>
            </li>
            <li>
                <a href="#">Privacy</a>
            </li>
            <li>
                <a href="#">Office of Inspector General</a>
            </li>
            <li>
                <a href="#">Office of Special Counsel</a>
            </li>
            <li>
                <a href="#">Agency Financial Reports</a>
            </li>
            <li>
                <a href="#">Contact NASA</a>
            </li>
        </ul>
    </footer>
    </form>
</body>
</html>
