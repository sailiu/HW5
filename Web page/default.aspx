<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Saiyin's Sick Mortgage Calculator</title>
</head>
<body>
    <header>Mortgage Calculator</header>
    <form id="form1" runat="server">
    <div>
   
        Loan Amount:<asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>
                  
        <asp:RequiredFieldValidator ID="LAvalidator" runat="server" controltovalidate="tbLoanAmt" ErrorMessage="Please enter the loan amount" ForeColor="Red"></asp:RequiredFieldValidator>
        <br /><br />      
        
        Annual Interest %: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="AIvalidator" runat="server" ControlToValidate="tbAnnualInterest" ErrorMessage="Please enter Annual Interest" ForeColor="Red"></asp:RequiredFieldValidator>
        
        <br /><br />

        Loan Term (Yrs): <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="LTvalidator" runat="server" ControlToValidate="tbLoanTerm" ErrorMessage="Please enter Loan Term" ForeColor="Red"></asp:RequiredFieldValidator>
        
        <br /><br />



        <asp:Button ID="b_clear" runat="server" Text="Clear" />
&nbsp;&nbsp;&nbsp;



        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" />
        

        
        <br /><br />
                
        Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>
        
        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server" Width="211px" />
            
        </div>
    </form>
</body>
</html>
