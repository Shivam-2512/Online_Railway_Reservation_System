Imports System.Data.SqlClient
Partial Class Searching
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim com As SqlCommand
    Dim dr As SqlDataReader
    Dim d As Date
    Dim a, g As String
    Dim s As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        HyperLink1.ForeColor = Drawing.Color.Blue
        HyperLink2.ForeColor = Drawing.Color.Blue
        Label1.Text = "Welcome " + Session("First") + " " + Session("Last")
        con = New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\vaio\Documents\3006-AJay\Online_Railway_Reservation_System\App_Data\Register_mst.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
        Session("C") = ""
    End Sub
    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        If Calendar1.Visible = True Then
            Calendar1.Visible = False
        Else
            Calendar1.Visible = True
        End If
    End Sub
    Protected Sub Calendar1_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar1.SelectionChanged
        TextBox1.Text = Calendar1.SelectedDate
        d = CDate(Calendar1.SelectedDate)
        a = d.DayOfWeek.ToString
        TextBox2.Text = a
        Calendar1.Visible = False
    End Sub
    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        DropDownList1.SelectedIndex = 0
        DropDownList2.SelectedIndex = 0
        TextBox1.Text = ""
        TextBox2.Text = ""
        RadioButton1.Checked = False
        RadioButton2.Checked = False
        RadioButton3.Checked = False
        RadioButton4.Checked = False
    End Sub
    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        If RadioButton1.Checked = True Then
            Session("C") = "AC"
            Session("trn") = GridView1.SelectedRow.Cells(1).Text
            Session("tnm") = GridView1.SelectedRow.Cells(2).Text
            Session("fromplace") = GridView1.SelectedRow.Cells(3).Text
            Session("toplace") = GridView1.SelectedRow.Cells(5).Text
            Session("dist") = GridView1.SelectedRow.Cells(7).Text
            Session("bdate") = Today.Date()
            Session("jdate") = Calendar1.SelectedDate
            con.Open()
            com = New SqlCommand("Select ac_seat from Train_Schedule where train_no='" + Session("trn") + "'", con)
            dr = com.ExecuteReader
            dr.Read()
            If dr.Item("ac_seat") <= 0 Then
                Dim r = MsgBox("Sorry! Waiting.... If You still want to book a Ticket Click - Yes ", MsgBoxStyle.YesNo)
                If r = MsgBoxResult.No Then
                    Response.Redirect("Searching.aspx")
                Else
                    Session("state") = "Waiting"
                    Response.Redirect("Booking.aspx")
                End If
            Else
                Session("state") = "Confirm"
                Response.Redirect("Booking.aspx")
            End If
            con.Close()
        ElseIf RadioButton2.Checked = True Then
            Session("C") = "SL"
            Session("trn") = GridView1.SelectedRow.Cells(1).Text
            Session("tnm") = GridView1.SelectedRow.Cells(2).Text
            Session("fromplace") = GridView1.SelectedRow.Cells(3).Text
            Session("toplace") = GridView1.SelectedRow.Cells(5).Text
            Session("dist") = GridView1.SelectedRow.Cells(7).Text
            Session("bdate") = Today.Date()
            Session("jdate") = Calendar1.SelectedDate
            con.Open()
            com = New SqlCommand("Select sl_seat from Train_Schedule where train_no='" + Session("trn") + "'", con)
            dr = com.ExecuteReader
            dr.Read()
            If dr.Item("sl_seat") <= 0 Then
                Dim r = MsgBox("Sorry! Waiting.... If You still want to book a Ticket Click - Yes ", MsgBoxStyle.YesNo)
                If r = MsgBoxResult.No Then
                    Response.Redirect("Searching.aspx")
                Else
                    Session("state") = "Waiting"
                    Response.Redirect("Booking.aspx")
                End If
            Else
                Session("state") = "Confirm"
                Response.Redirect("Booking.aspx")
            End If
            con.Close()
        ElseIf RadioButton3.Checked = True Then
            Session("C") = "FC"
            Session("trn") = GridView1.SelectedRow.Cells(1).Text
            Session("tnm") = GridView1.SelectedRow.Cells(2).Text
            Session("fromplace") = GridView1.SelectedRow.Cells(3).Text
            Session("toplace") = GridView1.SelectedRow.Cells(5).Text
            Session("dist") = GridView1.SelectedRow.Cells(7).Text
            Session("bdate") = Today.Date()
            Session("jdate") = Calendar1.SelectedDate
            con.Open()
            com = New SqlCommand("Select fc_seat from Train_Schedule where train_no='" + Session("trn") + "'", con)
            dr = com.ExecuteReader
            dr.Read()
            If dr.Item("fc_seat") <= 0 Then
                Dim r = MsgBox("Sorry! Waiting.... If You still want to book a Ticket Click - Yes ", MsgBoxStyle.YesNo)
                If r = MsgBoxResult.No Then
                    Response.Redirect("Searching.aspx")
                Else
                    Session("state") = "Waiting"
                    Response.Redirect("Booking.aspx")

                End If
            Else
                Session("state") = "Confirm"
                Response.Redirect("Booking.aspx")
            End If
            con.Close()
        ElseIf RadioButton4.Checked = True Then
            Session("C") = "SC"
            Session("trn") = GridView1.SelectedRow.Cells(1).Text
            Session("tnm") = GridView1.SelectedRow.Cells(2).Text
            Session("fromplace") = GridView1.SelectedRow.Cells(3).Text
            Session("toplace") = GridView1.SelectedRow.Cells(5).Text
            Session("dist") = GridView1.SelectedRow.Cells(7).Text
            Session("bdate") = Today.Date()
            Session("jdate") = Calendar1.SelectedDate
            con.Open()
            com = New SqlCommand("Select sc_seat from Train_Schedule where train_no='" + Session("trn") + "'", con)
            dr = com.ExecuteReader
            dr.Read()
            If dr.Item("sc_seat") <= 0 Then
                Dim r = MsgBox("Sorry! Waiting.... If You still want to book a Ticket Click - Yes ", MsgBoxStyle.YesNo)
                If r = MsgBoxResult.No Then
                    Response.Redirect("Searching.aspx")
                Else
                    Session("state") = "Waiting"
                    Response.Redirect("Booking.aspx")
                End If
            Else
                Session("state") = "Confirm"
                Response.Redirect("Booking.aspx")
            End If
            con.Close()
        Else
            MsgBox("Plz Select Class then Click on Select Button")
        End If
    End Sub

End Class
