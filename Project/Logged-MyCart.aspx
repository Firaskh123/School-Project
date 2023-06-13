<%@ Page Title="" Language="C#" MasterPageFile="~/Logged.Master" AutoEventWireup="true" CodeBehind="Logged-MyCart.aspx.cs" Inherits="Project.Logged_MyCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:Panel ID="Panel1" runat="server" style="background-color: #000000">
    <table align="center" style="width: 100%">
        <tr>
            <td style="height: 33px"></td>
            <td style="height: 33px">
                <h2 style="color: #FFFFFF; text-align: center;">My Cart</h2>
            </td>
            <td style="height: 33px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <div>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Email" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" AllowSorting="True">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                            <asp:BoundField DataField="ProductCode" HeaderText="ProductCode" SortExpression="ProductCode" />
                            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                            <asp:BoundField DataField="ProductCategory" HeaderText="ProductCategory" SortExpression="ProductCategory" />
                            <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
                            <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                            <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
                            <asp:CommandField ShowDeleteButton="True">
                            <ControlStyle Font-Bold="True" ForeColor="Red" />
                            </asp:CommandField>
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
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString11 %>" ProviderName="<%$ ConnectionStrings:ConnectionString11.ProviderName %>" SelectCommand="SELECT * FROM [Orders] WHERE (([Email] = ?) AND ([Status] = ?))">
                    <SelectParameters>
                        <asp:SessionParameter Name="Email" SessionField="email" Type="String" />
                        <asp:Parameter DefaultValue="&quot;InCart&quot;" Name="Status" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <h3 style="color: #FFFFFF; text-align: left">Total price : <asp:TextBox ID="TextBoxTotal" runat="server" Height="25px" ReadOnly="True"></asp:TextBox>
&nbsp;
                    <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Text="Pay" Width="85px" />
                </h3>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </asp:Panel>
        <strong>
    <asp:Panel ID="Panel2" runat="server" style="color: #FFFFFF; background-color: #000000;" Visible="False">
        <table style="width: 100%">
            <tr>
                <td>
                    <h3></h3>
                </td>
                <td colspan="2">
                    <h2 style="text-align: center"><strong>Payment:</strong></h2>
                </td>
                <td>
                    <h3></h3>
                </td>
            </tr>
            <tr>
                <td style="height: 23px">
                    <h3></h3>
                </td>
                <td style="height: 23px">
                    <h3>Total Price:</h3>
                </td>
                <td style="height: 23px">
                    <h3>
                        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
                        </strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox1" CssClass="auto-style25" ErrorMessage="*Field must not be empty" ForeColor="Red" style="font-weight: normal" ValidationGroup="Visa"></asp:RequiredFieldValidator>
                    </h3>
                </td>
                <strong>
                <td style="height: 23px">
                    <h3></h3>
                </td>
                </strong>
            </tr>
            <tr>
                <td>
                    <h3></h3>
                </td>
                <td>
                    <h3>Visa Account Name:</h3>
                </td>
                <td>
                    <h3>
                        <asp:TextBox ID="TextBox2" runat="server" Width="150px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox2" CssClass="auto-style25" ErrorMessage="*Field must not be empty" ForeColor="Red" style="font-weight: normal" ValidationGroup="Visa"></asp:RequiredFieldValidator>
                    </h3>
                </td>
                <td>
                    <h3></h3>
                </td>
            </tr>
            <tr>
                <td>
                    <h3></h3>
                </td>
                <td>
                    <h3>Visa Number:</h3>
                </td>
                <td>
                    <h3><strong>
                        <asp:TextBox ID="TextBox3" runat="server" Width="150px"></asp:TextBox>
                        </strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox3" CssClass="auto-style25" ErrorMessage="*Field must not be empty" ForeColor="Red" style="font-weight: normal" ValidationGroup="Visa"></asp:RequiredFieldValidator>
                        </strong>&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Format is incorrect" ValidationExpression="^\d{16,}$" ValidationGroup="Visa" style="font-weight: normal; color: #FF0000"></asp:RegularExpressionValidator>
                    </h3>
                </td>
                <strong>
                <td>
                    <h3></h3>
                </td>
                </strong>
            </tr>
            <tr>
                <td>
                    <h3></h3>
                </td>
                <td>
                    <h3>Expiry Date:</h3>
                </td>
                <td>
                    <h3 style="text-align: left">
                        <asp:TextBox ID="TextBox5" runat="server" Width="100px"></asp:TextBox>
                        (MM,YY)<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox4" CssClass="auto-style25" ErrorMessage="*Field must not be empty" ForeColor="Red" style="font-weight: normal" ValidationGroup="Visa"></asp:RequiredFieldValidator>
                        </strong></strong>&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="*Format is incorrect" style="font-weight: normal; color: #FF0000" ValidationExpression="^(0[1-9]|1[0-2])\/\d{2}$" ValidationGroup="Visa "></asp:RegularExpressionValidator>
                    </h3>
                </td>
                <strong>
                <td>
                    <h3></h3>
                </td>
                </strong>
            </tr>
            <tr>
                <td style="height: 30px">
                    <h3></h3>
                </td>
                <td style="height: 30px">
                    <h3>CVV Number:</h3>
                </td>
                <td style="height: 30px">
                    <h3><strong>
                        <asp:TextBox ID="TextBox4" runat="server" Width="150px"></asp:TextBox>
                        </strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox5" CssClass="auto-style25" ErrorMessage="*Field must not be empty" ForeColor="Red" style="font-weight: normal" ValidationGroup="Visa"></asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Format is incorrect" style="font-weight: normal; color: #FF0000" ValidationExpression="^\d{3,}$" ValidationGroup="Visa"></asp:RegularExpressionValidator>
                    </h3>
                </td>
                <td style="height: 30px">
                    <h3></h3>
                </td>
            </tr>
            <tr>
                <td>
                    <h3></h3>
                </td>
                <td>
                    <h3>
                        <asp:Button ID="Button3" runat="server" Height="30px" OnClick="Button3_Click" Text="Go Back" />
                    </h3>
                </td>
                <td>
                    <h3>
                        <asp:Button ID="Button2" runat="server" Height="30px" Text="Procceed to payment" />
                    </h3>
                </td>
                <td>
                    <h3></h3>
                </td>
            </tr>
            <tr>
                <td>
                    <h3></h3>
                </td>
                <td colspan="2">
                    <h3></h3>
                </td>
                <td>
                    <h3></h3>
                </td>
            </tr>
        </table>

    </asp:Panel>
</asp:Content>
