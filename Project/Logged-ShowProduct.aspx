<%@ Page Title="" Language="C#" MasterPageFile="~/Logged.Master" AutoEventWireup="true" CodeBehind="Logged-ShowProduct.aspx.cs" Inherits="Project.Logged_ShowProduct" %>    
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 600px;
            background-color: #CCFFFF;
        }
        .auto-style5 {
            width: 142px;
        }
        .auto-style6 {
            height: 20px;
        }
        .auto-style7 {
            width: 142px;
            height: 20px;
        }
        .auto-style8 {
            text-align: center;
            height: 20px;
        }
        .auto-style9 {
            width: 27px;
        }
        .auto-style10 {
            height: 20px;
            width: 27px;
        }
        .auto-style11 {
            width: 165px;
            height: 20px;
        }
        .auto-style12 {
            width: 165px;
        }
    .auto-style13 {
        height: 59px;
    }
    .auto-style14 {
        width: 32px;
    }
    .auto-style15 {
        width: 900px;
        background-color: #CCFFFF;
        height: 400px;
    }
    </style>
    <table align="center" class="auto-style15">
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style13">
                <asp:Panel ID="Panel1" runat="server" BackColor="Black">
                    <table class="auto-style4" align="center">
                        <tr>
                            <td class="auto-style8" colspan="2">Product INFO</td>
                            <td class="auto-style11"></td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Product Code :</td>
                            <td class="auto-style9">
                                <asp:TextBox ID="TextBoxProdCode0" runat="server" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td class="auto-style12">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Product Name :</td>
                            <td class="auto-style9">
                                <asp:TextBox ID="TextBoxProdName0" runat="server" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td class="auto-style12" rowspan="5">
                                <asp:Image ID="ImageProduct0" runat="server" Height="150px" Width="150px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Product Category :</td>
                            <td class="auto-style9">
                                <asp:TextBox ID="TextBoxProdCat0" runat="server" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Product Price :</td>
                            <td class="auto-style9">
                                <asp:TextBox ID="TextBoxProdPrice0" runat="server" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">Num of Products :</td>
                            <td class="auto-style10">
                                <asp:TextBox ID="TextBoxProdNum0" runat="server" Width="23px">1</asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">Description :</td>
                            <td class="auto-style10">
                                <asp:TextBox ID="TextBoxDescription0" runat="server" ReadOnly="True" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Button ID="Button3" runat="server" Text="Return" />
                            </td>
                            <td class="auto-style9">
                                <asp:Button ID="Button4" runat="server" Text="Add to Cart" />
                            </td>
                            <td class="auto-style12">&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        </table>
</asp:Content>

