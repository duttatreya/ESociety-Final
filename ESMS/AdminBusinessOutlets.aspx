<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminBusinessOutlets.aspx.cs" Inherits="ESMS.AdminBusinessOutlets" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="boid" DataSourceID="SqlDataSource1" ShowFooter="True" >
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:TemplateField HeaderText="boid" InsertVisible="False" SortExpression="boid">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("boid") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("boid") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:LinkButton ID="lbInsert" OnClick="lbInsert_Click" runat="server" >Insert Store</asp:LinkButton>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="boname" SortExpression="boname">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("boname") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("boname") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtboname" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="bocontact" SortExpression="bocontact">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("bocontact") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("bocontact") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtbocontact" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="botype" SortExpression="botype">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("botype") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("botype") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="ddlbotype" runat="server">
                                <asp:ListItem>Select Type</asp:ListItem>
                                <asp:ListItem>Fruit and Vegetable Store</asp:ListItem>
                            </asp:DropDownList>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="bosocietyid" SortExpression="bosocietyid">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("bosocietyid") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("bosocietyid") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="ddlbosocietyid" runat="server">
                                <asp:ListItem>Select SocietyID</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                            </asp:DropDownList>
                        </FooterTemplate>

                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ESocietyConnectionString9 %>" DeleteCommand="DELETE FROM [BusinessOutlets] WHERE [boid] = @original_boid AND [boname] = @original_boname AND [bocontact] = @original_bocontact AND [botype] = @original_botype AND [bosocietyid] = @original_bosocietyid" InsertCommand="INSERT INTO [BusinessOutlets] ([boname], [bocontact], [botype], [bosocietyid]) VALUES (@boname, @bocontact, @botype, @bosocietyid)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [BusinessOutlets] WHERE ([botype] = @botype)" UpdateCommand="UPDATE [BusinessOutlets] SET [boname] = @boname, [bocontact] = @bocontact, [botype] = @botype, [bosocietyid] = @bosocietyid WHERE [boid] = @original_boid AND [boname] = @original_boname AND [bocontact] = @original_bocontact AND [botype] = @original_botype AND [bosocietyid] = @original_bosocietyid">
                <DeleteParameters>
                    <asp:Parameter Name="original_boid" Type="Int32" />
                    <asp:Parameter Name="original_boname" Type="String" />
                    <asp:Parameter Name="original_bocontact" Type="Int64" />
                    <asp:Parameter Name="original_botype" Type="String" />
                    <asp:Parameter Name="original_bosocietyid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="boname" Type="String" />
                    <asp:Parameter Name="bocontact" Type="Int64" />
                    <asp:Parameter Name="botype" Type="String" />
                    <asp:Parameter Name="bosocietyid" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="Fruit and Vegetable Store" Name="botype" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="boname" Type="String" />
                    <asp:Parameter Name="bocontact" Type="Int64" />
                    <asp:Parameter Name="botype" Type="String" />
                    <asp:Parameter Name="bosocietyid" Type="Int32" />
                    <asp:Parameter Name="original_boid" Type="Int32" />
                    <asp:Parameter Name="original_boname" Type="String" />
                    <asp:Parameter Name="original_bocontact" Type="Int64" />
                    <asp:Parameter Name="original_botype" Type="String" />
                    <asp:Parameter Name="original_bosocietyid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="boid" DataSourceID="SqlDataSource2" ShowFooter="True">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:TemplateField HeaderText="boid" InsertVisible="False" SortExpression="boid">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("boid") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("boid") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:LinkButton ID="lbInsert" runat="server" OnClick="lbInsert_Click1">Insert Store</asp:LinkButton>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="boname" SortExpression="boname">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("boname") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("boname") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtboname" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="bocontact" SortExpression="bocontact">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("bocontact") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("bocontact") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtbocontact" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="botype" SortExpression="botype">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("botype") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("botype") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="ddlbotype" runat="server">
                                <asp:ListItem>Select Type</asp:ListItem>
                                <asp:ListItem>Milk Store</asp:ListItem>
                            </asp:DropDownList>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="bosocietyid" SortExpression="bosocietyid">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("bosocietyid") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("bosocietyid") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="ddlbosocietyid" runat="server">
                                <asp:ListItem>Select SocietyID</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                            </asp:DropDownList>
                        </FooterTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ESocietyConnectionString10 %>" DeleteCommand="DELETE FROM [BusinessOutlets] WHERE [boid] = @original_boid AND [boname] = @original_boname AND [bocontact] = @original_bocontact AND [botype] = @original_botype AND [bosocietyid] = @original_bosocietyid" InsertCommand="INSERT INTO [BusinessOutlets] ([boname], [bocontact], [botype], [bosocietyid]) VALUES (@boname, @bocontact, @botype, @bosocietyid)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [BusinessOutlets] WHERE ([botype] = @botype)" UpdateCommand="UPDATE [BusinessOutlets] SET [boname] = @boname, [bocontact] = @bocontact, [botype] = @botype, [bosocietyid] = @bosocietyid WHERE [boid] = @original_boid AND [boname] = @original_boname AND [bocontact] = @original_bocontact AND [botype] = @original_botype AND [bosocietyid] = @original_bosocietyid">
                <DeleteParameters>
                    <asp:Parameter Name="original_boid" Type="Int32" />
                    <asp:Parameter Name="original_boname" Type="String" />
                    <asp:Parameter Name="original_bocontact" Type="Int64" />
                    <asp:Parameter Name="original_botype" Type="String" />
                    <asp:Parameter Name="original_bosocietyid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="boname" Type="String" />
                    <asp:Parameter Name="bocontact" Type="Int64" />
                    <asp:Parameter Name="botype" Type="String" />
                    <asp:Parameter Name="bosocietyid" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="Milk Store" Name="botype" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="boname" Type="String" />
                    <asp:Parameter Name="bocontact" Type="Int64" />
                    <asp:Parameter Name="botype" Type="String" />
                    <asp:Parameter Name="bosocietyid" Type="Int32" />
                    <asp:Parameter Name="original_boid" Type="Int32" />
                    <asp:Parameter Name="original_boname" Type="String" />
                    <asp:Parameter Name="original_bocontact" Type="Int64" />
                    <asp:Parameter Name="original_botype" Type="String" />
                    <asp:Parameter Name="original_bosocietyid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="boid" DataSourceID="SqlDataSource3" ShowFooter="True">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:TemplateField HeaderText="boid" InsertVisible="False" SortExpression="boid">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("boid") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("boid") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:LinkButton ID="lbInsert" runat="server" OnClick="lbInsert_Click2">Insert Mall</asp:LinkButton>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="boname" SortExpression="boname">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("boname") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("boname") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtboname" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="bocontact" SortExpression="bocontact">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("bocontact") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("bocontact") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtbocontact" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="botype" SortExpression="botype">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("botype") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("botype") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="ddlbotype" runat="server">
                                <asp:ListItem>Select Type</asp:ListItem>
                                <asp:ListItem>Mall</asp:ListItem>
                            </asp:DropDownList>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="bosocietyid" SortExpression="bosocietyid">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("bosocietyid") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("bosocietyid") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="ddlbosocietyid" runat="server">
                                <asp:ListItem>Select SocietyID</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                            </asp:DropDownList>
                        </FooterTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ESocietyConnectionString11 %>" DeleteCommand="DELETE FROM [BusinessOutlets] WHERE [boid] = @original_boid AND [boname] = @original_boname AND [bocontact] = @original_bocontact AND [botype] = @original_botype AND [bosocietyid] = @original_bosocietyid" InsertCommand="INSERT INTO [BusinessOutlets] ([boname], [bocontact], [botype], [bosocietyid]) VALUES (@boname, @bocontact, @botype, @bosocietyid)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [BusinessOutlets] WHERE ([botype] = @botype)" UpdateCommand="UPDATE [BusinessOutlets] SET [boname] = @boname, [bocontact] = @bocontact, [botype] = @botype, [bosocietyid] = @bosocietyid WHERE [boid] = @original_boid AND [boname] = @original_boname AND [bocontact] = @original_bocontact AND [botype] = @original_botype AND [bosocietyid] = @original_bosocietyid">
                <DeleteParameters>
                    <asp:Parameter Name="original_boid" Type="Int32" />
                    <asp:Parameter Name="original_boname" Type="String" />
                    <asp:Parameter Name="original_bocontact" Type="Int64" />
                    <asp:Parameter Name="original_botype" Type="String" />
                    <asp:Parameter Name="original_bosocietyid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="boname" Type="String" />
                    <asp:Parameter Name="bocontact" Type="Int64" />
                    <asp:Parameter Name="botype" Type="String" />
                    <asp:Parameter Name="bosocietyid" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="Mall" Name="botype" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="boname" Type="String" />
                    <asp:Parameter Name="bocontact" Type="Int64" />
                    <asp:Parameter Name="botype" Type="String" />
                    <asp:Parameter Name="bosocietyid" Type="Int32" />
                    <asp:Parameter Name="original_boid" Type="Int32" />
                    <asp:Parameter Name="original_boname" Type="String" />
                    <asp:Parameter Name="original_bocontact" Type="Int64" />
                    <asp:Parameter Name="original_botype" Type="String" />
                    <asp:Parameter Name="original_bosocietyid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="boid" DataSourceID="SqlDataSource4" ShowFooter="True">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:TemplateField HeaderText="boid" InsertVisible="False" SortExpression="boid">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("boid") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("boid") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:LinkButton ID="lbInsert" runat="server" OnClick="lbInsert_Click3">Insert Salon</asp:LinkButton>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="boname" SortExpression="boname">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("boname") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("boname") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtboname" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="bocontact" SortExpression="bocontact">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("bocontact") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("bocontact") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtbocontact" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="botype" SortExpression="botype">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("botype") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("botype") %>'></asp:Label>
                        </ItemTemplate>
                         <FooterTemplate>
                            <asp:DropDownList ID="ddlbotype" runat="server">
                                <asp:ListItem>Select Type</asp:ListItem>
                                <asp:ListItem>Salon</asp:ListItem>
                            </asp:DropDownList>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="bosocietyid" SortExpression="bosocietyid">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("bosocietyid") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("bosocietyid") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="ddlbosocietyid" runat="server">
                                <asp:ListItem>Select SocietyID</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                            </asp:DropDownList>
                        </FooterTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ESocietyConnectionString12 %>" DeleteCommand="DELETE FROM [BusinessOutlets] WHERE [boid] = @original_boid AND [boname] = @original_boname AND [bocontact] = @original_bocontact AND [botype] = @original_botype AND [bosocietyid] = @original_bosocietyid" InsertCommand="INSERT INTO [BusinessOutlets] ([boname], [bocontact], [botype], [bosocietyid]) VALUES (@boname, @bocontact, @botype, @bosocietyid)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [BusinessOutlets] WHERE ([botype] = @botype)" UpdateCommand="UPDATE [BusinessOutlets] SET [boname] = @boname, [bocontact] = @bocontact, [botype] = @botype, [bosocietyid] = @bosocietyid WHERE [boid] = @original_boid AND [boname] = @original_boname AND [bocontact] = @original_bocontact AND [botype] = @original_botype AND [bosocietyid] = @original_bosocietyid">
                <DeleteParameters>
                    <asp:Parameter Name="original_boid" Type="Int32" />
                    <asp:Parameter Name="original_boname" Type="String" />
                    <asp:Parameter Name="original_bocontact" Type="Int64" />
                    <asp:Parameter Name="original_botype" Type="String" />
                    <asp:Parameter Name="original_bosocietyid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="boname" Type="String" />
                    <asp:Parameter Name="bocontact" Type="Int64" />
                    <asp:Parameter Name="botype" Type="String" />
                    <asp:Parameter Name="bosocietyid" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="Salon" Name="botype" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="boname" Type="String" />
                    <asp:Parameter Name="bocontact" Type="Int64" />
                    <asp:Parameter Name="botype" Type="String" />
                    <asp:Parameter Name="bosocietyid" Type="Int32" />
                    <asp:Parameter Name="original_boid" Type="Int32" />
                    <asp:Parameter Name="original_boname" Type="String" />
                    <asp:Parameter Name="original_bocontact" Type="Int64" />
                    <asp:Parameter Name="original_botype" Type="String" />
                    <asp:Parameter Name="original_bosocietyid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
