<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UsersControl.aspx.cs" Inherits="Project.UsersControl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" style="width: 100%; ">
    <tr>
        <td colspan="3" style="color: #FFFFFF; text-align: center; height: 34px;" class="auto-style6">
            <h2 style="background-color: #000000">Users Control</h2>
        </td>
    </tr>
    <tr>
        <td style="width: 30px">&nbsp;</td>
        <td style="width: 1125px">
            <div style="text-align: center">
                <asp:Panel ID="Panel1" runat="server" Height="100%" Width="100%">
    <br />
                    <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="FN" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:ButtonField CommandName="edit" Text="Edit" />
                            <asp:ButtonField CommandName="delete" ShowHeader="True" Text="Delete" />
                            <asp:BoundField DataField="FN" HeaderText="FN" ReadOnly="True" SortExpression="FN" />
                            <asp:BoundField DataField="LN" HeaderText="LN" SortExpression="LN" />
                            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                            <asp:BoundField DataField="PASS" HeaderText="PASS" SortExpression="PASS" />
                            <asp:BoundField DataField="COUNTRY" HeaderText="COUNTRY" SortExpression="COUNTRY" />
                            <asp:BoundField DataField="PassQuestion" HeaderText="PassQuestion" SortExpression="PassQuestion" />
                            <asp:BoundField DataField="PassAnswer" HeaderText="PassAnswer" SortExpression="PassAnswer" />
                            <asp:CheckBoxField DataField="IsAdmin" HeaderText="IsAdmin" SortExpression="IsAdmin" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" ProviderName="<%$ ConnectionStrings:ConnectionString5.ProviderName %>" SelectCommand="SELECT * FROM [Users] ORDER BY [EMAIL]"></asp:SqlDataSource>
                    <br />
                        <br />
                       <h3> <span style="color: #FFFFFF">you have reached the end of the page</span></h3>
                </asp:Panel>
            </div>
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
