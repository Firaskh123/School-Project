<%@ Page Title="" Language="C#" MasterPageFile="~/Logged.Master" AutoEventWireup="true" CodeBehind="Logged-Browse.aspx.cs" Inherits="Project.LoggedBrowse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table style="width: 100%">
        <tr>
            <td style="color: #FFFFFF" colspan="2">Browse By:<br />
                <asp:Button ID="Button1" runat="server" Height="40px" Text="Products" Width="90px" />
&nbsp;
                <asp:Button ID="Button2" runat="server" Height="40px" Text="Category" Width="90px" />
            </td>
            <td style="color: #FFFFFF">&nbsp;</td>
        </tr>
        <tr>
            <td style="color: #FFFFFF">&nbsp;</td>
            <td style="color: #FFFFFF">
                <asp:Panel ID="Panel1" runat="server">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:ButtonField Text="More Info" />
                            <asp:BoundField DataField="Product Code" HeaderText="Product Code" SortExpression="Product Code" />
                            <asp:BoundField DataField="Product Name" HeaderText="Product Name" SortExpression="Product Name" />
                            <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                            <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                            <asp:BoundField DataField="Product Image" HeaderText="Product Image" SortExpression="Product Image" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString6 %>" ProviderName="<%$ ConnectionStrings:ConnectionString6.ProviderName %>" SelectCommand="SELECT * FROM [Products] ORDER BY [Product Name]"></asp:SqlDataSource>
                </asp:Panel>
                <asp:Panel ID="Panel2" runat="server">
                </asp:Panel>
            </td>
            <td style="color: #FFFFFF">&nbsp;</td>
        </tr>
        <tr>
            <td style="color: #FFFFFF">&nbsp;</td>
            <td style="color: #FFFFFF">&nbsp;</td>
            <td style="color: #FFFFFF">&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>
