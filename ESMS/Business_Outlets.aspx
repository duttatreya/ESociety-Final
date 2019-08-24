<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Business_Outlets.aspx.cs" Inherits="ESociety_Management_System.Business_Outlets" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="bootstrap.css" rel="stylesheet" />
    <title></title>
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


        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Mall"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Outlet Name" HeaderText="Outlet Name" SortExpression="Outlet Name" />
                <asp:BoundField DataField="Contact Number" HeaderText="Contact Number" SortExpression="Contact Number" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ESocietyConnectionString %>" SelectCommand="SELECT boname AS 'Outlet Name', bocontact AS 'Contact Number' FROM BusinessOutlets WHERE (botype = 'Salon') AND (bosocietyid = 1)"></asp:SqlDataSource>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Fruit and Vegetable Store"></asp:Label>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="FruitsAndveggies">
            <Columns>
                <asp:BoundField DataField="Outlet Name" HeaderText="Outlet Name" SortExpression="Outlet Name" />
                <asp:BoundField DataField="Contact Number" HeaderText="Contact Number" SortExpression="Contact Number" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="FruitsAndveggies" runat="server" ConnectionString="<%$ ConnectionStrings:ESocietyConnectionString %>" SelectCommand="SELECT boname AS 'Outlet Name', bocontact AS 'Contact Number' FROM BusinessOutlets WHERE (bosocietyid = 1) AND (botype = 'Fruit and Vegetable Store')"></asp:SqlDataSource>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Milk"></asp:Label>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="MilkStore">
            <Columns>
                <asp:BoundField DataField="Outlet Name" HeaderText="Outlet Name" SortExpression="Outlet Name" />
                <asp:BoundField DataField="Contact Number" HeaderText="Contact Number" SortExpression="Contact Number" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="MilkStore" runat="server" ConnectionString="<%$ ConnectionStrings:ESocietyConnectionString %>" SelectCommand="SELECT boname AS 'Outlet Name', bocontact AS 'Contact Number' FROM BusinessOutlets WHERE (bosocietyid = 1) AND (botype = 'Milk Store')"></asp:SqlDataSource>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Salon"></asp:Label>
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataSourceID="Mall">
            <Columns>
                <asp:BoundField DataField="Outlet Name" HeaderText="Outlet Name" SortExpression="Outlet Name" />
                <asp:BoundField DataField="Contact Number" HeaderText="Contact Number" SortExpression="Contact Number" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="Mall" runat="server" ConnectionString="<%$ ConnectionStrings:ESocietyConnectionString %>" SelectCommand="SELECT boname AS 'Outlet Name', bocontact AS 'Contact Number' FROM BusinessOutlets WHERE (bosocietyid = 1) AND (botype = 'Mall')"></asp:SqlDataSource>
        <asp:SqlDataSource ID="Salon" runat="server" ConnectionString="<%$ ConnectionStrings:ESocietyConnectionString %>" SelectCommand="SELECT boname AS 'Outlet Name', bocontact AS 'Contact Number' FROM BusinessOutlets WHERE (bosocietyid = 1) AND (botype = 'Salon')"></asp:SqlDataSource>


    </form>
</body>
</html>
