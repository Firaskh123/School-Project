<%@ Page Title="" Language="C#" MasterPageFile="~/UnLogged.Master" AutoEventWireup="true" CodeBehind="Sign-Up.aspx.cs" Inherits="Project.Sign_Up" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    .auto-style23 {
        width:69px;
        color: #FFFFFF;
    }
        .auto-style36 {
            width: 100%;
        }
        .auto-style17 {
            height: 20px;
            width: 245px;
        color: #FFFFFF;
        }
        .auto-style35 {
            height: 20px;
        }
        .auto-style18 {
            height: 42px;
            width: 245px;
        color: #FFFFFF;
        }
        .auto-style34 {
            height: 42px;
        }
        .auto-style20 {
            text-align: left;
            width: 245px;
        color: #FFFFFF;
        }
        .auto-style14 {
        text-align: left;
        }
        .auto-style32 {
            height: 26px;
        }
        .auto-style22 {
            width: 245px;
            height: 21px;
        color: #FFFFFF;
        }
        .auto-style33 {
            height: 21px;
        }
        .auto-style27 {
            width: 245px;
            color: #FFFFFF;
            height: 29px;
        }
        .auto-style31 {
            color: #FFFFFF;
            height: 29px;
        }
        .auto-style29 {
            color: #FFFFFF;
        }
        .auto-style19 {
            width: 245px;
        }
        .auto-style25 {
            background-color: #FFFFFF;
        }
        .auto-style37 {
            color: #FFFFFF;
            width: 69px;
        }
        .auto-style38 {
            width: 245px;
            color: #FFFFFF;
        }
        .auto-style39 {
            height: 26px;
            width: 245px;
            color: #FFFFFF;
        }
        .auto-style40 {
            height: 22px;
        }
        .auto-style41 {
            color: #FFFFFF;
            text-align: center;
        }
        .auto-style42 {
            background-color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style1">
        <tr>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style14">
                <asp:Panel ID="Panel1" runat="server" CssClass="auto-style42">
                    <table align="center" class="auto-style36">
                        <tr>
                            <td colspan="2" class="auto-style40">
                                <h2 class="auto-style41">Sign In</h2>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17">First name:</td>
                            <td class="auto-style35">
                                <asp:TextBox ID="TextBox1" runat="server" Width="135px"></asp:TextBox>
                                <br class="auto-style23" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style23" ErrorMessage="*Field must not be empty" ForeColor="Red" ValidationGroup="Signup"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style18">Last name:</td>
                            <td class="auto-style34">
                                <asp:TextBox ID="TextBox2" runat="server" Width="135px"></asp:TextBox>
                                <br class="auto-style23" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" CssClass="auto-style23" ErrorMessage="*Field must not be empty" ForeColor="Red" ValidationGroup="Signup"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style38">Email:</td>
                            <td class="auto-style30">
                                <asp:TextBox ID="TextBox3" runat="server" TextMode="Email" ValidationGroup="Signup" Width="207px"></asp:TextBox>
                                <br class="auto-style23" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox3" CssClass="auto-style23" ErrorMessage="*Field must not be empty" ForeColor="Red" ValidationGroup="Signup"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style38">Country:</td>
                            <td class="auto-style30">
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem Selected="True">Israel</asp:ListItem>
                                    <asp:ListItem>France</asp:ListItem>
                                    <asp:ListItem>USA</asp:ListItem>
                                    <asp:ListItem>UK</asp:ListItem>
                                    <asp:ListItem>Germany</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style39">Password:</td>
                            <td class="auto-style32">
                                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="190px"></asp:TextBox>
                                <br class="auto-style23" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox4" CssClass="auto-style23" ErrorMessage="*Field must not be empty" ForeColor="Red" ValidationGroup="Signup"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style22">Confirm Password:</td>
                            <td class="auto-style33">
                                <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" Width="190px"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" CssClass="auto-style23" ErrorMessage="* Passwords do not match" ForeColor="Red" ValidationGroup="Signup"></asp:CompareValidator>
                                <br class="auto-style23" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox5" CssClass="auto-style23" ErrorMessage="*Field must not be empty" ForeColor="Red" ValidationGroup="Signup"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style39">Verification Question :</td>
                            <td class="auto-style32">
                                <asp:DropDownList ID="DropDownList2" runat="server">
                                    <asp:ListItem Selected="True" Value="What is your favorite color?">What is your favorite color?</asp:ListItem>
                                    <asp:ListItem Value="What is your dog name?">What is your dog name?</asp:ListItem>
                                    <asp:ListItem Value="What is your mothers name?">What is your mothers name?</asp:ListItem>
                                </asp:DropDownList>
                                <br class="auto-style23" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style27">Verification Answer:</td>
                            <td class="auto-style31">
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox6" CssClass="auto-style23" ErrorMessage="*Field must not be empty" ForeColor="Red" ValidationGroup="Signup"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style38">&nbsp;</td>
                            <td class="auto-style29">
                                <asp:CheckBox ID="CheckBoxPerms" runat="server" OnCheckedChanged="CheckBoxPerms_CheckedChanged" Text="I agree to the Terms of Services" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style19">
                                <asp:Button ID="Button10" runat="server" Height="31px" PostBackUrl="~/Sign-Up.aspx" Text="Clear All" Width="73px" />
                            </td>
                            <td class="auto-style30">
                                <asp:Button ID="Button9" runat="server" BackColor="White" CssClass="auto-style25" Height="31px" OnClick="Button_SignUpClick" Text="Sign up" ValidationGroup="Signup" Width="73px" />
                                <asp:Label ID="Labelforerrors" runat="server" CssClass="auto-style23" ForeColor="Red" Text="errors" Visible="False"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style38">&nbsp;</td>
                            <td class="auto-style29">&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="auto-style23">&nbsp;</td>
        </tr>
        </table>
</asp:Content>
