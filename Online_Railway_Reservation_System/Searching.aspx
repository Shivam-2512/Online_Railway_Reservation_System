<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false"
    CodeFile="Searching.aspx.vb" Inherits="Searching" Title="Online Railway Reservation System - Searching" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            height: 203px;
        }
    .style2
    {
        height: 26px;
    }
        .style3
        {
            width: 159px;
        }
        .style4
        {
            height: 203px;
            width: 159px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div align = "right">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="img/Logout.jpg" PostBackUrl="Home.aspx"
            Height="26px" Width="29px" CausesValidation="False" />
    </div>
    <div>
        <table style="width: 101%; font-family: 'Times New Roman'; font-size: x-large; font-weight: bold;">
            <tr>
                <td class="style3">
                    From Station:
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Ahmedabad</asp:ListItem>
                        <asp:ListItem>New Delhi</asp:ListItem>
                        <asp:ListItem>Kolkata</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    To Station :
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>Ahmedabad</asp:ListItem>
                        <asp:ListItem>New Delhi</asp:ListItem>
                        <asp:ListItem>Kolkata</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Journy Date :
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:Button ID="Button4" runat="server" Text="..." />
                    <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
                    <asp:Calendar ID="Calendar1" runat="server" Visible="False" BackColor="#FFFFCC" 
                        BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                        Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
                        ShowGridLines="True" Width="220px">
                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                            ForeColor="#FFFFCC" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2" align="center" >
                    Class :<asp:RadioButton ID="RadioButton1" runat="server" GroupName="class" Text="AC" />
&nbsp;<asp:RadioButton ID="RadioButton2" runat="server" GroupName="class" Text="SL" />
&nbsp;<asp:RadioButton ID="RadioButton3" runat="server" GroupName="class" Text="FC" />
&nbsp;<asp:RadioButton ID="RadioButton4" runat="server" GroupName="class" Text="SC" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Reset" Width="61px" />
                    &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84"
                        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2"
                        DataKeyNames="train_no" DataSourceID="SqlDataSource1" Width="1197px" Style="margin-right: 2px">
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="train_no" HeaderText="Train No" ReadOnly="True" SortExpression="train_no?" />
                            <asp:BoundField DataField="train_name" HeaderText="Train Name" SortExpression="train_name" />
                            <asp:BoundField DataField="from_place" HeaderText="From" SortExpression="from_place" />
                            <asp:BoundField DataField="departure" HeaderText="Departure" SortExpression="departure" />
                            <asp:BoundField DataField="to_place" HeaderText="To" SortExpression="to_place" />
                            <asp:BoundField DataField="arrival" HeaderText="Arrival" SortExpression="arrival" />
                            <asp:BoundField DataField="dist" HeaderText="Dist" SortExpression="dist" />
                        </Columns>
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    </asp:GridView>
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Check Status.aspx">Check 
                    Status</asp:HyperLink>
                    <br />
                    <br />
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Cancle.aspx">Cancle 
                    Reservation</asp:HyperLink>
                </td>
            </tr>
        </table>
    </div>
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT * FROM [Train_Schedule] WHERE (([from_place] = @from_place) AND ([to_place] = @to_place) AND ([ava_days] = @ava_days))">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="from_place" PropertyName="SelectedValue"
                    Type="String" />
                <asp:ControlParameter ControlID="DropDownList2" Name="to_place" PropertyName="SelectedValue"
                    Type="String" />
                <asp:ControlParameter ControlID="TextBox2" Name="ava_days" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
