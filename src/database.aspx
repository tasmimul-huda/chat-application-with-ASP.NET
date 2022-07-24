<%@ Page Language="C#" AutoEventWireup="true" CodeFile="database.aspx.cs" Inherits="database" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>FirstName</td>
                    <td>
                        <asp:TextBox ID="firstname" runat="server"></asp:TextBox> </td>
                </tr>

                <tr>
                    <td>LastName</td>
                    <td><asp:TextBox ID="lastname" runat="server"></asp:TextBox> </td>
                </tr>

                <tr>
                    <td>City</td>
                    <td><asp:TextBox ID="city" runat="server"></asp:TextBox> </td>
                </tr>

                 

                <tr>
                    <td colspan ="2" align="center">
                        <asp:Button ID="insert" runat="server" Text="Insert" OnClick="insert_Click" />
                         <asp:Button ID="delete" runat="server" Text="Delete" OnClick="delete_Click" />
                        <asp:Button ID="update" runat="server" Text="Update" OnClick="update_Click" style="height: 26px" />
      
                        <asp:Button ID="view" runat="server" Text="View" OnClick="view_Click" />
                    </td>
                    
                </tr>
                <tr>
                    <td>Enter ID for Update</td>
                    <td><asp:TextBox ID="oldid" runat="server"></asp:TextBox> </td>
                </tr>
            </table>

            <br />
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
