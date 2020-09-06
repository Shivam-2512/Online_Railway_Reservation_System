Imports System.Data.SqlClient
Partial Class Cancle
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim com As SqlCommand
    Dim dr As SqlDataReader
    Dim da As SqlDataAdapter
    Dim tn1, cc, c1, status1, pnr2, c2, status2, n As String
    Dim a As Integer
    Dim kk As Integer = 1
    Dim dt, jdate1 As Date
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = "Welcome " + Session("First") + " " + Session("Last")
        Label2.Visible = False
        con = New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\vaio\Documents\3006-AJay\Online_Railway_Reservation_System\App_Data\Register_mst.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
        Session("C") = ""
        con = New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\vaio\Documents\3006-AJay\Online_Railway_Reservation_System\App_Data\Register_mst.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        n = "Confirm"
        con.Open()
        com = New SqlCommand("Select * from Booking where pnr='" + TextBox1.Text + "'", con)
        dr = com.ExecuteReader
        If dr.Read = True Then
            tn1 = dr.Item("trainno")
            dt = dr.Item("jdate")
            jdate1 = dt.ToString("MM/dd/yyyy")
            c1 = dr.Item("class")
            cc = dr.Item("class")
            While dr.Read = True
                kk = kk + 1
            End While
            dr.Close()
            com = New SqlCommand("Select * from payment where pnr='" + TextBox1.Text + "'", con)
            dr = com.ExecuteReader
            dr.Read()
            status1 = dr.Item("status")
            dr.Close()
            If status1 = "Confirm" Then
                com = New SqlCommand("Select * from Booking where trainno='" + tn1 + "' and jdate='" + jdate1 + "' and pnr<>'" + TextBox1.Text + "'", con)
                dr = com.ExecuteReader
                If dr.Read = True Then
                    pnr2 = dr.Item("pnr")
                    c2 = dr.Item("class")
                    dr.Close()
                    com = New SqlCommand("Select * from payment where pnr='" + pnr2 + "'", con)
                    dr = com.ExecuteReader
                    dr.Read()
                    status2 = dr.Item("status")
                    dr.Close()
                    If status2 = "Waiting" And c1 = c2 Then
                        com = New SqlCommand("update payment set status ='" + n + "' where pnr='" + pnr2 + "'", con)
                        com.ExecuteNonQuery()
                    Else
                        If cc = "AC" Then
                            dr.Close()
                            com = New SqlCommand("Select * from Train_Schedule where train_no='" + tn1 + "'", con)
                            dr = com.ExecuteReader
                            dr.Read()
                            a = dr.Item("ac_seat")
                            Label2.Text = Val(a) + Val(kk)
                            dr.Close()
                            com = New SqlCommand("Update Train_Schedule set ac_seat='" + Label2.Text + "' where train_no='" + tn1 + "'", con)
                            com.ExecuteNonQuery()
                        ElseIf cc = "SL" Then
                            dr.Close()
                            com = New SqlCommand("Select * from Train_Schedule where train_no='" + tn1 + "'", con)
                            dr = com.ExecuteReader
                            dr.Read()
                            a = dr.Item("sl_seat")
                            Label2.Text = Val(a) + Val(kk)
                            dr.Close()
                            com = New SqlCommand("Update Train_Schedule set sl_seat='" + Label2.Text + "' where train_no='" + tn1 + "'", con)
                            com.ExecuteNonQuery()
                        ElseIf cc = "FC" Then
                            dr.Close()
                            com = New SqlCommand("Select * from Train_Schedule where train_no='" + tn1 + "'", con)
                            dr = com.ExecuteReader
                            dr.Read()
                            a = dr.Item("fc_seat")
                            Label2.Text = Val(a) + Val(kk)
                            dr.Close()
                            com = New SqlCommand("Update Train_Schedule set fc_seat='" + Label2.Text + "' where train_no='" + tn1 + "'", con)
                            com.ExecuteNonQuery()
                        ElseIf cc = "SC" Then
                            dr.Close()
                            com = New SqlCommand("Select * from Train_Schedule where train_no='" + tn1 + "'", con)
                            dr = com.ExecuteReader
                            dr.Read()
                            a = dr.Item("sc_seat")
                            Label2.Text = Val(a) + Val(kk)
                            dr.Close()
                            com = New SqlCommand("Update Train_Schedule set sc_seat='" + Label2.Text + "' where train_no='" + tn1 + "'", con)
                            com.ExecuteNonQuery()
                        End If
                    End If
                Else
                    If cc = "AC" Then
                        dr.Close()
                        com = New SqlCommand("Select * from Train_Schedule where train_no='" + tn1 + "'", con)
                        dr = com.ExecuteReader
                        dr.Read()
                        a = dr.Item("ac_seat")
                        Label2.Text = Val(a) + Val(kk)
                        dr.Close()
                        com = New SqlCommand("Update Train_Schedule set ac_seat='" + Label2.Text + "' where train_no='" + tn1 + "'", con)
                        com.ExecuteNonQuery()
                    ElseIf cc = "SL" Then
                        dr.Close()
                        com = New SqlCommand("Select * from Train_Schedule where train_no='" + tn1 + "'", con)
                        dr = com.ExecuteReader
                        dr.Read()
                        a = dr.Item("sl_seat")
                        Label2.Text = Val(a) + Val(kk)
                        dr.Close()
                        com = New SqlCommand("Update Train_Schedule set sl_seat='" + Label2.Text + "' where train_no='" + tn1 + "'", con)
                        com.ExecuteNonQuery()
                    ElseIf cc = "FC" Then
                        dr.Close()
                        com = New SqlCommand("Select * from Train_Schedule where train_no='" + tn1 + "'", con)
                        dr = com.ExecuteReader
                        dr.Read()
                        a = dr.Item("fc_seat")
                        Label2.Text = Val(a) + Val(kk)
                        dr.Close()
                        com = New SqlCommand("Update Train_Schedule set fc_seat='" + Label2.Text + "' where train_no='" + tn1 + "'", con)
                        com.ExecuteNonQuery()
                    ElseIf cc = "SC" Then
                        dr.Close()
                        com = New SqlCommand("Select * from Train_Schedule where train_no='" + tn1 + "'", con)
                        dr = com.ExecuteReader
                        dr.Read()
                        a = dr.Item("sc_seat")
                        Label2.Text = Val(a) + Val(kk)
                        dr.Close()
                        com = New SqlCommand("Update Train_Schedule set sc_seat='" + Label2.Text + "' where train_no='" + tn1 + "'", con)
                        com.ExecuteNonQuery()
                    End If
                End If
            Else
                If cc = "AC" Then
                    dr.Close()
                    com = New SqlCommand("Select * from Train_Schedule where train_no='" + tn1 + "'", con)
                    dr = com.ExecuteReader
                    dr.Read()
                    a = dr.Item("ac_seat")
                    Label2.Text = Val(a) + Val(kk)
                    dr.Close()
                    com = New SqlCommand("Update Train_Schedule set ac_seat='" + Label2.Text + "' where train_no='" + tn1 + "'", con)
                    com.ExecuteNonQuery()
                ElseIf cc = "SL" Then
                    dr.Close()
                    com = New SqlCommand("Select * from Train_Schedule where train_no='" + tn1 + "'", con)
                    dr = com.ExecuteReader
                    dr.Read()
                    a = dr.Item("sl_seat")
                    Label2.Text = Val(a) + Val(kk)
                    dr.Close()
                    com = New SqlCommand("Update Train_Schedule set sl_seat='" + Label2.Text + "' where train_no='" + tn1 + "'", con)
                    com.ExecuteNonQuery()
                ElseIf cc = "FC" Then
                    dr.Close()
                    com = New SqlCommand("Select * from Train_Schedule where train_no='" + tn1 + "'", con)
                    dr = com.ExecuteReader
                    dr.Read()
                    a = dr.Item("fc_seat")
                    Label2.Text = Val(a) + Val(kk)
                    dr.Close()
                    com = New SqlCommand("Update Train_Schedule set fc_seat='" + Label2.Text + "' where train_no='" + tn1 + "'", con)
                    com.ExecuteNonQuery()
                ElseIf cc = "SC" Then
                    dr.Close()
                    com = New SqlCommand("Select * from Train_Schedule where train_no='" + tn1 + "'", con)
                    dr = com.ExecuteReader
                    dr.Read()
                    a = dr.Item("sc_seat")
                    Label2.Text = Val(a) + Val(kk)
                    dr.Close()
                    com = New SqlCommand("Update Train_Schedule set sc_seat='" + Label2.Text + "' where train_no='" + tn1 + "'", con)
                    com.ExecuteNonQuery()
                End If
            End If
            com = New SqlCommand("Delete from Booking where pnr='" + TextBox1.Text + "'", con)
            com.ExecuteNonQuery()
            com = New SqlCommand("Delete from payment where pnr='" + TextBox1.Text + "'", con)
            com.ExecuteNonQuery()
            MsgBox("Your Resevation is Cancle")
            TextBox1.Text = ""
        Else
            MsgBox("Invaild PNR No")
            TextBox1.Text = ""
        End If
        con.Close()
        'd = dt.ToString("MM/dd/yyyy")
    End Sub
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Response.Redirect("Searching.aspx")
    End Sub
End Class
