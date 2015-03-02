<%@ Page Language="VB" AutoEventWireup="false" CodeFile="regExprValid.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Example Using Required Field Validators </title>
    <link rel="stylesheet" type="text/css" href="./css/stylesheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        What is your name?&nbsp;
        <asp:TextBox ID="tb_name" runat="server"></asp:TextBox>
        &nbsp;
            <span class="errorMessage">
                <asp:RequiredFieldValidator ID="rfv_name" runat="server" 
                     ControlToValidate="tb_name" 
                     ErrorMessage="** Please enter your name.">
                </asp:RequiredFieldValidator>
            </span>

        <br />
        <br />
        How old are you?&nbsp;
        <asp:TextBox ID="tb_age" runat="server"></asp:TextBox>
        &nbsp; 
            <span class="errorMessage"> 
                <asp:RegularExpressionValidator ID="regex_age" runat="server" 
                    ControlToValidate="tb_age" 
                    ErrorMessage="** Please enter a valid age" 
                    ValidationExpression="^\d{1,2}$">
                </asp:RegularExpressionValidator>
            </span>
        <br />
        <br />
        When were you born?&nbsp;
        <asp:TextBox ID="tb_dob" runat="server"></asp:TextBox>
        &nbsp; 
            <span class="errorMessage"> 
                <asp:RegularExpressionValidator ID="regex_dob" runat="server" 
                    ControlToValidate="tb_dob" 
                    ErrorMessage="** Please enter a valid date" 
                    ValidationExpression="^(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d$">
                </asp:RegularExpressionValidator>
            </span>
        <br /><br />
        <asp:Button ID="btn_submit" runat="server" Text="Submit" />
    
        <br />
        <br />
        <asp:Label ID="lbl_results" runat="server" Text=""></asp:Label>
    
    </div>
    </form>
</body>
</html>
