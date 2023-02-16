<%@ Page Title="" Language="C#" MasterPageFile="~/UnLogged.Master" AutoEventWireup="true" CodeBehind="Sign-In.aspx.cs" Inherits="Project.Sign_In" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style10 {
        width: 11%;
    }
    .auto-style11 {
        height: 20px;
        text-align: left;
    }
    .auto-style15 {
        width: 13%;
    }
        .auto-style25 {
        color: #FFFFFF;
    }
        .auto-style34 {
            width: 100%;
            height: 100%;
        }
        .auto-style30 {
            width: 12%;
            height: 31px;
            color: #FFFFFF;
        }
        .auto-style22 {
            width: 23%;
            height: 31px;
        }
        .auto-style33 {
            width: 12%;
            color: #FFFFFF;
            height: 29px;
        }
        .auto-style27 {
            width: 23%;
            height: 29px;
        }
        .auto-style35 {
            width: 100%;
            height: 167px;
        }
        .auto-style37 {
            width: 12%;
            text-align: center;
        }
        .auto-style38 {
            color: #FFFFFF;
            text-align: center;
        }
        .auto-style39 {
            text-align: right;
        }
        </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style35">
    <tr>
        <td class="auto-style15"></td>
        <td class="auto-style11">
            <asp:Panel ID="Panel1" runat="server" BackColor="Black" Height="188px" Width="690px">
                <table align="center" class="auto-style34">
                    <tr>
                        <td colspan="2">
                            <h2 class="auto-style38">Sign In </h2>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30">
                            <h3 class="auto-style39">Email:&nbsp;&nbsp; </h3>
                        </td>
                        <td class="auto-style22">
                            <asp:TextBox ID="TextBox3" runat="server" TextMode="Email" Width="179px"></asp:TextBox>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox3" CssClass="auto-style25" ErrorMessage="*Field must not be empty" ForeColor="Red" ValidationGroup="SignIn"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style33">
                            <h3 class="auto-style39">Password:&nbsp;&nbsp; </h3>
                        </td>
                        <td class="auto-style27">
                            <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="179px"></asp:TextBox>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox4" CssClass="auto-style25" ErrorMessage="*Field must not be empty" ForeColor="Red" ValidationGroup="SignIn"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style37">
            <asp:Button ID="Button11" runat="server" Text="Clear All" Height="32px" PostBackUrl="~/Sign-In.aspx" Width="87px" />
                            <br />
                            <br />
        </td>
                        <td class="auto-style16">
            <asp:Button ID="Button10" runat="server" OnClick="ButtonLogin_Click" Text="Sign In" Height="32px" Width="87px" />
            <span class="auto-style25">&nbsp;
            </span>
            <asp:Label ID="Labelforerrors" runat="server" Text="error" Visible="False" CssClass="auto-style25"></asp:Label>
                            <br />
                            &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Blue" NavigateUrl="~/UnLoggedForgotPass.aspx">Forgot your password?</asp:HyperLink>
                            
        </td>

                    </tr>
                </table>
            </asp:Panel>
        </td>
        <td class="auto-style10"></td>
    </tr>
    </table>
</asp:Content>


