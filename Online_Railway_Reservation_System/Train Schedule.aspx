<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Train Schedule.aspx.vb" Inherits="Train_Schedule" title="Online Railway Reservation System - Train Schedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="right">
        
        <asp:ImageButton ID="ImageButton1" runat="server" Height="26px" 
            ImageUrl="img/Logout.jpg" PostBackUrl="Home.aspx" Width="29px" 
            CausesValidation="False" />
    </div>
    <div>
        <table style="width: 63%;">
            <tr>
                <td>
                    Train No :</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Train No"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Train Name :</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Train Name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;From :</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Ahmedabad</asp:ListItem>
                        <asp:ListItem>New Delhi</asp:ListItem>
                        <asp:ListItem>Kolkata</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Departure</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList3" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    To :</td>
                <td>
                    <asp:DropDownList ID="DropDownList4" runat="server">
                        <asp:ListItem>Ahmedabad</asp:ListItem>
                        <asp:ListItem>New Delhi</asp:ListItem>
                        <asp:ListItem>Kolkata</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Arrival :</td>
                <td class="style1">
                    <asp:DropDownList ID="DropDownList5" runat="server">
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList6" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Dist :</td>
                <td class="style1">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Distation"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Available Days :</td>
                <td class="style1">
                    <asp:DropDownList ID="DropDownList7" runat="server">
                        <asp:ListItem>Sunday</asp:ListItem>
                        <asp:ListItem>Monday</asp:ListItem>
                        <asp:ListItem>Tuesday</asp:ListItem>
                        <asp:ListItem>Wednesday</asp:ListItem>
                        <asp:ListItem>Thursday</asp:ListItem>
                        <asp:ListItem>Friday</asp:ListItem>
                        <asp:ListItem>Saturday</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    AC Seat :</td>
                <td class="style1">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="AC Seat"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    SL&nbsp; Seat :</td>
                <td class="style1">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="SL Seat"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    FC Seat :</td>
                <td class="style1">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="FC Seat"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    SC Seat :</td>
                <td class="style1">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="SC Seat"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    AC Rent :</td>
                <td class="style1">
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="TextBox8" ErrorMessage="AC Rent"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    SL Rent :</td>
                <td class="style1">
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="TextBox9" ErrorMessage="SL Rent"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    FC Rent :</td>
                <td class="style1">
                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="TextBox10" ErrorMessage="FC Rent"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    SC Rent :</td>
                <td class="style1">
                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="TextBox11" ErrorMessage="SC Rent"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Add" Height="26px" Width="37px" />
