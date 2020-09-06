<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Reservation.aspx.vb" Inherits="Reservation" title="Online Railway Reservation System - Reservation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="right">
        <asp:ImageButton ID="ImageButton1" runat="server" Height="26px" 
            ImageUrl="img/Logout.jpg" PostBackUrl="Home.aspx" Width="29px" 
            CausesValidation="False" />
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            DataSourceID="SqlDataSource1" Width="100%">
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="pnr" HeaderText="PNR NO." SortExpression="pnr" />
                <asp:BoundField DataField="name" HeaderText="PASSANGER NAME" 
                    SortExpression="name" />
                <asp:BoundField DataField="age" HeaderText="AGE" SortExpression="age" />
                <asp:BoundField DataField="gender" HeaderText="GENDER" 
                    SortExpression="gender" />
                <asp:BoundField DataField="trainno" HeaderText="TRAIN NO" 
                    SortExpression="trainno" />
                <asp:BoundField DataField="trainname" HeaderText="TRAIN NAME" 
                    SortExpression="trainname" />
                <asp:BoundField DataField="fromplace" HeaderText="FROM" 
                    SortExpression="fromplace" />
                <asp:BoundField DataField="toplace" HeaderText="TO" SortExpression="toplace" />
                <asp:BoundField DataField="dist" HeaderText="DIST" SortExpression="dist" />
                <asp:BoundField DataField="class" HeaderText="CLASS" SortExpression="class" />
                <asp:BoundField DataField="bdate" HeaderText="BOOKING DATE" 
                    SortExpression="bdate" />
                <asp:BoundField DataField="jdate" HeaderText="JOURNY DATE" 
                    SortExpression="jdate" DataFormatString="{0:d}" />
            </Columns>
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [pnr], [name], [age], [gender], [trainno], [trainname], [fromplace], [toplace], [dist], [class], [bdate], [jdate] FROM [Booking]">
        </asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" 
            GridLines="None" Height="50px" Width="284px">
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <Fields>
                <asp:BoundField DataField="uid" HeaderText="User ID" SortExpression="uid" />
                <asp:BoundField DataField="pnr" HeaderText="PNR" SortExpression="pnr" />
                <asp:BoundField DataField="status" HeaderText="STATUS" 
                    SortExpression="status" />
                <asp:BoundField DataField="cardtype" HeaderText="CARD TYPE" 
                    SortExpression="cardtype" />
                <asp:BoundField DataField="cardno" HeaderText="CARD NO" 
                    SortExpression="cardno" />
                <asp:BoundField DataField="cvvno" HeaderText="CVV NO" SortExpression="cvvno" />
                <asp:BoundField DataField="pay" HeaderText="TOTAL RENT" SortExpression="pay" />
            </Fields>
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [payment] WHERE ([pnr] = @pnr)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="pnr" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button_back" runat="server" Text="Back" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>

