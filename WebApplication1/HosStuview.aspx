<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HosStuview.aspx.cs" Inherits="WebApplication1.HosStuview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

             <asp:GridView ID="GVhostellogin" runat="server">
                </asp:GridView>

             <asp:GridView ID="GVstudentlogin" runat="server"></asp:GridView>


            <asp:Button ID="btnlogout" runat="server" Text="Logout" OnClick="btnlogout_Click" ToolTip="press this button to logout" />

        </div>
    </form>
</body>
</html>