&nbsp;<asp:Button ID="Button2" runat="server" Height="26px" Text="Back" CausesValidation="False" />
                </td>
            </tr>
        </table>
    </div>
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="train_no" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None">
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="train_no" HeaderText="Train No" ReadOnly="True" 
                    SortExpression="train_no" />
                <asp:BoundField DataField="train_name" HeaderText="Train Name" 
                    SortExpression="train_name" />
                <asp:BoundField DataField="from_place" HeaderText="From" 
                    SortExpression="from_place" />
                <asp:BoundField DataField="departure" HeaderText="Departure" 
                    SortExpression="departure" />
                <asp:BoundField DataField="to_place" HeaderText="To" 
                    SortExpression="to_place" />
                <asp:BoundField DataField="arrival" HeaderText="Arrival" 
                    SortExpression="arrival" />
                <asp:BoundField DataField="dist" HeaderText="Dist" SortExpression="dist" />
                <asp:BoundField DataField="ava_days" HeaderText="Available Days" 
                    SortExpression="ava_days" />
                <asp:BoundField DataField="ac_seat" HeaderText="AC Seat" 
                    SortExpression="ac_seat" />
                <asp:BoundField DataField="sl_seat" HeaderText="SL Seat" 
                    SortExpression="sl_seat" />
                <asp:BoundField DataField="fc_seat" HeaderText="FC Seat" 
                    SortExpression="fc_seat" />
                <asp:BoundField DataField="sc_seat" HeaderText="SC Seat" 
                    SortExpression="sc_seat" />
                <asp:BoundField DataField="ac_rent" HeaderText="AC Rent" 
                    SortExpression="ac_rent" />
                <asp:BoundField DataField="sl_rent" HeaderText="SL Rent" 
                    SortExpression="sl_rent" />
                <asp:BoundField DataField="fc_rent" HeaderText="FC Rent" 
                    SortExpression="fc_rent" />
                <asp:BoundField DataField="sc_rent" HeaderText="SC Rent" 
                    SortExpression="sc_rent" />
            </Columns>
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Train_Schedule] WHERE [train_no] = @train_no" 
            InsertCommand="INSERT INTO [Train_Schedule] ([train_no], [train_name], [from_place], [departure], [to_place], [arrival], [dist], [ava_days], [ac_seat], [sl_seat], [fc_seat], [sc_seat], [ac_rent], [sl_rent], [fc_rent], [sc_rent]) VALUES (@train_no, @train_name, @from_place, @departure, @to_place, @arrival, @dist, @ava_days, @ac_seat, @sl_seat, @fc_seat, @sc_seat, @ac_rent, @sl_rent, @fc_rent, @sc_rent)" 
            SelectCommand="SELECT * FROM [Train_Schedule]" 
            
            UpdateCommand="UPDATE [Train_Schedule] SET [train_name] = @train_name, [from_place] = @from_place, [departure] = @departure, [to_place] = @to_place, [arrival] = @arrival, [dist] = @dist, [ava_days] = @ava_days, [ac_seat] = @ac_seat, [sl_seat] = @sl_seat, [fc_seat] = @fc_seat, [sc_seat] = @sc_seat, [ac_rent] = @ac_rent, [sl_rent] = @sl_rent, [fc_rent] = @fc_rent, [sc_rent] = @sc_rent WHERE [train_no] = @train_no" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>">
            <DeleteParameters>
                <asp:Parameter Name="train_no" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="train_name" Type="String" />
                <asp:Parameter Name="from_place" Type="String" />
                <asp:Parameter Name="departure" Type="String" />
                <asp:Parameter Name="to_place" Type="String" />
                <asp:Parameter Name="arrival" Type="String" />
                <asp:Parameter Name="dist" Type="String" />
                <asp:Parameter Name="ava_days" Type="String" />
                <asp:Parameter Name="ac_seat" Type="String" />
                <asp:Parameter Name="sl_seat" Type="String" />
                <asp:Parameter Name="fc_seat" Type="String" />
                <asp:Parameter Name="sc_seat" Type="String" />
                <asp:Parameter Name="ac_rent" Type="String" />
                <asp:Parameter Name="sl_rent" Type="String" />
                <asp:Parameter Name="fc_rent" Type="String" />
                <asp:Parameter Name="sc_rent" Type="String" />
                <asp:Parameter Name="train_no" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="train_no" Type="String" />
                <asp:Parameter Name="train_name" Type="String" />
                <asp:Parameter Name="from_place" Type="String" />
                <asp:Parameter Name="departure" Type="String" />
                <asp:Parameter Name="to_place" Type="String" />
                <asp:Parameter Name="arrival" Type="String" />
                <asp:Parameter Name="dist" Type="String" />
                <asp:Parameter Name="ava_days" Type="String" />
                <asp:Parameter Name="ac_seat" Type="String" />
                <asp:Parameter Name="sl_seat" Type="String" />
                <asp:Parameter Name="fc_seat" Type="String" />
                <asp:Parameter Name="sc_seat" Type="String" />
                <asp:Parameter Name="ac_rent" Type="String" />
                <asp:Parameter Name="sl_rent" Type="String" />
                <asp:Parameter Name="fc_rent" Type="String" />
                <asp:Parameter Name="sc_rent" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    
    </div>
</asp:Content>

