<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User Page.aspx.cs" Inherits="ESociety_Management_System.User_Page" %>

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


    </form>
</body>
</html>
