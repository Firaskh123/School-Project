<%@ Page Title="" Language="C#" MasterPageFile="~/Logged.Master" AutoEventWireup="true" CodeBehind="Logged-ViewCategories.aspx.cs" Inherits="Project.LoggedViewCategories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table style="width: 100%">
        <tr>
            <td style="color: #FFFFFF" colspan="2">&nbsp;</td>
            <td style="color: #FFFFFF">&nbsp;</td>
        </tr>
        <tr>
            <td style="color: #FFFFFF">&nbsp;</td>
            <td style="color: #FFFFFF">
                    <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" DataKeyField="CategoryName" DataSourceID="SqlDataSource2" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                        <AlternatingItemStyle BackColor="White" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="#EFF3FB" />
                        <ItemTemplate>
                            <div style="text-align: center">
                                &nbsp;<br />
                                <asp:ImageButton ID="ImageButton2" runat="server" CommandName="select" Height="100px" ImageUrl='<%# Eval("CategoryImage") %>' Width="100px" />
                                <br />
                            </div>
                            <h4 style="text-align: center"><strong>
                                <asp:Label ID="CategoryNameLabel" runat="server" style="text-decoration: underline" Text='<%# Eval("CategoryName") %>' />
                                </strong></h4>
                            <br />
                            <br />
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString8 %>" ProviderName="<%$ ConnectionStrings:ConnectionString8.ProviderName %>" SelectCommand="SELECT * FROM [Categories] ORDER BY [CategoryName]"></asp:SqlDataSource>
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
