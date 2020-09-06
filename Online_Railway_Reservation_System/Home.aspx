<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="Home" title="Online Railway Reservation System - Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:60%; font-family: 'Times New Roman'; font-size: x-large; font-weight: bold;">
    <tr>
        <td>
            User ID :</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="182px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Enter User ID"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            Password :</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="181px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:HyperLink ID="HyperLink1" runat="server" 
                NavigateUrl="~/Forgotpassword.aspx">Forgot Password</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Admin_Login.aspx">Admin 
            Login</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" 
                runat="server" Height="44px" ImageUrl="~/img/Login.jpg" Width="57px" />
            &nbsp;&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="44px" 
                ImageUrl="~/img/Register.jpg" PostBackUrl="~/Registration.aspx" 
                Width="57px" CausesValidation="False" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Label" 
                Visible="False"></asp:Label>
        </td>
    </tr>
</table>
<div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</div>
</asp:Content>

