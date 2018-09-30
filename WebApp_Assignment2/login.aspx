<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApp_Assignment2.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

        <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            font-family: "Century Gothic", CenturyGothic, AppleGothic, sans-serif;
            background: #000000;
            margin: 0px;

        }

        input[type=text],
        input[type=password] {
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
            text-align: center;
        }

        button {
            background-color: darkgray;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
            opacity: 0.8;
        }

        .cancelbtn {
            width: auto;
            padding: 10px 18px;
            background-color: crimson;
        }

        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
            position: relative;
        }

        img.avatar {
            width: 25%;
            height: 25%;
            border-radius: 50%;
        }

        .container {

            padding: 16px;
            text-align: center;
            overflow:auto;
        }
        .loginmenu1 {
            float: left;
            
        }
        .loginmenu2 {
            float: right;
        }


        span.psw {
            float: right;
            padding-top: 16px;
        }

        .modal {
            display: none;
            position: fixed;
            z-index: 2;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgb(0, 0, 0);
            background-color: rgba(0, 0, 0, 0.4);
            padding-top: 60px;
        }

        .modal-content {
            background-color: #fefefe;
            margin: 5% auto 15% auto;
            border: 1px solid #888;
            width: 30%;
        }

        .close {
            position: absolute;
            right: 25px;
            top: 0;
            color: #000;
            font-size: 35px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: red;
            cursor: pointer;
        }

        .animate {
            -webkit-animation: animatezoom 0.6s;
            animation: animatezoom 0.6s;
        }

        @-webkit-keyframes animatezoom {
            from {
                -webkit-transform: scale(0)
            }
            to {
                -webkit-transform: scale(1)
            }
        }

        @keyframes animatezoom {
            from {
                transform: scale(0)
            }
            to {
                transform: scale(1)
            }
        }

        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }
            .cancelbtn {
                width: 100%;
            }
        }


    </style>

</head>
<body>
    <form id="form2" runat="server" action="default.aspx">
          <div id="id01" class="modal">

            <div class="imgcontainer">
                <img src="https://www.nasa.gov/sites/all/themes/custom/nasatwo/images/nasa-logo.svg" alt="" class="avatar">
            </div>

            <div class="container">
                <asp:TextBox ID="username" type="text" placeholder="Username" runat="server" required/>

                <asp:TextBox ID="password" type="password" placeholder="Password" runat="server" required/>
                <br />

                <asp:Button ID="loginBtn" runat="server" Text="Login" OnClick="loginBtn_Click"/>
            </div>

            </div>

    <script>
        // Get the modal
        var modal = document.getElementById('id01');

        document.getElementById('id01').style.display='block'


    </script>

    </form>
</body>
</html>
