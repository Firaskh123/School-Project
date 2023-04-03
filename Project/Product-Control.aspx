<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Product-Control.aspx.cs" Inherits="Project.Product_Control" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" style="width: 100%; ">
        <tr>
            <td colspan="3" style="color: #FFFFFF; text-align: center; background-color: #000000; height: 116px;">
                <h2>Product Control
                <br /><asp:Button ID="ButtonView" runat="server" Height="40px" Text="View All Products" Width="160px" OnClick="ButtonView_Click" />
            &nbsp;<asp:Button ID="ButtonAdd" runat="server" Height="40px" Text="Add Product" Width="160px" OnClick="ButtonAdd_Click" />
                &nbsp;<asp:Button ID="ButtonAdd0" runat="server" Height="40px" Text="Add Category" Width="160px" OnClick="ButtonAdd0_Click" />
                </h2>
            </td>
        </tr>
        <tr>
            <td style="width: 30px">&nbsp;</td>
            <td style="width: 1125px">
                <div style="text-align: center">
                <asp:Panel ID="Panel1" runat="server" Visible="False" Height="100%" Width="100%">
                    <br />
                    <br />
                    <asp:GridView ID="GridViewAllUsers" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" AllowSorting="True" GridLines="Vertical" OnRowDeleting="GridViewAllUsers_RowDeleting">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:ButtonField CommandName="delete" Text="Delete" />
                            <asp:BoundField DataField="Product Code" HeaderText="Product Code" SortExpression="Product Code" />
                            <asp:BoundField DataField="Product Name" HeaderText="Product Name" SortExpression="Product Name" />
                            <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                            <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                            <asp:ImageField DataImageUrlField="Product Image" HeaderText="Product Image">
                                <ControlStyle Height="150px" Width="100px" />
                            </asp:ImageField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="Gray" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
                    <h3 style="background-color: #000000">
                        <br />
                        <span style="color: #FFFFFF">you have reached the end of the page</span></h3>
                </asp:Panel>
                </div>
                <asp:Panel ID="Panel2" runat="server" BackColor="Black" Visible="False" style="color: #FFFFFF">
                
                <table align="center" class="auto-style10">
                    <tr>
                        <td class="auto-style13"></td>
                        <td class="auto-style11" colspan="2">
                            <h2 style="text-align: center">Add New Product</h2>
                        </td>
                        <td class="auto-style9"></td>
                    </tr>
                    <tr>
                        <td class="auto-style15"></td>
                        <td class="auto-style18" style="text-align: right">
                            <h3>Product Code:</h3>
                        </td>
                        <td class="auto-style12">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style12">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style23" ErrorMessage="*Field must not be empty" ForeColor="Red" ValidationGroup="AddProduct"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15"></td>
                        <td class="auto-style18" style="text-align: right">
                            <h3>Product Name:</h3>
                        </td>
                        <td class="auto-style12">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style12">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style23" ErrorMessage="*Field must not be empty" ForeColor="Red" ValidationGroup="AddProduct"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13"></td>
                        <td class="auto-style17" style="text-align: right">
                            <h3>Product Category:</h3>
                        </td>
                        <td class="auto-style9">
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="CategoryName">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString10 %>" ProviderName="<%$ ConnectionStrings:ConnectionString10.ProviderName %>" SelectCommand="SELECT [CategoryName] FROM [Categories] ORDER BY [CategoryName]"></asp:SqlDataSource>
                        </td>
                        <td class="auto-style9"></td>
                    </tr>
                    <tr>
                        <td class="auto-style15" style="height: 26px"></td>
                        <td class="auto-style18" style="text-align: right; height: 26px">
                            <h3>Product Price:</h3>
                        </td>
                        <td class="auto-style12" style="height: 26px">
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style12" style="height: 26px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" CssClass="auto-style23" ErrorMessage="*Field must not be empty" ForeColor="Red" ValidationGroup="AddProduct"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">&nbsp;</td>
                        <td class="auto-style16" style="text-align: right">
                            <h3>Product Amount:</h3>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" CssClass="auto-style23" ErrorMessage="*Field must not be empty" ForeColor="Red" ValidationGroup="AddProduct"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15"></td>
                        <td class="auto-style18" style="text-align: right">
                            <h3>Product Image:</h3>
                        </td>
                        <td class="auto-style12">
                            <asp:FileUpload ID="FileUpload1" runat="server" Height="29px" Width="214px" />
                        </td>
                        <td class="auto-style12">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="FileUpload1" CssClass="auto-style23" ErrorMessage="*Field must not be empty" ForeColor="Red" ValidationGroup="AddProduct"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">&nbsp;</td>
                        <td class="auto-style16">
                            <h3>&nbsp;</h3>
                        </td>
                        <td>
                            <br />
                            <asp:Button ID="Button2" runat="server" Height="34px" Text="Add Product" Width="117px" OnClick="Button2_Click" />
                        </td>
                        <td>
                            <asp:Label ID="LabelForErrors" runat="server" Text="errors" Visible="False"></asp:Label>
                        </td>
                    </tr>
                </table>
                </asp:Panel>
                <asp:Panel ID="Panel3" runat="server" BackColor="Black" style="color: #FFFFFF">
                    <table align="center" class="auto-style1" style="height: 132px">
                        <tr>
                            <td class="auto-style11" colspan="2">
                                <h2 class="auto-style7" style="text-align: center">Add Category </h2>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style13" style="text-align: right">
                                <h3 style="color: #FFFFFF">Category Name:</h3>
                            </td>
                            <td class="auto-style10">
                                <asp:TextBox ID="TextBox3" runat="server" Width="173px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style14" style="text-align: right; height: 38px">
                                <h3 style="color: #FFFFFF">Category Image:</h3>
                            </td>
                            <td style="height: 38px">
                                <asp:FileUpload ID="FileUpload2" runat="server" Height="34px" Width="205px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style14">&nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Height="43px" OnClick="Button1_Click" Text="Add" Width="93px" />
                                &nbsp;<asp:Label ID="Labelforerrror" runat="server" Text="errors" Visible="False"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td style="width: 30px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 30px">&nbsp;</td>
            <td style="width: 1125px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
