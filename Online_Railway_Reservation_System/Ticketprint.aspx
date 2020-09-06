<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Ticketprint.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Railway Reservation System - Ticket</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="right">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Searching.aspx">NEW 
        PLAN</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="img/Logout.jpg" 
            PostBackUrl="Home.aspx" Height="26px" Width="29px" 
            CausesValidation="False" />         
    </div> 
    <div>
    
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <table align="center">
        <tr align="center" >
        <td align="center">
        <h1>ONLINE RAILWAY RESERVATION SYSTEM</h1>
        </td>
        </tr>
        </table>
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
            CellPadding="2" DataSourceID="SqlDataSource1" ForeColor="Black" 
            GridLines="None" Width="100%" Height="239px">
            <FooterStyle BackColor="Tan" />
            <Columns>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" >
                </asp:BoundField>
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" >
                </asp:BoundField>
                <asp:BoundField DataField="gender" HeaderText="gender" 
                    SortExpression="gender" >
                </asp:BoundField>
                <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" >
                </asp:BoundField>
                <asp:BoundField DataField="bdate" HeaderText="bdate" 
                    SortExpression="bdate" >
                </asp:BoundField>
                <asp:BoundField DataField="jdate" HeaderText="jdate" 
                    SortExpression="jdate" >
                </asp:BoundField>
            </Columns>
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
                SelectCommand="SELECT name, age, gender, class, bdate, jdate FROM Booking WHERE (pnr = @pnr)">
            <SelectParameters>
                <asp:SessionParameter Name="pnr" SessionField="pno" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="train_no" DataSourceID="SqlDataSource2" 
            ForeColor="#333333" GridLines="None" Width="100%" Height="205px">
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <Columns>
                <asp:BoundField DataField="train_no" HeaderText="TRAIN NO" ReadOnly="True" 
                    SortExpression="train_no" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="train_name" HeaderText="TRAIN NAME" 
                    SortExpression="train_name" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="from_place" HeaderText="FROM" 
                    SortExpression="from_place" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="departure" HeaderText="DEPARTURE" 
                    SortExpression="departure" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="to_place" HeaderText="TO" 
                    SortExpression="to_place" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="arrival" HeaderText="ARRIAVL" 
                    SortExpression="arrival" >
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="dist" HeaderText="DIST" SortExpression="dist" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
            </Columns>
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [train_no], [train_name], [from_place], [departure], [to_place], [arrival], [dist] FROM [Train_Schedule] WHERE ([train_no] = @train_no)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label3" Name="train_no" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
            CellPadding="4" DataSourceID="SqlDataSource3" GridLines="Horizontal" 
            Width="100%" Height="223px">
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <Columns>
                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" >
                </asp:BoundField>
                <asp:BoundField DataField="pnr" HeaderText="pnr" 
                    SortExpression="pnr" >
                </asp:BoundField>
                <asp:BoundField DataField="pay" HeaderText="pay" SortExpression="pay" >
                </asp:BoundField>
            </Columns>
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [status], [pnr], [pay] FROM [payment] WHERE ([pnr] = @pnr)">
            <SelectParameters>
                <asp:SessionParameter Name="pnr" SessionField="pno" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    
    </div>   
    </form>
</body>
</html>
