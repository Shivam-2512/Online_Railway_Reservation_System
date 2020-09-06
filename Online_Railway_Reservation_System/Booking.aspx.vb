Imports System.Data.SqlClient
Partial Class Booking
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim com As SqlCommand
    Dim dr As SqlDataReader
    Dim a, s, g As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = "Welcome " + Session("First") + " " + Session("Last")
        con = New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\vaio\Documents\3006-AJay\Online_Railway_Reservation_System\App_Data\Register_mst.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
        If Not IsPostBack Then
            For i = 1 To 100
                DropDownList1.Items.Add(i)
            Next

            For i = 1 To 100
                DropDownList3.Items.Add(i)
            Next
            For i = 1 To 100
                DropDownList5.Items.Add(i)
            Next

            TextBox1.Enabled = True
            DropDownList1.Enabled = True
            DropDownList2.Enabled = True
        End If
        con.Open()
        com = New SqlCommand("Select max(no)from Booking", con)
        dr = com.ExecuteReader
        If dr.Read = True Then
            Label2.Text = dr.Item(0)
            a = Val(Label2.Text + 532452)
            Label2.Enabled = False
            Label2.Visible = False
        End If
        con.Close()
    End Sub
    Protected Sub DropDownList7_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList7.SelectedIndexChanged
        If DropDownList7.SelectedIndex = 0 Then
            TextBox1.Enabled = True
            TextBox2.Enabled = False
            TextBox3.Enabled = False
            DropDownList1.Enabled = True
            DropDownList2.Enabled = True
            DropDownList3.Enabled = False
            DropDownList4.Enabled = False
            DropDownList5.Enabled = False
            DropDownList6.Enabled = False
        ElseIf DropDownList7.SelectedIndex = 1 Then
            TextBox1.Enabled = True
            TextBox2.Enabled = True
            TextBox3.Enabled = False
            DropDownList1.Enabled = True
            DropDownList2.Enabled = True
            DropDownList3.Enabled = True
            DropDownList4.Enabled = True
            DropDownList5.Enabled = False
            DropDownList6.Enabled = False
        ElseIf DropDownList7.SelectedIndex = 2 Then
            TextBox1.Enabled = True
            TextBox2.Enabled = True
            TextBox3.Enabled = True
            DropDownList1.Enabled = True
            DropDownList2.Enabled = True
            DropDownList3.Enabled = True
            DropDownList4.Enabled = True
            DropDownList5.Enabled = True
            DropDownList6.Enabled = True
        End If
    End Sub
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Session("pno") = a
        Session("p") = a
        Session("person") = DropDownList7.Text
        If DropDownList7.SelectedItem.ToString = "1" Then
            If TextBox1.Text = "" Then
                MsgBox("Plz Enter Your Name")
            Else
                Session("t1") = TextBox1.Text
                Session("d1") = DropDownList1.Text
                Session("d2") = DropDownList2.Text
                Response.Redirect("Payment.aspx")
            End If
        ElseIf DropDownList7.SelectedItem.ToString = "2" Then
            If TextBox1.Text = "" Or TextBox2.Text = "" Then
                MsgBox("Plz Enter Your Name")
            Else
                Session("t1") = TextBox1.Text
                Session("d1") = DropDownList1.Text
                Session("d2") = DropDownList2.Text
                Session("t2") = TextBox2.Text
                Session("d3") = DropDownList3.Text
                Session("d4") = DropDownList4.Text
                Response.Redirect("Payment.aspx")
            End If
        ElseIf DropDownList7.SelectedItem.ToString = "3" Then
            If TextBox1.Text = "" Or TextBox2.Text = "" Or TextBox3.Text = "" Then
                MsgBox("Plz Enter Your Name")
            Else
                Session("t1") = TextBox1.Text
                Session("d1") = DropDownList1.Text
                Session("d2") = DropDownList2.Text
                Session("t2") = TextBox2.Text
                Session("d3") = DropDownList3.Text
                Session("d4") = DropDownList4.Text
                Session("t3") = TextBox3.Text
                Session("d5") = DropDownList5.Text
                Session("d6") = DropDownList6.Text
                Response.Redirect("Payment.aspx")
            End If
        End If
    End Sub
End Class
