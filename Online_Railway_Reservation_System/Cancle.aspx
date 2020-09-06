<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Cancle.aspx.vb" Inherits="Cancle" title="Online Railway Reservation System - Cacle Reservation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align = "right">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="img/Logout.jpg" PostBackUrl="Home.aspx"
            Height="26px" Width="29px" CausesValidation="False" />
    </div>
    <p style="font-family: 'Times New Roman'; font-size: x-large; font-weight: bold">
        Please Enter PNR Number :
        <asp:TextBox ID="TextBox1" runat="server" Width="138px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="PNR No."></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Ok" Width="85px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Back" Width="85px" 
            CausesValidation="False" />
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>

