<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProfileUser.aspx.cs" Inherits="ProfileUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style/bootstrap-3.3.6-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="~/CSS/customstylesheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 159px;
        }
        .auto-style2 {
            width: 318px;
            height: 154px;
        }
        .auto-style3 {
            width: 128px;
        }
        .auto-style4 {
            width: 159px;
            height: 34px;
        }
        .auto-style5 {
            width: 128px;
            height: 34px;
        }
        .auto-style6 {
            width: 159px;
            height: 39px;
        }
        .auto-style7 {
            width: 128px;
            height: 39px;
        }
        .roundimage {
            border-radius: 50%;
            align-content: center;
            border-width: 40px;
            border-color: greenyellow;
        }
        .imgdisp {
            background-color: red;
            
        }
        .auto-style8 {
            width: 159px;
            height: 42px;
        }
        .auto-style9 {
            width: 128px;
            height: 42px;
        }
        .auto-style10 {
            margin-left: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!--div>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            
        </!--div-->

        <div>
            <h1 align =" center">Your Profile </h1>
        </div>

<div align="center" border-radius="50%">
    <asp:Image ID="Image1" Visible = "false" Height="200px" Width="200px" runat="server" />
</div>
        <div align="center">
            <table>
                <tr>
                    
                    <td><asp:FileUpload ID="FileUpload1" runat="server" />
                        <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" /></td>
                </tr>
            </table>
             <p> <asp:Label ID="Label1" runat="server" Text="" Font-Bold="True" 
                ForeColor="#3333CC"></asp:Label>  </p>
        </div>
        <div>
            <table class="auto-style2" align="center">
                <tr>
                    <td class="auto-style4">Username</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBoxuser22" runat="server" OnTextChanged="firstname_TextChanged" Width="150px"></asp:TextBox> </td>
                </tr>

                <tr>
                    <td class="auto-style6">Email</td>
                    <td class="auto-style7"><asp:TextBox ID="TextBoxEmail22" runat="server" Width="150px"></asp:TextBox> </td>
                </tr>

                <tr>
                    <td class="auto-style8">Country</td>
                    <td class="auto-style9"><asp:TextBox ID="TextBoxCountry22" runat="server" Width="150px"></asp:TextBox> </td>
                </tr>
                <tr>
                    <td class="auto-style1">Password</td>
                    <td class="auto-style3"><asp:TextBox ID="TextBoxPass22" runat="server" Height="16px" Width="150px"></asp:TextBox> </td>
                </tr>

            </table>

             <div align ="center"> <h4 > Update Password</h4>

            <asp:Label ID="NewPassword" runat="server" Text="Enter New Password">  </asp:Label><asp:TextBox ID="TextBoxNewPass" runat="server" CssClass="auto-style10" Width="150px"></asp:TextBox> <br /> <br />

            <br />
                 </div>
             <div  align="center" ><asp:HyperLink ID="HyperLink1" NavigateUrl="chat.aspx" runat="server"> <h3>Back To Chat</h3></asp:HyperLink></div>
        </div>

    </form>
</body>
</html>
