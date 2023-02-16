<%@ Page Title="" Language="C#" MasterPageFile="~/UnLogged.Master" AutoEventWireup="true" CodeBehind="UnLoggedForgotPass.aspx.cs" Inherits="Project.UnLoggedForgotPass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style11 {
        height: 20px;
        text-align: center;
        background-color:black;
    }
    .auto-style25 {
        color: #FFFFFF;
    }
    .auto-style10 {
        height: 20px;
        width: 11%;
    }
        .auto-style22 {
            width: 61%;
            height: 31px;
        }
        .auto-style24 {
            width: 15%;
            height: 31px;
        }
    .auto-style16 {
        width: 35%;
    }
    .auto-style20 {
        width: 11%;
        color: #FFFFFF;
    }
        .auto-style29 {
            width: 100%;
            height: 65px;
        }

        .auto-style27 {
            width: 15%;
            color: #FFFFFF;
            height: 26px;
        }
        .auto-style28 {
            width: 35%;
            height: 26px;
        }
        .auto-style26 {
        width: 18%;
        color: #FFFFFF;
    }
        .auto-style30 {
            height: 29px;
        }
        .auto-style31 {
            height: 29px;
            width: 95px;
        }
        .auto-style34 {
            height: 29px;
            width: 86px;
        }
        .auto-style35 {
            width: 86px;
        }
        .auto-style36 {
            width: 95px;
        }
        .auto-style37 {
            width: 15%;
            color: #FFFFFF;
        }
        .auto-style38 {
            width: 6%;
            color: #FFFFFF;
            height: 26px;
        }
        .auto-style39 {
            width: 6%;
            color: #FFFFFF;
        }
        .auto-style40 {
            width: 15%;
            height: 31px;
        }
        .auto-style41 {
            width: 15%;
        }
        </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style1">
        <tr>
            <td class="auto-style40">
                &nbsp;</td>
            <td class="auto-style11">
                <h2 class="auto-style25">Forgot Password</h2>
            </td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style40">&nbsp;</td>
            <td class="auto-style22">
                <asp:Panel ID="Email_entrance" runat="server" BackColor="Black">
                    <table align="center" class="auto-style29">
                        <tr>
                            <td class="auto-style34"></td>
                            <td class="auto-style31"><span class="auto-style25">Email:</span></td>
                            <td class="auto-style30">
                                <asp:TextBox ID="TextBox1" runat="server" TextMode="Email" Width="179px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox1" CssClass="auto-style25" ErrorMessage="*Field must not be empty" ForeColor="Red" ValidationGroup="Email"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style35"></td>
                            <td class="auto-style36"></td>
                            <td>
                                <asp:Button ID="Button10" runat="server" BackColor="Lime" OnClick="ButtonCheckEmail_Click" Text="Check Email" ValidationGroup="Email" />
                                <asp:Label ID="Labelforerrors" runat="server" CssClass="auto-style25" Text="error" Visible="False"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    </asp:Panel>
                    <asp:Panel ID="verification_entrance" runat="server" Visible="False" BackColor="Black">
                        <table align="center" class="auto-style1">
                            <tr>
                                <td class="auto-style38">&nbsp;</td>
                                <td class="auto-style27">Verification Question:</td>
                                <td class="auto-style28">
                                    <asp:Label ID="Verification_label" runat="server" CssClass="auto-style25" Text="Question"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style39">&nbsp;</td>
                                <td class="auto-style37">Verification Answer:</td>
                                <td class="auto-style16">
                                    <asp:TextBox ID="TextBox2" runat="server" Width="179px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox2" CssClass="auto-style26" ErrorMessage="*Field must not be empty" ForeColor="Red" ValidationGroup="Verification"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style39">&nbsp;</td>
                                <td class="auto-style37">
                                    <asp:Button ID="Button13" runat="server" OnClick="Button13_Click" Text="Go back" />
                                </td>
                                <td class="auto-style16">
                                    <asp:Button ID="Button11" runat="server" BackColor="Lime" OnClick="ButtonCheckValidation_Click" Text="Check validation" ValidationGroup="Verification" />
                                    <span class="auto-style25">&nbsp; </span>
                                    <asp:Label ID="Labelforerrors0" runat="server" CssClass="auto-style25" Text="error" Visible="False"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                        <asp:Panel ID="Changepassword" runat="server" Visible="False" BackColor="Black">
                            <table align="center" class="auto-style1">
                                <tr>
                                    <td class="auto-style38">&nbsp;</td>
                                    <td class="auto-style27">New Password:</td>
                                    <td class="auto-style28">
                                        <asp:TextBox ID="TextBox4" runat="server" Width="179px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox4" CssClass="auto-style26" ErrorMessage="*Field must not be empty" ForeColor="Red" ValidationGroup="Pass"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style39">&nbsp;</td>
                                    <td class="auto-style37">Repeat Password:</td>
                                    <td class="auto-style16">
                                        <asp:TextBox ID="TextBox3" runat="server" Width="179px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox3" CssClass="auto-style26" ErrorMessage="*Field must not be empty" ForeColor="Red" ValidationGroup="Pass"></asp:RequiredFieldValidator>
                                        &nbsp;<asp:CompareValidator ID="Password_checker" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox3" ErrorMessage="*Password does not match" ForeColor="Red" ValidationGroup="Pass"></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style39">&nbsp;</td>
                                    <td class="auto-style37">
                                        <asp:Button ID="Button14" runat="server" OnClick="Button14_Click" Text="Go back" />
                                    </td>
                                    <td class="auto-style16">
                                        <asp:Button ID="Button12" runat="server" BackColor="Lime" OnClick="ButtonToChangePass_Click" Text="Change Password" ValidationGroup="Pass" />
                                        <span class="auto-style25">&nbsp; </span>
                                        <asp:Label ID="Labelforerrors1" runat="server" CssClass="auto-style25" Text="error" Visible="False"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
            </td>
            <td class="auto-style24"></td>
        </tr>
        <tr>
            <td class="auto-style41">
                <span class="auto-style25">&nbsp;
            </span>
            </td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

