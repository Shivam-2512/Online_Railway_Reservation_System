Imports System.Data.SqlClient
Partial Class _Default
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim com As SqlCommand
    Dim dr As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = "Welcome " + Session("First") + " " + Session("Last")
        Label2.Text = Session("pno")
        con = New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\vaio\Documents\3006-AJay\Online_Railway_Reservation_System\App_Data\Register_mst.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
        con.Open()
        com = New SqlCommand("Select trainno from Booking where pnr='" + Label2.Text + "'", con)
        dr = com.ExecuteReader
        dr.Read()
        Label3.Text = dr.Item("trainno")
        dr.Close()
        con.Close()
        Label2.Visible = False
        Label3.Visible = False
    End Sub
End Class
