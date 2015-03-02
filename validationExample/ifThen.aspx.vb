
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub btn_submit_Click(sender As Object, e As EventArgs) Handles btn_submit.Click

        'Declare the necessary variables with appropriate data types.
        Dim myName As String
        Dim myAge As Integer
        
        'Validate the "name" text box.

        'If there is nothing in the box, prompt the user.
        If tb_name.Text = String.Empty Then

            lbl_nameError.Text = "** Please enter your name. ** "

            Exit Sub

            'If there is something in the box, make sure it matches the rules of being a name 
            'using regular expressions. If it does not match, then display an error.
        ElseIf Not Regex.IsMatch(tb_name.Text, "^[a-zA-Z''-'\s]{1,40}$") Then

            lbl_nameError.Text = " ** It appears you did not enter a valid name. ** "

            Exit Sub

            'If all tests pass, then populate the variable with the user input and clear out the error label.
        Else

            myName = tb_name.Text
            lbl_nameError.Text = String.Empty

        End If

        'Validate the "age" textbox

        'If there is nothing in the box, prompt the user.
        If tb_age.Text = String.Empty Then

            lbl_ageError.Text = "** Please enter your age. ** "

            Exit Sub

            'If there is something in the box, make sure it matches the rules of being a name 
            'using regular expressions. If it does not match, then display an error.
        ElseIf Not Regex.IsMatch(tb_age.Text, "^\d\d{1,2}$") Then

            lbl_ageError.Text = " ** It appears you did not enter a valid age. ** "

            Exit Sub

            'If all tests pass, then populate the variable with the user input and clear out the error label.
        Else

            myAge = tb_age.Text
            lbl_ageError.Text = String.Empty

        End If


        lbl_results.Text = "Welcome to my site, " & myName & ". I see you are " & myAge & " years old. "

    End Sub

End Class
