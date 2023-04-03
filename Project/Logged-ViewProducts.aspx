<%@ Page Title="" Language="C#" MasterPageFile="~/Logged.Master" AutoEventWireup="true" CodeBehind="Logged-ViewProducts.aspx.cs" Inherits="Project.Logged_ViewProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:ButtonField CommandName="select" Text="See More" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString9 %>" ProviderName="<%$ ConnectionStrings:ConnectionString9.ProviderName %>" SelectCommand="SELECT * FROM [Products] WHERE ([Category] = ?)">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue=" " Name="?" SessionField="CategoryName" />
                        </SelectParameters>
                    </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
