<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Product-Control.aspx.cs" Inherits="Project.Product_Control" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" style="width: 100%; ">
        <tr>
            <td colspan="3" style="color: #FFFFFF; text-align: center; background-color: #000000; height: 116px;">
                <h2>Product Control
                <br /><asp:Button ID="ButtonView" runat="server" Height="40px" Text="View All Products" Width="160px" OnClick="ButtonView_Click" />
            &nbsp;<asp:Button ID="ButtonAdd" runat="server" Height="40px" Text="Add Product" Width="160px" />
                </h2>
            </td>
        </tr>
        <tr>
            <td style="width: 30px">&nbsp;</td>
            <td style="width: 1125px">
                <div style="text-align: center">
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <asp:Label ID="LabelFortable" runat="server" style="color: #FFFFFF; font-size: large;" Text="Tablelabel"></asp:Label>
                    <br />
                    <asp:GridView ID="GridViewAllUsers" runat="server" BackColor="#333333" BorderColor="#999999" BorderStyle="Solid" BorderWidth="5px" CellPadding="4" CellSpacing="2" ForeColor="Black" OnRowDeleting="GridViewAllUsers_RowDeleting" OnRowEditing="GridViewAllUsers_RowEditing" OnRowUpdated="GridViewAllUsers_RowUpdated">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:CommandField ShowEditButton="True" />
                            <asp:CommandField ShowDeleteButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <h3 style="background-color: #000000">
                        <br />
                        <span style="color: #FFFFFF">you have reached the end of the page</span></h3>
                </asp:Panel>
                </div>
                <asp:Panel ID="Panel2" runat="server" Visible="False"></asp:Panel>
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
