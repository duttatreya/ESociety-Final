<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="ESociety.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
         body{
            background-image: url('Images/a.jpg');
            background-size: 100%;
         
        }
        .auto-style5 {
            height: 732px;
        }
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            height: 373px;
            width: 656px;
        }
        .auto-style8 {
            height: 373px;
            width: 196px;
        }
    </style>
</head>
<body style="height: 791px">
    <form id="form1" runat="server" >
    <div class="auto-style5">
    
      
    
    
        
        <table class="auto-style6">
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label1" runat="server" Text="ESociety" Font-Bold="True" Font-Italic="False" Font-Names="Georgia" Font-Size="XX-Large" ForeColor="White"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
    
    
        <asp:Button ID="Button1" runat="server" BorderStyle="Inset" Height="70px" Text="Add Society" Width="200px" BackColor="#E8EAF6" Font-Bold="True" Font-Names="Georgia" OnClick="Button1_Click" />
                    <br />
                    <br />
        <asp:Button ID="Button2" runat="server" BorderStyle="Inset" Height="70px" Text="ServiceProviders" Width="200px" BackColor="#E8EAF6" Font-Bold="True" Font-Names="Georgia" OnClick="Button2_Click" />
                    <br />
                    <br />
        <asp:Button ID="Button3" runat="server" BorderStyle="Inset" Height="70px" Text="Business Outlets" Width="200px" BackColor="#E8EAF6" Font-Bold="True" Font-Names="Georgia" OnClick="Button3_Click" />
                    <br />
                    <br />
        <asp:Button ID="Button4" runat="server" BorderStyle="Inset" Height="70px" Text="Bookings" Width="200px" BackColor="#E8EAF6" Font-Bold="True" Font-Names="Georgia" OnClick="Button4_Click" />
                    <br />
                    <br />
        <asp:Button ID="Button5" runat="server" BorderStyle="Inset" Height="70px" Text="Events" Width="200px" BackColor="#E8EAF6" Font-Bold="True" Font-Names="Georgia" OnClick="Button5_Click" />
                </td>
                <td class="auto-style7">
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Admin" Font-Bold="True" Font-Italic="False" Font-Names="Georgia" Font-Size="Large" ForeColor="White"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button6" runat="server" BackColor="#E8EAF6" BorderStyle="Inset" Height="41px" Text="Logout" Width="97px" OnClick="Button6_Click" />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    
      
    
    
        
        <br />
&nbsp;<br />
        <br />
    
    
        <br />
        </div>
    </form>
</body>
</html>
