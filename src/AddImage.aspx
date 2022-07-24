<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddImage.aspx.cs" Inherits="AddImage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 85px;
            width: 223px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <tb>Username</tb> <tb> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></tb>
                </tr>
                <tr>
                    <tb>Email</tb> <tb> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></tb>
                </tr>
                <tr>
                    <tb>Password</tb> <tb> <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></tb>
                </tr>
                <tr>
                    <tb>Confirm Password</tb> <tb> <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></tb>
                </tr>
                <tr>
                    <tb>Image</tb> <tb> <asp:FileUpload ID="FileUpload1" runat="server" /></tb>
                </tr>
                <tr>
                    <tb>Country</tb> <tb>  <asp:DropDownList ID="DropDownListCountry" runat="server" CssClass="form-control">
                                    <asp:ListItem>Select Country</asp:ListItem>
                                    <asp:ListItem>Bangladesh</asp:ListItem>
                                    <asp:ListItem>USA</asp:ListItem>
                                    <asp:ListItem>UK</asp:ListItem>
                                    <asp:ListItem>India</asp:ListItem>
                                    <asp:ListItem>Others</asp:ListItem>
                                </asp:DropDownList></tb>
                </tr>
            </table>
            
<br /><br />
<asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
<br /><br />
<asp:Label ID="lblMessage" runat="server"></asp:Label>
<br /><br />
<asp:HyperLink ID="hyperlink" runat="server">View Uploaded Image</asp:HyperLink>
        </div>
    </form>
</body>
</html>
