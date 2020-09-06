Imports System.Data.SqlClient
Partial Class Admin_Login
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim com As SqlCommand
    Dim dr As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con = New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\vaio\Documents\3006-AJay\Online_Railway_Reservation_System\App_Data\Register_mst.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")

        Label1.Visible = False
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        con.Open()
        com = New SqlCommand("Select * from admin where user_id='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", con)
        dr = com.ExecuteReader
        If dr.Read = True Then
            Label1.Text = ""
            Label1.Visible = False
            Response.Redirect("Admin.aspx")
        Else
            Label1.Visible = True
            Label1.Text = "Invalid User ID or Password"
        End If
        con.Close()
    End Sub
End Class
