<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
<style>
    body{
        background-color: rgb(0, 102, 255);
        background-image:url(imgs/background_1.jpg);
        background-repeat: no-repeat;
        background-size:cover;
        //background-position: center;
    }
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  //background-color: gray;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  //background-color: #111;
  background-color: rgb(109 159 242);
}

.active {
 //background-color: #04AA6D;
}
</style>
</head>
    <!--rgb(51, 153, 255), rgb(153, 51, 255)--- linear-gradient(to right, rgb(0, 102, 255),rgb(0, 102, 255))-->
<body>
    <form id="form1" runat="server">
        <div>
<ul>
  <li><a href="#home"><b style="font:100"> E Chiti ChatApp </b></a></li>
   <li style="float:right"><a href="Manager.aspx">Admin</a></li>
  <li style="float:right"><a href="Registration.aspx">SignUp</a></li>
  <li style="float:right"><a href="login.aspx">Login</a></li>
  <li style="float:right"><a href="chat.aspx">Chat</a></li>
</ul>
            </div>
    </form>
</body>
</html>
