Imports System.Data.SqlClient
Partial Class Newpassword
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim com As SqlCommand
    Dim dr As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con = New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\vaio\Documents\3006-AJay\Online_Railway_Reservation_System\App_Data\Register_mst.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
        TextBox1.Text = Session("userid")
        TextBox1.Enabled = False
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        con.Open()
        com = New SqlCommand("Update Registration set password='" + TextBox2.Text + "' where user_id='" + TextBox1.Text + "'", con)
        com.ExecuteNonQuery()
        MsgBox("Password Change Successfully")
        Response.Redirect("Home.aspx")
        con.Close()
    End Sub
End Class
