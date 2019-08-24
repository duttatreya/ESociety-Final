<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Service_Providers.aspx.cs" Inherits="ESociety_Management_System.Service_Providers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="bootstrap.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 80px;
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
            <li>
                <br />
                <br />
                <br />
            </li>
        </ul>

      
        <%--<div class="btn-group" role="group" aria-label="Button group with nested dropdown">
            
           
            <button type="button" class="btn btn-secondary">Bookings</button>
            <button id="btnGroupDrop1" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Service Providers</button>
            <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
                <a class="dropdown-item" href="#">Security</a>
                <a class="dropdown-item" href="#">Maid</a>
                <a class="dropdown-item" href="#">Carpenter</a>
                <a class="dropdown-item" href="#">Plumber</a>
                <a class="dropdown-item" href="#">Electrician</a>
            </div>
            <button id="btnGroupDrop2" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Business Outlets</button>
            <div class="dropdown-menu" aria-labelledby="btnGroupDrop2">
                <a class="dropdown-item" href="#">Milk Parlour</a>
                <a class="dropdown-item" href="#">Malls</a>
                <a class="dropdown-item" href="#">Vegetable and Fruit Shops</a>
                <a class="dropdown-item" href="#">Salon</a>
                <a class="dropdown-item" href="#">Hospitals</a>
                <a class="dropdown-item" href="#">Gas Agency</a>
            </div>
            <button type="button" class="btn btn-secondary">Change Password</button>
        </div>--%>
        <br/>        
        <div class="auto-style1">
            <br />
            <asp:Label ID="Label1" runat="server" Text="Security"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Contact Number" HeaderText="Contact Number" SortExpression="Contact Number" />
                    <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ESocietyConnectionString %>" SelectCommand="SELECT spname AS 'Name', contact AS 'Contact Number', rating AS 'Rating' FROM ServiceProviders WHERE (societyid = 1) AND (type = 'Security')"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ESocietyConnectionString %>" SelectCommand="SELECT spname AS 'Name', contact AS 'Contact Number', rating AS 'Rating' FROM ServiceProviders WHERE (societyid = 1) AND (type = 'Plumber')"></asp:SqlDataSource>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Maid"></asp:Label>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="MaidDataSource">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Contact Number" HeaderText="Contact Number" SortExpression="Contact Number" />
                    <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="MaidDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ESocietyConnectionString %>" SelectCommand="SELECT spname AS 'Name', contact AS 'Contact Number', rating AS 'Rating' FROM ServiceProviders WHERE (societyid = 1) AND (type = 'Maid')"></asp:SqlDataSource>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Carpenter"></asp:Label>
            <br />
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="Carpenter">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Contact Number" HeaderText="Contact Number" SortExpression="Contact Number" />
                    <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="Carpenter" runat="server" ConnectionString="<%$ ConnectionStrings:ESocietyConnectionString %>" SelectCommand="SELECT spname AS 'Name', contact AS 'Contact Number', rating AS 'Rating' FROM ServiceProviders WHERE (societyid = 1) AND (type = 'Carpenter')"></asp:SqlDataSource>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Electrician"></asp:Label>
            <br />
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataSourceID="Electrician">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Contact Number" HeaderText="Contact Number" SortExpression="Contact Number" />
                    <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="Electrician" runat="server" ConnectionString="<%$ ConnectionStrings:ESocietyConnectionString %>" SelectCommand="SELECT spname AS 'Name', contact AS 'Contact Number', rating AS 'Rating' FROM ServiceProviders WHERE (societyid = 1) AND (type = 'Electrician')"></asp:SqlDataSource>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Plumber"></asp:Label>
            <br />
            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Contact Number" HeaderText="Contact Number" SortExpression="Contact Number" />
                    <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />
                </Columns>
            </asp:GridView>
        </div>


    </form>
</body>
</html>
