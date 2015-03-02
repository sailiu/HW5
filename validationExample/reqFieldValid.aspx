<%@ Page Language="VB" AutoEventWireup="false" CodeFile="reqFieldValid.aspx.vb" Inherits="_Default" %>

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
        &nbsp;&nbsp; 
        <span class="errorMessage">
                <asp:RequiredFieldValidator ID="rfv_age" runat="server" 
                     ControlToValidate="tb_age" 
                     ErrorMessage="** Please enter your age.">
                </asp:RequiredFieldValidator>
            </span>
        <br />
        <br />
        When were you born?&nbsp;
        <em>
        <asp:TextBox ID="tb_dob" runat="server"></asp:TextBox>
        (01/01/1990)</em>&nbsp; 
        <span class="errorMessage">
                <asp:RequiredFieldValidator ID="rfv_dob" runat="server" 
                     ControlToValidate="tb_dob" 
                     ErrorMessage="** Please enter your age.">
                </asp:RequiredFieldValidator>
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
