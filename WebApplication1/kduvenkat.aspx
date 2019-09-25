<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kduvenkat.aspx.cs" Inherits="WebApplication1.kduvenkat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="llbcity" runat="server" Text="select the city" ToolTip="select the city"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >
                <asp:ListItem Value="1">banglore</asp:ListItem>
                <asp:ListItem Value="2">chennai</asp:ListItem>
                <asp:ListItem Value="3">hyderabad</asp:ListItem>
                <asp:ListItem Value="4">dehi</asp:ListItem>
            </asp:DropDownList>
            
            <br />
            <br />
            
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="click me for count change" />
            <br />
            <br />
            <asp:Label ID="llbgender" runat="server" Text="select the gender"></asp:Label>
            &nbsp;<br />
            <br />
            <fieldset> <legend>gender</legend>
            <asp:RadioButtonList ID="rbGender" runat="server" OnSelectedIndexChanged="rbGender_SelectedIndexChanged" Width="133px">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>female</asp:ListItem>
                <asp:ListItem>others</asp:ListItem>
            </asp:RadioButtonList>
                </fieldset>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
