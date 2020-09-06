Imports System.Data.SqlClient
Partial Class Payment
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim com As SqlCommand
    Dim dr As SqlDataReader
    Dim rate As String
    Dim tr, p As String
    Dim a, f, s, ss As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label5.Visible = False
        con = New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\vaio\Documents\3006-AJay\Online_Railway_Reservation_System\App_Data\Register_mst.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
        For i = 2015 To 2025
            DropDownList3.Items.Add(i)
        Next
        Label1.Text = "Welcome " + Session("First") + " " + Session("Last")
        con.Open()
        com = New SqlCommand("Select * from Train_Schedule where train_no='" + Session("trn") + "'", con)
        dr = com.ExecuteReader
        dr.Read()
        a = dr.Item("ac_seat")
        f = dr.Item("fc_seat")
        s = dr.Item("sc_seat")
        ss = dr.Item("sl_seat")
        If Session("C") = "AC" Then
            rate = dr.Item(12)
        ElseIf Session("C") = "SL" Then
            rate = dr.Item(13)
        ElseIf Session("C") = "FC" Then
            rate = dr.Item(14)
        ElseIf Session("C") = "SC" Then
            rate = dr.Item(15)
        End If
        con.Close()
        p = Session("person")
        tr = Val(rate * p)
        Label2.Text = rate
        Label3.Text = Session("person")
        Label4.Text = Val(rate * p)
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        con.Open()
        If Session("person").ToString = "1" Then
            com = New SqlCommand("Insert into Booking(pnr,name,age,gender,trainno,trainname,fromplace,toplace,dist,class,bdate,jdate)values('" + Session("pno") + "','" + Session("t1") + "','" + Session("d1") + "','" + Session("d2") + "','" + Session("trn") + "','" + Session("tnm") + "','" + Session("fromplace") + "','" + Session("toplace") + "','" + Session("dist") + "','" + Session("C") + "','" + Session("bdate") + "','" + Session("jdate") + "')", con)
            com.ExecuteNonQuery()
            com = New SqlCommand("Insert into payment values('" + Session("id") + "','" + Session("pno") + "','" + Session("state") + "','" + DropDownList1.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + Label4.Text + "')", con)
            com.ExecuteNonQuery()
            If Session("C") = "AC" Then
                Label5.Text = Val(a) - Val(p)
                com = New SqlCommand("Update Train_Schedule set ac_seat='" + Label5.Text + "' where train_no='" + Session("trn") + "' ", con)
                com.ExecuteNonQuery()
            ElseIf Session("C") = "SL" Then
                Label5.Text = Val(ss) - Val(p)
                com = New SqlCommand("Update Train_Schedule set sl_seat='" + Label5.Text + "' where train_no='" + Session("trn") + "' ", con)
                com.ExecuteNonQuery()
            ElseIf Session("C") = "FC" Then
                Label5.Text = Val(f) - Val(p)
                com = New SqlCommand("Update Train_Schedule set fc_seat='" + Label5.Text + "' where train_no='" + Session("trn") + "' ", con)
                com.ExecuteNonQuery()
            ElseIf Session("C") = "SC" Then
                Label5.Text = Val(s) - Val(p)
                com = New SqlCommand("Update Train_Schedule set sc_seat='" + Label5.Text + "' where train_no='" + Session("trn") + "' ", con)
                com.ExecuteNonQuery()
            End If
            Session("rates") = Label4.Text
            Response.Redirect("Ticketprint.aspx")
        ElseIf Session("person").ToString = "2" Then
            com = New SqlCommand("Insert into Booking(pnr,name,age,gender,trainno,trainname,fromplace,toplace,dist,class,bdate,jdate)values('" + Session("pno") + "','" + Session("t1") + "','" + Session("d1") + "','" + Session("d2") + "','" + Session("trn") + "','" + Session("tnm") + "','" + Session("fromplace") + "','" + Session("toplace") + "','" + Session("dist") + "','" + Session("C") + "','" + Session("bdate") + "','" + Session("jdate") + "')", con)
            com.ExecuteNonQuery()
            com = New SqlCommand("Insert into Booking(pnr,name,age,gender,trainno,trainname,fromplace,toplace,dist,class,bdate,jdate)values('" + Session("pno") + "','" + Session("t2") + "','" + Session("d3") + "','" + Session("d4") + "','" + Session("trn") + "','" + Session("tnm") + "','" + Session("fromplace") + "','" + Session("toplace") + "','" + Session("dist") + "','" + Session("C") + "','" + Session("bdate") + "','" + Session("jdate") + "')", con)
            com.ExecuteNonQuery()
            com = New SqlCommand("Insert into payment values('" + Session("id") + "','" + Session("pno") + "','" + Session("state") + "','" + DropDownList1.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + Label4.Text + "')", con)
            com.ExecuteNonQuery()
            If Session("C") = "AC" Then
                Label5.Text = Val(a) - Val(p)
                com = New SqlCommand("Update Train_Schedule set ac_seat='" + Label5.Text + "' where train_no='" + Session("trn") + "' ", con)
                com.ExecuteNonQuery()
            ElseIf Session("C") = "SL" Then
                Label5.Text = Val(ss) - Val(p)
                com = New SqlCommand("Update Train_Schedule set sl_seat='" + Label5.Text + "' where train_no='" + Session("trn") + "' ", con)
                com.ExecuteNonQuery()
            ElseIf Session("C") = "FC" Then
                Label5.Text = Val(f) - Val(p)
                com = New SqlCommand("Update Train_Schedule set fc_seat='" + Label5.Text + "' where train_no='" + Session("trn") + "' ", con)
                com.ExecuteNonQuery()
            ElseIf Session("C") = "SC" Then
                Label5.Text = Val(s) - Val(p)
                com = New SqlCommand("Update Train_Schedule set sc_seat='" + Label5.Text + "' where train_no='" + Session("trn") + "' ", con)
                com.ExecuteNonQuery()
            End If
            Session("rates") = Label4.Text
            Response.Redirect("Ticketprint.aspx")
        ElseIf Session("person").ToString = "3" Then
            com = New SqlCommand("Insert into Booking(pnr,name,age,gender,trainno,trainname,fromplace,toplace,dist,class,bdate,jdate)values('" + Session("pno") + "','" + Session("t1") + "','" + Session("d1") + "','" + Session("d2") + "','" + Session("trn") + "','" + Session("tnm") + "','" + Session("fromplace") + "','" + Session("toplace") + "','" + Session("dist") + "','" + Session("C") + "','" + Session("bdate") + "','" + Session("jdate") + "')", con)
            com.ExecuteNonQuery()
            com = New SqlCommand("Insert into Booking(pnr,name,age,gender,trainno,trainname,fromplace,toplace,dist,class,bdate,jdate)values('" + Session("pno") + "','" + Session("t2") + "','" + Session("d3") + "','" + Session("d4") + "','" + Session("trn") + "','" + Session("tnm") + "','" + Session("fromplace") + "','" + Session("toplace") + "','" + Session("dist") + "','" + Session("C") + "','" + Session("bdate") + "','" + Session("jdate") + "')", con)
            com.ExecuteNonQuery()
            com = New SqlCommand("Insert into Booking(pnr,name,age,gender,trainno,trainname,fromplace,toplace,dist,class,bdate,jdate)values('" + Session("pno") + "','" + Session("t3") + "','" + Session("d5") + "','" + Session("d6") + "','" + Session("trn") + "','" + Session("tnm") + "','" + Session("fromplace") + "','" + Session("toplace") + "','" + Session("dist") + "','" + Session("C") + "','" + Session("bdate") + "','" + Session("jdate") + "')", con)
            com.ExecuteNonQuery()
            com = New SqlCommand("Insert into payment values('" + Session("id") + "','" + Session("pno") + "','" + Session("state") + "','" + DropDownList1.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + Label4.Text + "')", con)
            com.ExecuteNonQuery()
            If Session("C") = "AC" Then
                Label5.Text = Val(a) - Val(p)
                com = New SqlCommand("Update Train_Schedule set ac_seat='" + Label5.Text + "' where train_no='" + Session("trn") + "' ", con)
                com.ExecuteNonQuery()
            ElseIf Session("C") = "SL" Then
                Label5.Text = Val(ss) - Val(p)
                com = New SqlCommand("Update Train_Schedule set sl_seat='" + Label5.Text + "' where train_no='" + Session("trn") + "' ", con)
                com.ExecuteNonQuery()
            ElseIf Session("C") = "FC" Then
                Label5.Text = Val(f) - Val(p)
                com = New SqlCommand("Update Train_Schedule set fc_seat='" + Label5.Text + "' where train_no='" + Session("trn") + "' ", con)
                com.ExecuteNonQuery()
            ElseIf Session("C") = "SC" Then
                Label5.Text = Val(s) - Val(p)
                com = New SqlCommand("Update Train_Schedule set sc_seat='" + Label5.Text + "' where train_no='" + Session("trn") + "' ", con)
                com.ExecuteNonQuery()
            End If
            Session("rates") = Label4.Text
            com = New SqlCommand
            Response.Redirect("Ticketprint.aspx")
        End If
    End Sub
End Class
