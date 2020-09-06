<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Payment.aspx.vb" Inherits="Payment" title="Online Railway Reservation System - Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div align="right" >
           <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="img/Logout.jpg" 
            PostBackUrl="Home.aspx" Height="26px" Width="29px" CausesValidation="False" />         
    </div>
   
    <div>   
        <table style="width: 100%; font-size: x-large; font-weight: bold; font-family: 'Times New Roman';">        
            <tr>
                <td>
                    Rent</td>
                <td>
                    No. of Person&nbsp;
                </td>
                <td>
                    Total Rent</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            </table>
    </div>
    <div>
        <b style="color: #FF0000; font-size: x-large; font-weight: bold;">Payment Option</b>
        <table style="width:86%; font-family: 'Times New Roman'; font-size: x-large; font-weight: bold;">
            <tr>
                <td class= "style1">
                    Payment Mode:
                </td>
                <td class="style1">
                    <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" 
                        Text="Credit Card" />
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Card Type :</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Visa</asp:ListItem>
                        <asp:ListItem>Master</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Card Number :</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Card Number"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Plz enter valid card number" 
                        ValidationExpression="(D-)?\d{8}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Card Expiredate :</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>Jan</asp:ListItem>
                        <asp:ListItem>Feb</asp:ListItem>
                        <asp:ListItem>Mar</asp:ListItem>
                        <asp:ListItem>Apr</asp:ListItem>
                        <asp:ListItem>May</asp:ListItem>
                        <asp:ListItem>Jun</asp:ListItem>
                        <asp:ListItem>Jul</asp:ListItem>
                        <asp:ListItem>Aug</asp:ListItem>
                        <asp:ListItem>Sep</asp:ListItem>
                        <asp:ListItem>Oct</asp:ListItem>
                        <asp:ListItem>Nov</asp:ListItem>
                        <asp:ListItem>Dec</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList3" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    CVV Number :</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="CVV Number"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Plz enter valid card number" 
                        ValidationExpression="(D-)?\d{8}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Make Payment" />
                    &nbsp;&nbsp;&nbsp;<br />
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    &nbsp;&nbsp;
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    </td>
            </tr>
        </table>
    </div>
</asp:Content>

