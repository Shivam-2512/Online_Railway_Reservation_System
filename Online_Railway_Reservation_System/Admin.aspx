<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Admin.aspx.vb" Inherits="Admin" title="Online Railway Reservation System - Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="right" 
        style="font-family: 'Times New Roman'; font-size: x-large; font-weight: bold">        
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="img/Logout.jpg" 
            PostBackUrl="Home.aspx" Height="26px" Width="29px" 
            CausesValidation="False" />         
    </div>
    <div style="font-family: 'Times New Roman'; font-size: x-large; font-weight: bold">
    <asp:HyperLink ID="HyperLink1" runat="server" 
        NavigateUrl="~/Train Schedule.aspx">Add/Update/Delete Train</asp:HyperLink>
        <br />
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Reservation.aspx">Reservation 
    Info</asp:HyperLink>
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

