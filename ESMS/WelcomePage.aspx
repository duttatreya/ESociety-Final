<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WelcomePage.aspx.cs" Inherits="ESociety.WelcomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 543px;
        }
        .auto-style2 {
            width: 300px;
        }
        .auto-style3 {
            width: 300px;
            height: 100px;
        }
        .auto-style4 {
            height: 100px;
            width: 1085px;
        }

        body{
            background-image: url('Images/a.jpg');
            background-size: 100%;
         
        }
        .auto-style5 {
            width: 1085px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="ESociety" Font-Bold="True" Font-Italic="False" Font-Names="Georgia" Font-Size="XX-Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Panel ID="Panel1" runat="server" Height="100px" Width="995px" Direction="RightToLeft">
                        <asp:Button ID="Button1" runat="server" BackColor="#E8EAF6" BorderStyle="None" Font-Bold="True" Font-Names="Georgia" Font-Size="Medium" ForeColor="Black" Height="50px" SkinID="ID1" Text="Contact Us" Width="150px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" BackColor="#E8EAF6" BorderStyle="None" Font-Bold="True" Font-Names="Georgia" Font-Size="Medium" ForeColor="Black" Height="50px" SkinID="ID1" Text="About Us" Width="150px" />
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Panel ID="Panel2" runat="server" Height="450px">
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:Login ID="Login1" runat="server" Height="266px" Width="294px" BackColor="#E8EAF6" Font-Bold="True" Font-Names="Georgia" Font-Size="Medium" ForeColor="Black" OnAuthenticate="Login1_Authenticate">
                        </asp:Login>
                        <br />
                        <br />
                        <br />
                        <br />
                    </asp:Panel>
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
    
    </div>
   </form>
</body>
</html>
