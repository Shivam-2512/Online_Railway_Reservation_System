Imports System.Data.SqlClient
Partial Class Registration
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim com As SqlCommand
    Dim dr As SqlDataReader
    Dim submit, gender, occupation, state, securtiy_question As String
    Dim dt As Date
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        For i = 1 To 31
            DropDownList2.Items.Add(i)
        Next
        For i = 1950 To 2015
            DropDownList4.Items.Add(i)
        Next
        con = New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\vaio\Documents\3006-AJay\Online_Railway_Reservation_System\App_Data\Register_mst.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        gender = DropDownList1.Text
        occupation = DropDownList5.Text
        state = DropDownList6.Text
        securtiy_question = DropDownList7.Text
        dt = (DropDownList2.Text + DropDownList3.Text + DropDownList4.Text)
        con.Open()
        com = New SqlCommand("Select * from Registration Where user_id='" + TextBox9.Text + "'", con)
        dr = com.ExecuteReader
        If dr.Read = True Then
            Label1.Visible = True
            Label1.Text = "User ID already is exsits"
        Else
            con.Close()
            con.Open()
            submit = "Insert into Registration values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + gender + "','" + dt + "','" + occupation + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + state + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + securtiy_question + "','" + TextBox12.Text + "')"
            com = New SqlCommand(submit, con)
            com.ExecuteNonQuery()
            Label1.Visible = False
            Session("First") = TextBox1.Text
            Session("Last") = TextBox2.Text
            MsgBox("Registration Successfully......")
            con.Close()
            Response.Redirect("Searching.aspx")
        End If
        con.Close()
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
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
        TextBox12.Text = ""
        DropDownList1.SelectedIndex = 0
        DropDownList2.Text = Today.Date.Day
        DropDownList3.Text = Today.Month.ToString("ddd")
        DropDownList4.Text = Today.Year
        DropDownList5.SelectedIndex = 0
        DropDownList6.SelectedIndex = 0
        DropDownList7.SelectedIndex = 0
    End Sub
End Class
