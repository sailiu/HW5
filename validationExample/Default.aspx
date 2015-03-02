<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Example With No Validation</title>
    <link rel="stylesheet" type="text/css" href="./css/stylesheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        What is your name?&nbsp;
        <asp:TextBox ID="tb_name" runat="server"></asp:TextBox>
        &nbsp;
            
        <br />
        <br />
        How old are you?&nbsp;
        <asp:TextBox ID="tb_age" runat="server"></asp:TextBox>
        &nbsp; 
            <br />
        <br />
        When were you born?&nbsp;
        <asp:TextBox ID="tb_dob" runat="server"></asp:TextBox>
        &nbsp; 
            <br /><br />
        <asp:Button ID="btn_submit" runat="server" Text="Submit" />
    
        <br />
        <br />
        <asp:Label ID="lbl_results" runat="server" Text=""></asp:Label>
    
    </div>
    </form>
</body>
</html>
