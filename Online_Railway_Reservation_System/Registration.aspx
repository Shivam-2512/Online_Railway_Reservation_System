<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Registration.aspx.vb" Inherits="Registration" title="Online Railway Reservation System - Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:101%; font-family: 'Times New Roman'; font-weight: bold;">
    <tr>
        <td colspan="2">
            <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="* Madatory Filed"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            First Name :</td>
        <td style="color: #FF0000">
            <asp:TextBox ID="TextBox1" runat="server" Width="263px"></asp:TextBox>
            *<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Enter First Name"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            Last Name :</td>
        <td style="color: #FF0000">
            <asp:TextBox ID="TextBox2" runat="server" Width="263px"></asp:TextBox>
            *<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Enter Last Name"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            Gender :</td>
        <td style="color: #FF0000">
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
            *</td>
    </tr>
    <tr>
        <td>
            Date Of Birth :</td>
        <td style="color: #FF0000">
            <asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem>Jan</asp:ListItem>
                <asp:ListItem>Feb</asp:ListItem>
                <asp:ListItem>Mar</asp:ListItem>
                <asp:ListItem>Apr</asp:ListItem>
                <asp:ListItem>May</asp:ListItem>
                <asp:ListItem>June</asp:ListItem>
                <asp:ListItem>July</asp:ListItem>
                <asp:ListItem>Aug</asp:ListItem>
                <asp:ListItem>Sep</asp:ListItem>
                <asp:ListItem>Oct</asp:ListItem>
                <asp:ListItem>Nov</asp:ListItem>
                <asp:ListItem>Dec</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList4" runat="server">
            </asp:DropDownList>
            *</td>
    </tr>
    <tr>
        <td>
            Occupation :</td>
        <td style="color: #FF0000">
            <asp:DropDownList ID="DropDownList5" runat="server">
                <asp:ListItem>Goverment</asp:ListItem>
                <asp:ListItem>Public</asp:ListItem>
                <asp:ListItem>Private</asp:ListItem>
                <asp:ListItem>Professional</asp:ListItem>
                <asp:ListItem>Self Employeed</asp:ListItem>
                <asp:ListItem>Student</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
            *</td>
    </tr>
    <tr>
        <td>
            Emai ID :</td>
        <td style="color: #FF0000">
            <asp:TextBox ID="TextBox3" runat="server" Width="263px"></asp:TextBox>
            *<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="Enter Email ID"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Valid Email ID" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            Mobile No.</td>
        <td style="color: #FF0000">
            <asp:TextBox ID="TextBox4" runat="server" Width="263px"></asp:TextBox>
            *<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="Enter Mobile No."></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="Only 10 digit" 
                ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            Phone No.</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server" Width="263px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Address :</td>
        <td style="color: #FF0000">
            <asp:TextBox ID="TextBox6" runat="server" Height="76px" TextMode="MultiLine" 
                Width="263px"></asp:TextBox>
            *<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="TextBox6" ErrorMessage="Enter Address"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            City :</td>
        <td style="color: #FF0000">
            <asp:TextBox ID="TextBox7" runat="server" Width="263px"></asp:TextBox>
            *<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="TextBox7" ErrorMessage="Enter City"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            State :</td>
        <td style="color: #FF0000">
            <asp:DropDownList ID="DropDownList6" runat="server">
                <asp:ListItem>Andaman and Nicobar Islands</asp:ListItem>
                <asp:ListItem>Andhra Pradesh</asp:ListItem>
                <asp:ListItem>Arunachal Pardesh</asp:ListItem>
                <asp:ListItem>Assam</asp:ListItem>
                <asp:ListItem>Bihar</asp:ListItem>
                <asp:ListItem>Chandigarh</asp:ListItem>
                <asp:ListItem>Chhattisgarh</asp:ListItem>
                <asp:ListItem>Dadra and Nagar Heveli</asp:ListItem>
                <asp:ListItem>Daman and Diu</asp:ListItem>
                <asp:ListItem>Delhi</asp:ListItem>
                <asp:ListItem>Goa</asp:ListItem>
                <asp:ListItem>Gujarat</asp:ListItem>
                <asp:ListItem>Haryana</asp:ListItem>
                <asp:ListItem>Himachal Pradesh</asp:ListItem>
                <asp:ListItem>Jammu and Kashmir</asp:ListItem>
                <asp:ListItem>Jharkhand</asp:ListItem>
                <asp:ListItem>Karnataka</asp:ListItem>
                <asp:ListItem>Kerala</asp:ListItem>
                <asp:ListItem>Lakshadweep</asp:ListItem>
                <asp:ListItem>Madhya Pradesh</asp:ListItem>
                <asp:ListItem>Maharashtra</asp:ListItem>
                <asp:ListItem>Manipur</asp:ListItem>
                <asp:ListItem>Meghalaya</asp:ListItem>
                <asp:ListItem>Mizoram</asp:ListItem>
                <asp:ListItem>Nagaland</asp:ListItem>
                <asp:ListItem>Orissa</asp:ListItem>
                <asp:ListItem>Punducherry</asp:ListItem>
                <asp:ListItem>Punjab</asp:ListItem>
                <asp:ListItem>Rajasthan</asp:ListItem>
                <asp:ListItem>Sikkim</asp:ListItem>
                <asp:ListItem>Tamil Nadu</asp:ListItem>
                <asp:ListItem>Telangana</asp:ListItem>
                <asp:ListItem>Tripura</asp:ListItem>
                <asp:ListItem>Uttar Pradesh</asp:ListItem>
                <asp:ListItem>Uttarakhand</asp:ListItem>
                <asp:ListItem>West Bengal</asp:ListItem>
            </asp:DropDownList>
            *</td>
    </tr>
    <tr>
        <td>
            Pincode</td>
        <td style="color: #FF0000">
            <asp:TextBox ID="TextBox8" runat="server" Width="263px"></asp:TextBox>
            *<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="TextBox8" ErrorMessage="Enter Pin Code"></asp:RequiredFieldValidator>
        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
                runat="server" ControlToValidate="TextBox8" ErrorMessage="Only 6 digit" 
                ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            User ID:</td>
        <td style="color: #FF0000">
            <asp:TextBox ID="TextBox9" runat="server" Width="263px"></asp:TextBox>
            *<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="TextBox9" ErrorMessage="Enter User ID"></asp:RequiredFieldValidator>
            &nbsp;<asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            Password :</td>
        <td style="color: #FF0000">
            <asp:TextBox ID="TextBox10" runat="server" Width="263px" TextMode="Password"></asp:TextBox>
            *<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ControlToValidate="TextBox10" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            Confirm Passsword :</td>
        <td style="color: #FF0000">
            <asp:TextBox ID="TextBox11" runat="server" Width="263px" TextMode="Password"></asp:TextBox>
            *<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ControlToValidate="TextBox11" ErrorMessage="Enter Confirm Passowrd"></asp:RequiredFieldValidator>
            &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="TextBox10" ControlToValidate="TextBox11" 
                ErrorMessage="Password Not Match"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td>
            Security Question :</td>
        <td style="color: #FF0000">
            <asp:DropDownList ID="DropDownList7" runat="server">
                <asp:ListItem>What is your pets Name?</asp:ListItem>
                <asp:ListItem>What was the name of your first school?</asp:ListItem>
                <asp:ListItem>Who was your childhood Hero??</asp:ListItem>
                <asp:ListItem>What is your favourite Past-Time?</asp:ListItem>
                <asp:ListItem>What is your all-time favourite sports team?</asp:ListItem>
            </asp:DropDownList>
            *</td>
    </tr>
    <tr>
        <td>
            Security Answer :</td>
        <td style="color: #FF0000">
            <asp:TextBox ID="TextBox12" runat="server" Width="263px"></asp:TextBox>
            *<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                ControlToValidate="TextBox12" ErrorMessage="Enter Security Answer"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Submit" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" CausesValidation="False" Text="Reset" />
        </td>
    </tr>
</table>
</asp:Content>

