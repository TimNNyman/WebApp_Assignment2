<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApp_Assignment2._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="style/style.css">
    <link rel="stylesheet" type="text/css" href="style/HovrableArticle.css">
    <link rel="stylesheet" type="text/css" href="style/footer.css">
    <script type="text/javascript" charset="utf-8" src="script/index.js"></script>
        <script type="text/javascript">
        window.onload = function() {
            var a = document.getElementById("mylink");
            a.onclick = function () {
                var para = document.createElement("p");
                "document.getElementById('myImg').src='compman.gif'"
                var node = document.createTextNode("This is new.");
                para.appendChild(node);
                var element = document.getElementById("div1");
                element.appendChild(para);
            }
        }
    </script>
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
                    <a href="login.aspx">Login</a>
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
    <div id="navDiv">
    </div>
    <main>

        <div id="articles" runat="server" >

            <div class="scrollingImgDiv">
                <img id="scrollingImg" src="images/raptorbench.jpg">
            </div>

            <div class="container">
                <video controls>
                    <source src="video/Velociraptor.mp4" type="video/mp4"> Your browser does not support HTML5 video.
                </video>
            </div>

            <div class="updatableNews">
                <a>
                <img src="images/raptorsuit2.jpg" alt="" class="image">
                <div class="textContent">
                    <div class="title">Anger Management</div>
                    <div class="text">Do you have it in you to be a raptor focused on career instead of eating people? The CEO of PeaceRap
                        reveals how he was able to suppress his murderous instincts and manage his astounding career in the
                        IT sector.</div>
                </div></a>
            </div>

            <div class="container">
                <a>
                <img src="images/raptorsuit2.jpg" alt="" class="image">
                <div class="overlay">
                    <div class="title">Anger Management</div>
                    <div class="text">Do you have it in you to be a raptor focused on career instead of eating people? The CEO of PeaceRap
                        reveals how he was able to suppress his murderous instincts and manage his astounding career in the
                        IT sector.</div>
                </div></a>
            </div>
            <div class="container">
                <a>
                <img src="images/raptorbench.jpg" alt="" class="image">
                <div class="overlay">
                    <div class="title">Raptor Attacks on Campus!</div>
                    <div class="text">An unknown raptor has been spotted on MDH Campus, attacking innocent students! Local police says the
                        use of illegal drugs may be involved.></div>
                </div></a>
            </div>
            <div class="container">
                <a>
                <img src="images/raptorsuit1.jpg" alt="" class="image">
                <div class="overlay">
                    <div class="title">Something.</div>
                    <div class="text">"This is a huge setback for raptors who are trying to be civilized and co-exist with humans."
                        <br> Raptor Josh Wilson who is a chairman of the internation comittee HRR (Human Raptor Relations) quickly
                        addresses the issue of the vigilante raptor that is wrecking havoc and terrorising students at MDH.</div>
                </div></a>
            </div>
            <div class="container">
                <a>
                <img src="images/raptor2.jpg" alt="" class="image">
                <div class="overlay">
                    <div class="title">Don't try this at home!</div>
                    <div class="text">See the famous and fearless raptor educator Geordi Szyzylak's attempt at disciplining 3 wild raptors
                        at once!
                    </div></a>
                </div>
            </div>
            <div class="container">
                <center>Are you a
                    <strong>raptor</strong> controlled by
                    <strong>rage</strong>?</center>
                <hr> How do we deal with our short, stumpy arms? It's not uncommon for raptors to turn into an agressive state
                when they feel limited by the reach of their arms. Here we have listed a few tips and tricks to work around
                the problem while also addressing the anger management issue. The key to overcoming the problem is positive
                thinking - at least you don't have the arm's length of a T-rex.
                <br>If you have baby raptors, make sure they follow
                <a href="#">
                    <u>
                        <b>these steps</b>
                    </u>
                </a> as early as possible to ease their transition into todays modern society.
            </div>
            <div class="container">
                <a>
                <img src="images/raptor1.jpg" alt="" class="image" style="height:100%; width:auto"></a>
            </div>
            <div class="container">
                <a>
                <img src="images/raptorsuit2.jpg" alt="" class="image">
                <div class="overlay">
                    <div class="title">Anger Management</div>
                    <div class="text">Do you have it in you to be a raptor focused on career instead of eating people? The CEO of PeaceRap
                        reveals how he was able to suppress his murderous instincts and manage his astounding career in the
                        IT sector.</div>
                </div></a>
            </div>
            <div class="container">
                <a>
                <img src="images/raptorsuit2.jpg" alt="" class="image">
                <div class="overlay">
                    <div class="title">Anger Management</div>
                    <div class="text">Do you have it in you to be a raptor focused on career instead of eating people? The CEO of PeaceRap
                        reveals how he was able to suppress his murderous instincts and manage his astounding career in the
                        IT sector.</div></a>
                </div>
            </div>
        </div>

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
