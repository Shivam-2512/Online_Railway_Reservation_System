Imports System.Data.SqlClient
Partial Class Train_Schedule
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim com As SqlCommand
    Dim departure, arrival As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            For i = 0 To 23
                DropDownList2.Items.Add(i)
            Next
            For i = 0 To 59
                DropDownList3.Items.Add(i)
            Next
            For i = 0 To 23
                DropDownList5.Items.Add(i)
            Next
            For i = 0 To 59
                DropDownList6.Items.Add(i)
            Next
        End If
        con = New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\vaio\Documents\3006-AJay\Online_Railway_Reservation_System\App_Data\Register_mst.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        departure = DropDownList2.Text + ":" + DropDownList3.Text
        arrival = DropDownList5.Text + ":" + DropDownList6.Text
        con.Open()
        com = New SqlCommand("Insert into Train_Schedule values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedValue.ToString + "','" + departure + "','" + DropDownList4.SelectedValue.ToString + "','" + arrival + "','" + TextBox3.Text + "','" + DropDownList7.SelectedValue.ToString + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "')", con)
        com.ExecuteNonQuery()
        MsgBox("Successful...")
        Call clear()
        GridView1.DataBind()
        con.Close()
    End Sub
    Sub clear()
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
        TextBox6.Text = ""
        TextBox7.Text = ""
        TextBox8.Text = ""
        TextBox9.Text = ""
        TextBox10.Text = ""
        TextBox11.Text = ""
        DropDownList1.SelectedIndex = 0
        DropDownList2.SelectedIndex = 0
        DropDownList3.SelectedIndex = 0
        DropDownList4.SelectedIndex = 0
        DropDownList5.SelectedIndex = 0
        DropDownList6.SelectedIndex = 0
        DropDownList7.SelectedIndex = 0
    End Sub
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Response.Redirect("Admin.aspx")
    End Sub
End Class
