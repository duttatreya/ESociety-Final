<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminServiceProviders.aspx.cs" Inherits="ESMS.AdminServiceProviders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="aadhar" DataSourceID="SqlDataSource1" ShowFooter="True">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:TemplateField HeaderText="aadhar" SortExpression="aadhar">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("aadhar") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("aadhar") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtaadhar" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="spname" SortExpression="spname">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("spname") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("spname") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtspname" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="contact" SortExpression="contact">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("contact") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("contact") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="societyid" SortExpression="societyid">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("societyid") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("societyid") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="ddlsocietyid" runat="server">
                                <asp:ListItem>Select SocietyID</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                            </asp:DropDownList>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="type" SortExpression="type">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("type") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("type") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="ddltype" runat="server">
                                <asp:ListItem>Select Type</asp:ListItem>
                                <asp:ListItem>Security</asp:ListItem>
                                <%--<asp:ListItem>Electrician</asp:ListItem>
                                <asp:ListItem>Plumber</asp:ListItem>--%>
                            </asp:DropDownList>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="rating" SortExpression="rating">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("rating") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("rating") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtrating" runat="server"></asp:TextBox>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ESocietyConnectionString3 %>" DeleteCommand="DELETE FROM [ServiceProviders] WHERE [aadhar] = @original_aadhar AND [spname] = @original_spname AND [contact] = @original_contact AND [societyid] = @original_societyid AND [type] = @original_type AND (([rating] = @original_rating) OR ([rating] IS NULL AND @original_rating IS NULL))" InsertCommand="INSERT INTO [ServiceProviders] ([aadhar], [spname], [contact], [societyid], [type], [rating]) VALUES (@aadhar, @spname, @contact, @societyid, @type, @rating)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ServiceProviders] WHERE ([type] = @type)" UpdateCommand="UPDATE [ServiceProviders] SET [spname] = @spname, [contact] = @contact, [societyid] = @societyid, [type] = @type, [rating] = @rating WHERE [aadhar] = @original_aadhar AND [spname] = @original_spname AND [contact] = @original_contact AND [societyid] = @original_societyid AND [type] = @original_type AND (([rating] = @original_rating) OR ([rating] IS NULL AND @original_rating IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_aadhar" Type="Int64" />
                    <asp:Parameter Name="original_spname" Type="String" />
                    <asp:Parameter Name="original_contact" Type="Int64" />
                    <asp:Parameter Name="original_societyid" Type="Int32" />
                    <asp:Parameter Name="original_type" Type="String" />
                    <asp:Parameter Name="original_rating" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="aadhar" Type="Int64" />
                    <asp:Parameter Name="spname" Type="String" />
                    <asp:Parameter Name="contact" Type="Int64" />
                    <asp:Parameter Name="societyid" Type="Int32" />
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="rating" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="Security" Name="type" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="spname" Type="String" />
                    <asp:Parameter Name="contact" Type="Int64" />
                    <asp:Parameter Name="societyid" Type="Int32" />
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="rating" Type="Int32" />
                    <asp:Parameter Name="original_aadhar" Type="Int64" />
                    <asp:Parameter Name="original_spname" Type="String" />
                    <asp:Parameter Name="original_contact" Type="Int64" />
                    <asp:Parameter Name="original_societyid" Type="Int32" />
                    <asp:Parameter Name="original_type" Type="String" />
                    <asp:Parameter Name="original_rating" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Insert Security Details</asp:LinkButton>
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="aadhar" DataSourceID="SqlDataSource2" ShowFooter="True">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:TemplateField HeaderText="aadhar" SortExpression="aadhar">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("aadhar") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("aadhar") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtaadhar" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="spname" SortExpression="spname">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("spname") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("spname") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtspname" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="contact" SortExpression="contact">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("contact") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("contact") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="societyid" SortExpression="societyid">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("societyid") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("societyid") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="ddlsocietyid" runat="server">
                                <asp:ListItem>Select SocietyID</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                            </asp:DropDownList>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="type" SortExpression="type">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("type") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("type") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="ddltype" runat="server">
                                <asp:ListItem>Select Type</asp:ListItem>
                                <asp:ListItem>Maid</asp:ListItem>
                                
                            </asp:DropDownList>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="rating" SortExpression="rating">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("rating") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("rating") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtrating" runat="server"></asp:TextBox>
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ESocietyConnectionString5 %>" DeleteCommand="DELETE FROM [ServiceProviders] WHERE [aadhar] = @original_aadhar AND [spname] = @original_spname AND [contact] = @original_contact AND [societyid] = @original_societyid AND [type] = @original_type AND (([rating] = @original_rating) OR ([rating] IS NULL AND @original_rating IS NULL))" InsertCommand="INSERT INTO [ServiceProviders] ([aadhar], [spname], [contact], [societyid], [type], [rating]) VALUES (@aadhar, @spname, @contact, @societyid, @type, @rating)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ServiceProviders] WHERE ([type] = @type)" UpdateCommand="UPDATE [ServiceProviders] SET [spname] = @spname, [contact] = @contact, [societyid] = @societyid, [type] = @type, [rating] = @rating WHERE [aadhar] = @original_aadhar AND [spname] = @original_spname AND [contact] = @original_contact AND [societyid] = @original_societyid AND [type] = @original_type AND (([rating] = @original_rating) OR ([rating] IS NULL AND @original_rating IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_aadhar" Type="Int64" />
                    <asp:Parameter Name="original_spname" Type="String" />
                    <asp:Parameter Name="original_contact" Type="Int64" />
                    <asp:Parameter Name="original_societyid" Type="Int32" />
                    <asp:Parameter Name="original_type" Type="String" />
                    <asp:Parameter Name="original_rating" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="aadhar" Type="Int64" />
                    <asp:Parameter Name="spname" Type="String" />
                    <asp:Parameter Name="contact" Type="Int64" />
                    <asp:Parameter Name="societyid" Type="Int32" />
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="rating" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="Maid" Name="type" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="spname" Type="String" />
                    <asp:Parameter Name="contact" Type="Int64" />
                    <asp:Parameter Name="societyid" Type="Int32" />
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="rating" Type="Int32" />
                    <asp:Parameter Name="original_aadhar" Type="Int64" />
                    <asp:Parameter Name="original_spname" Type="String" />
                    <asp:Parameter Name="original_contact" Type="Int64" />
                    <asp:Parameter Name="original_societyid" Type="Int32" />
                    <asp:Parameter Name="original_type" Type="String" />
                    <asp:Parameter Name="original_rating" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Insert Maid Details</asp:LinkButton>
            <br />
            <br />
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="aadhar" DataSourceID="SqlDataSource3" ShowFooter="True">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:TemplateField HeaderText="aadhar" SortExpression="aadhar">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("aadhar") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("aadhar") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtaadhar" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="spname" SortExpression="spname">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("spname") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("spname") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtspname" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="contact" SortExpression="contact">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("contact") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("contact") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="societyid" SortExpression="societyid">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("societyid") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("societyid") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="ddlsocietyid" runat="server">
                                <asp:ListItem>Select SocietyID</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                            </asp:DropDownList>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="type" SortExpression="type">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("type") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("type") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="ddltype" runat="server">
                                <asp:ListItem>Select Type</asp:ListItem>                          
                                <asp:ListItem>Electrician</asp:ListItem>                       
                            </asp:DropDownList>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="rating" SortExpression="rating">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("rating") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("rating") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtrating" runat="server"></asp:TextBox>
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
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ESocietyConnectionString6 %>" DeleteCommand="DELETE FROM [ServiceProviders] WHERE [aadhar] = @original_aadhar AND [spname] = @original_spname AND [contact] = @original_contact AND [societyid] = @original_societyid AND [type] = @original_type AND (([rating] = @original_rating) OR ([rating] IS NULL AND @original_rating IS NULL))" InsertCommand="INSERT INTO [ServiceProviders] ([aadhar], [spname], [contact], [societyid], [type], [rating]) VALUES (@aadhar, @spname, @contact, @societyid, @type, @rating)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ServiceProviders] WHERE ([type] = @type)" UpdateCommand="UPDATE [ServiceProviders] SET [spname] = @spname, [contact] = @contact, [societyid] = @societyid, [type] = @type, [rating] = @rating WHERE [aadhar] = @original_aadhar AND [spname] = @original_spname AND [contact] = @original_contact AND [societyid] = @original_societyid AND [type] = @original_type AND (([rating] = @original_rating) OR ([rating] IS NULL AND @original_rating IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_aadhar" Type="Int64" />
                    <asp:Parameter Name="original_spname" Type="String" />
                    <asp:Parameter Name="original_contact" Type="Int64" />
                    <asp:Parameter Name="original_societyid" Type="Int32" />
                    <asp:Parameter Name="original_type" Type="String" />
                    <asp:Parameter Name="original_rating" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="aadhar" Type="Int64" />
                    <asp:Parameter Name="spname" Type="String" />
                    <asp:Parameter Name="contact" Type="Int64" />
                    <asp:Parameter Name="societyid" Type="Int32" />
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="rating" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="Electrician" Name="type" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="spname" Type="String" />
                    <asp:Parameter Name="contact" Type="Int64" />
                    <asp:Parameter Name="societyid" Type="Int32" />
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="rating" Type="Int32" />
                    <asp:Parameter Name="original_aadhar" Type="Int64" />
                    <asp:Parameter Name="original_spname" Type="String" />
                    <asp:Parameter Name="original_contact" Type="Int64" />
                    <asp:Parameter Name="original_societyid" Type="Int32" />
                    <asp:Parameter Name="original_type" Type="String" />
                    <asp:Parameter Name="original_rating" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Insert Electrician Details</asp:LinkButton>
            <br />
            <br />
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="aadhar" DataSourceID="SqlDataSource4" ShowFooter="True">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:TemplateField HeaderText="aadhar" SortExpression="aadhar">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("aadhar") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("aadhar") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtaadhar" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="spname" SortExpression="spname">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("spname") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("spname") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtspname" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="contact" SortExpression="contact">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("contact") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("contact") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="societyid" SortExpression="societyid">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("societyid") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("societyid") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="ddlsocietyid" runat="server">
                                <asp:ListItem>Select SocietyID</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                            </asp:DropDownList>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="type" SortExpression="type">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("type") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("type") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="ddltype" runat="server">
                                <asp:ListItem>Select Type</asp:ListItem>
                                <asp:ListItem>Plumber</asp:ListItem>
                            </asp:DropDownList>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="rating" SortExpression="rating">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("rating") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("rating") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtrating" runat="server"></asp:TextBox>
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
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ESocietyConnectionString7 %>" DeleteCommand="DELETE FROM [ServiceProviders] WHERE [aadhar] = @original_aadhar AND [spname] = @original_spname AND [contact] = @original_contact AND [societyid] = @original_societyid AND [type] = @original_type AND (([rating] = @original_rating) OR ([rating] IS NULL AND @original_rating IS NULL))" InsertCommand="INSERT INTO [ServiceProviders] ([aadhar], [spname], [contact], [societyid], [type], [rating]) VALUES (@aadhar, @spname, @contact, @societyid, @type, @rating)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ServiceProviders] WHERE ([type] = @type)" UpdateCommand="UPDATE [ServiceProviders] SET [spname] = @spname, [contact] = @contact, [societyid] = @societyid, [type] = @type, [rating] = @rating WHERE [aadhar] = @original_aadhar AND [spname] = @original_spname AND [contact] = @original_contact AND [societyid] = @original_societyid AND [type] = @original_type AND (([rating] = @original_rating) OR ([rating] IS NULL AND @original_rating IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_aadhar" Type="Int64" />
                    <asp:Parameter Name="original_spname" Type="String" />
                    <asp:Parameter Name="original_contact" Type="Int64" />
                    <asp:Parameter Name="original_societyid" Type="Int32" />
                    <asp:Parameter Name="original_type" Type="String" />
                    <asp:Parameter Name="original_rating" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="aadhar" Type="Int64" />
                    <asp:Parameter Name="spname" Type="String" />
                    <asp:Parameter Name="contact" Type="Int64" />
                    <asp:Parameter Name="societyid" Type="Int32" />
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="rating" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="Plumber" Name="type" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="spname" Type="String" />
                    <asp:Parameter Name="contact" Type="Int64" />
                    <asp:Parameter Name="societyid" Type="Int32" />
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="rating" Type="Int32" />
                    <asp:Parameter Name="original_aadhar" Type="Int64" />
                    <asp:Parameter Name="original_spname" Type="String" />
                    <asp:Parameter Name="original_contact" Type="Int64" />
                    <asp:Parameter Name="original_societyid" Type="Int32" />
                    <asp:Parameter Name="original_type" Type="String" />
                    <asp:Parameter Name="original_rating" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Insert Plumber Details</asp:LinkButton>
            <br />
            <br />
            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="aadhar" DataSourceID="SqlDataSource5" ShowFooter="True">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:TemplateField HeaderText="aadhar" SortExpression="aadhar">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("aadhar") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("aadhar") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtaadhar" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="spname" SortExpression="spname">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("spname") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("spname") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtspname" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="contact" SortExpression="contact">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("contact") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("contact") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="societyid" SortExpression="societyid">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("societyid") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("societyid") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="ddlsocietyid" runat="server">
                                <asp:ListItem>Select SocietyID</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                            </asp:DropDownList>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="type" SortExpression="type">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("type") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("type") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="ddltype" runat="server">
                                <asp:ListItem>Select Type</asp:ListItem>
                                <asp:ListItem>Carpenter</asp:ListItem>  
                            </asp:DropDownList>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="rating" SortExpression="rating">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("rating") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("rating") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtrating" runat="server"></asp:TextBox>
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
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ESocietyConnectionString8 %>" DeleteCommand="DELETE FROM [ServiceProviders] WHERE [aadhar] = @original_aadhar AND [spname] = @original_spname AND [contact] = @original_contact AND [societyid] = @original_societyid AND [type] = @original_type AND (([rating] = @original_rating) OR ([rating] IS NULL AND @original_rating IS NULL))" InsertCommand="INSERT INTO [ServiceProviders] ([aadhar], [spname], [contact], [societyid], [type], [rating]) VALUES (@aadhar, @spname, @contact, @societyid, @type, @rating)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ServiceProviders] WHERE ([type] = @type)" UpdateCommand="UPDATE [ServiceProviders] SET [spname] = @spname, [contact] = @contact, [societyid] = @societyid, [type] = @type, [rating] = @rating WHERE [aadhar] = @original_aadhar AND [spname] = @original_spname AND [contact] = @original_contact AND [societyid] = @original_societyid AND [type] = @original_type AND (([rating] = @original_rating) OR ([rating] IS NULL AND @original_rating IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_aadhar" Type="Int64" />
                    <asp:Parameter Name="original_spname" Type="String" />
                    <asp:Parameter Name="original_contact" Type="Int64" />
                    <asp:Parameter Name="original_societyid" Type="Int32" />
                    <asp:Parameter Name="original_type" Type="String" />
                    <asp:Parameter Name="original_rating" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="aadhar" Type="Int64" />
                    <asp:Parameter Name="spname" Type="String" />
                    <asp:Parameter Name="contact" Type="Int64" />
                    <asp:Parameter Name="societyid" Type="Int32" />
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="rating" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="Carpenter" Name="type" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="spname" Type="String" />
                    <asp:Parameter Name="contact" Type="Int64" />
                    <asp:Parameter Name="societyid" Type="Int32" />
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="rating" Type="Int32" />
                    <asp:Parameter Name="original_aadhar" Type="Int64" />
                    <asp:Parameter Name="original_spname" Type="String" />
                    <asp:Parameter Name="original_contact" Type="Int64" />
                    <asp:Parameter Name="original_societyid" Type="Int32" />
                    <asp:Parameter Name="original_type" Type="String" />
                    <asp:Parameter Name="original_rating" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Insert Carpenter Details</asp:LinkButton>
            <br />
        </div>
    </form>
</body>
</html>
