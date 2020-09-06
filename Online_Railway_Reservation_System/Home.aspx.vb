Imports System.Data.SqlClient
Partial Class Home
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim com As SqlCommand
    Dim dr As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        HyperLink1.ForeColor = Drawing.Color.Blue
        HyperLink2.ForeColor = Drawing.Color.Blue
        con = New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\vaio\Documents\3006-AJay\Online_Railway_Reservation_System\App_Data\Register_mst.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
    End Sub
    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        con.Open()
        com = New SqlCommand("Select * from Registration where user_id='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", con)
        dr = com.ExecuteReader
        If dr.Read = True Then
            Dim a As String = ""
            Dim b As String
            a = dr.Item(0)
            b = dr.Item(1)
            Session("id") = TextBox1.Text
            Session("First") = a
            Session("Last") = b
            Response.Redirect("Searching.aspx")
        Else
            Label1.Visible = True
            Label1.Text = "Check your User ID or Passsword"
        End If
        con.Close()
    End Sub
End Class
