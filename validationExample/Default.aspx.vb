
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub btn_submit_Click(sender As Object, e As EventArgs) Handles btn_submit.Click

        Dim myName As String
        Dim myAge As Integer
        Dim myDoB As Date

        myName = tb_name.Text
        myAge = tb_age.Text
        myDoB = tb_dob.Text

        lbl_results.Text = "Welcome to my site, " & myName & ". I see you are " & myAge & " years old. " _
                            & "It is good to know your birthday is " & myDoB & "."

    End Sub

End Class
