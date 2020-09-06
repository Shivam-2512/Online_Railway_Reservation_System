<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Forgotpassword.aspx.vb" Inherits="Forgotpassword" title="Online Railway Reservation System - Forgotpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 30px;
        }
        .style2
        {
            height: 30px;
            width: 263px;
        }
        .style3
        {
            width: 263px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 73%; font-family: 'Times New Roman'; font-size: x-large; font-weight: bold;">
        <tr>
            <td class="style2">
                User ID:</td>
            <td class="style1">
                <asp:TextBox ID="TextBox1" runat="server" Width="173px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter User ID"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Security Question :</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>What is your pets Name?</asp:ListItem>
                    <asp:ListItem>What was the name of your first school?</asp:ListItem>
                    <asp:ListItem>Who was your childhood Hero??</asp:ListItem>
                    <asp:ListItem>What is your favourite Past-Time?</asp:ListItem>
                    <asp:ListItem>What is your all-time favourite sports team?</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Security Answer :</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="22px" Width="174px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter Security Answer"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr align="center">
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" Height="24px" Text="Ok" Width="94px" />
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
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>

