<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ImageAdd.aspx.cs" Inherits="ImageAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        .style1
        {
            width: 94px;
        }
        .style2
        {
            width: 307px;
        }
    </style>
</head>
<body bgcolor="#99ccff" text="#333333">
     <form id="form1" runat="server">
    <h4 style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #800000; text-decoration: blink"> This Application is Created by Vithal Wadje For C# Corner</h4>
    <table style="width: 31%;">
        <tr>
            <td class="style1">
           Select Image
            </td>
            <td class="style2">
             <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style1">
         Album Name
            </td>
            <td class="style2">
           <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            </tr>
           <tr><td class="style1"> </td> <td class="style2">      
               <asp:Button ID="Button1" runat="server" Text="Upload" onclick="btn_1"></asp:Button>
     </td>
           </tr>
       
        </table>   
        <p> <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" 
                ForeColor="#3333CC"></asp:Label>  </p>
   
    </form>
</body>
</html>
