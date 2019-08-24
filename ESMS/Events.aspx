<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="ESociety_Management_System.Events" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <link href="bootstrap.css" rel="stylesheet" />
    <title>Service Providers</title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 4px;
            margin-top: 39px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="jumbotron jumbotron-fluid">
            <div class="container">
                <h2 class="display-4">Fern City Society</h2>
            </div>
        </div>

        <ul class="nav nav-tabs">
            <li class="nav-item">
                <asp:Button ID="Button1" runat="server"  class="btn btn-secondary" Text="Events" OnClick="Button1_Click" />
            </li>
            <li class="nav-item">
                <asp:Button ID="Button2" runat="server"  class="btn btn-secondary" Text="Booking" OnClick="Button2_Click" />
            </li>
            <li class="nav-item">
                <asp:Button ID="Button3" runat="server"  class="btn btn-secondary" Text="Service Providers" OnClick="Button3_Click" />
            </li>
            <li class="nav-item">
                <asp:Button ID="Button4" runat="server"  class="btn btn-secondary" Text="Business Outlets" OnClick="Button4_Click" />
            </li>
              <li class="nav-item" >
                <asp:Button ID="Button5" runat="server"  class="btn btn-secondary" Text="Account Settings" OnClick="Button5_Click" />
            </li>
        </ul>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" DataSourceID="SocietyEvents">
            <Columns>
                <asp:BoundField DataField="ename" HeaderText="ename" SortExpression="ename" />
                <asp:BoundField DataField="edate" HeaderText="edate" SortExpression="edate" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SocietyEvents" runat="server" ConnectionString="<%$ ConnectionStrings:ESocietyConnectionString %>" SelectCommand="SELECT ename, edate FROM Events WHERE (esocietyid = 1)"></asp:SqlDataSource>
    </form>
</body>
</html>
