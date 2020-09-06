<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Booking.aspx.vb" Inherits="Booking" title="Online Railway Reservation System - Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 294px;
        }
        .style2
        {
            width: 165px;
        }
        .style3
        {
            width: 208px;
        }
        .style4
        {
            width: 373px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="right">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="img/Logout.jpg" PostBackUrl="Home.aspx"
            Height="26px" Width="29px" CausesValidation="False" />
    </div>
    <div>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        &nbsp;</div>
    <div>
        <b style="color: #FF0000; font-size: x-large; font-weight: bold;">Please Select No. Of&nbsp; Person:&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList7" runat="server" AutoPostBack="True">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
        </asp:DropDownList>
        <br />&nbsp;&nbsp;&nbsp;&nbsp; 
        <table style="width: 100%;">
            <tr>
                <td class="style3">
                    Name</td>
                <td class="style2">
                    Age</td>
                <td class="style4">
                    Gender</td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="292px" 
                        Enabled="False"></asp:TextBox>
                </td>
                <td class="style2">
                    <asp:DropDownList ID="DropDownList1" runat="server" Enabled="False">
                    </asp:DropDownList>
                </td>
                <td class="style4">
                    <asp:DropDownList ID="DropDownList2" runat="server" Enabled="False">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:TextBox ID="TextBox2" runat="server" Height="22px" Width="292px"></asp:TextBox>
                </td>
                <td class="style2">
                    <asp:DropDownList ID="DropDownList3" runat="server" Enabled="False">
                    </asp:DropDownList>
                </td>
                <td class="style4">
                    <asp:DropDownList ID="DropDownList4" runat="server" Enabled="False">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:TextBox ID="TextBox3" runat="server" Height="22px" Width="292px" 
                        Enabled="False"></asp:TextBox>
                </td>
                <td class="style2">
                    <asp:DropDownList ID="DropDownList5" runat="server" Enabled="False">
                    </asp:DropDownList>
                </td>
                <td class="style4">
                    <asp:DropDownList ID="DropDownList6" runat="server" Enabled="False">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style1" colspan="3">
                    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Next" Width="72px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                </td>
            </tr>
        </table>
    </div>
    </b>
</asp:Content>

