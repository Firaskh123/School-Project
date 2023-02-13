<%@ Page Title="" Language="C#" MasterPageFile="~/UnLogged.Master" AutoEventWireup="true" CodeBehind="Sign-Up.aspx.cs" Inherits="Project.Sign_Up" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>.auto-style10 {
        text-align: center;
    }
    .auto-style11 {
        text-align: left;
        height: 20px;
    }
    .auto-style12 {
        height: 20px;
    }
    .auto-style13 {
        height: 21px;
    }
    .auto-style14 {
        text-align: left;
    }
    .auto-style15 {
        height: 26px;
    }
    .auto-style16 {
        height: 42px;
    }
        .auto-style17 {
            height: 20px;
            width: 153px;
        color: #FFFFFF;
    }
        .auto-style18 {
            height: 42px;
            width: 153px;
        color: #FFFFFF;
    }
        .auto-style19 {
            width: 153px;
        }
        .auto-style20 {
            text-align: left;
            width: 153px;
        color: #FFFFFF;
    }
        .auto-style21 {
            height: 26px;
            width: 153px;
        color: #FFFFFF;
    }
        .auto-style22 {
            width: 153px;
            height: 21px;
        color: #FFFFFF;
    }
    .auto-style23 {
        color: #FFFFFF;
    }
    .auto-style24 {
            width: 153px;
            color: #FFFFFF;
        }</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="Black">
    <table align="center" class="auto-style1">
        <tr>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style10" colspan="2">
                <h2 class="auto-style23"><strong>Sign up</strong></h2>
            </td>
            <td class="auto-style23">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style17">First name:</td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox1" runat="server" Width="135px"></asp:TextBox>
                <br class="auto-style23" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style23" ErrorMessage="*Field must not be empty" ForeColor="Red" ValidationGroup="Signup"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style12"></td>
        </tr>
        <tr>
            <td class="auto-style16"></td>
            <td class="auto-style18">Last name:</td>
            <td class="auto-style16">
                <asp:TextBox ID="TextBox2" runat="server" Width="135px"></asp:TextBox>
                <br class="auto-style23" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" CssClass="auto-style23" ErrorMessage="*Field must not be empty" ForeColor="Red" ValidationGroup="Signup"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style24">Email:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Email" ValidationGroup="Signup" Width="207px"></asp:TextBox>
                <br class="auto-style23" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox3" CssClass="auto-style23" ErrorMessage="*Field must not be empty" ForeColor="Red" ValidationGroup="Signup"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style23">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style20">Gender:</td>
            <td class="auto-style14">
                <asp:RadioButtonList ID="RadioBGender" runat="server" CssClass="auto-style23" RepeatDirection="Horizontal" RepeatLayout="Flow">
                    <asp:ListItem Selected="True" Value="Male">Male</asp:ListItem>
                    <asp:ListItem Value="Female">Female</asp:ListItem>
                    <asp:ListItem Value="N/A">None</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="auto-style23">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style24">Country:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Selected="True">Israel</asp:ListItem>
                    <asp:ListItem>France</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                    <asp:ListItem>UK</asp:ListItem>
                    <asp:ListItem>Germany</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style23">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15"></td>
            <td class="auto-style21">Password:</td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="190px"></asp:TextBox>
                <br class="auto-style23" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox4" CssClass="auto-style23" ErrorMessage="*Field must not be empty" ForeColor="Red" ValidationGroup="Signup"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style15"></td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style22">Confirm Password:</td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" Width="190px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" CssClass="auto-style23" ErrorMessage="* Passwords do not match" ForeColor="Red" ValidationGroup="Signup"></asp:CompareValidator>
                <br class="auto-style23" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox5" CssClass="auto-style23" ErrorMessage="*Field must not be empty" ForeColor="Red" ValidationGroup="Signup"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style24">Verification Question :</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem Selected="True" Value="What is your favorite color?">What is your favorite color?</asp:ListItem>
                    <asp:ListItem Value="What is your dog's name?">What is your dog&#39;s name?</asp:ListItem>
                    <asp:ListItem Value="What is your mother's name?">What is your mother&#39;s name?</asp:ListItem>
                </asp:DropDownList>
                <br class="auto-style23" />
            </td>
            <td class="auto-style23">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style24">Verification Answer:</td>
            <td class="auto-style23">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox6" CssClass="auto-style23" ErrorMessage="*Field must not be empty" ForeColor="Red" ValidationGroup="Signup"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style23">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style23">
                <asp:CheckBox ID="CheckBoxPerms" runat="server" OnCheckedChanged="CheckBoxPerms_CheckedChanged" Text="I agree to the Terms of Services" />
            </td>
            <td class="auto-style23">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style19">
                <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="Clear All" PostBackUrl="~/Sign-Up.aspx" />
            </td>
            <td>
                <asp:Button ID="Button9" runat="server" BackColor="#33CC33" Height="31px" OnClick="Button_SignUpClick" Text="Sign up" ValidationGroup="Signup" Width="73px" />
                <asp:Label ID="Labelforerrors" runat="server" CssClass="auto-style23" ForeColor="Red" Text="errors" Visible="False"></asp:Label>
            </td>
            <td class="auto-style23">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style23">
                
                &nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
        </tr>
    </table>
   </asp:Panel>
</asp:Content>
