<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hostelRegistration.aspx.cs" Inherits="WebApplication1.hostelRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>hostellogin</title>
   
</head>
<body>
    <form id="form1" runat="server">
        
        <div>

              <fieldset><legend>login page</legend>
                    
               <asp:Label ID="uName" runat="server" Text="username"></asp:Label>
                    
                    
                <asp:TextBox ID="txtUName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFVusername" 
                    ControlToValidate="txtUName" runat="server" 
                    text="*" ForeColor="Red" ErrorMessage="please enter username"></asp:RequiredFieldValidator>
            <br />
                 <asp:Label ID="pwd" runat="server" Text="password"  ToolTip="enter your password"></asp:Label>
                   
                 <asp:TextBox ID="txtPwd" runat="server"  TextMode="Password"  ToolTip="enter password" style="margin-left: 0px"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RFVpassword" runat="server" ControlToValidate="txtpwd" Text="*" ForeColor="Red" ErrorMessage="please enter your password"></asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator ID="REVpassword"  runat="server"
                    ErrorMessage="password should contain minium 8 characters , a special character,a number , a alphabet"
                    text="*" ForeColor="Red" ControlToValidate="txtpwd"
                    ValidationExpression="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{8,20})">

                </asp:RegularExpressionValidator>

                   
                <br />
                <asp:Label ID="Lablogintype" runat="server" Text="Enter type of login"></asp:Label>
                 <br />   
                <asp:DropDownList ID="ddlLogType" runat="server" DataSourceID="SqlDataSourceLoginType" DataTextField="logincategory" DataValueField="loginvalue" ToolTip="select the type of login" Width="178px">
                    
                </asp:DropDownList>
                
                  <asp:RequiredFieldValidator ID="RFVddlLogType" runat="server" Text="*"  ControlToValidate="ddlLogType" 
                      ForeColor="Red" ErrorMessage ="Please select a choice"  InitialValue="0">

                  </asp:RequiredFieldValidator>
                <asp:SqlDataSource ID="SqlDataSourceLoginType" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="SELECT * FROM [logintable]"></asp:SqlDataSource>
                <br />
                   
                <asp:Button ID="bLogin" runat="server"   OnClick="btnLogin_Click" Text="Login" />

                  <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" runat="server" />

                   <br />
                   <br />

                  <asp:Label ID="llbloginfail" runat="server" Text="loging credintails are incorrect" ForeColor="Red" ></asp:Label>
            
           </fieldset>
        </div>
    </form>
</body>
</html>
