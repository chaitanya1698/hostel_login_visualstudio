<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HosStuview.aspx.cs" Inherits="WebApplication1.HosStuview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

           <h1> <asp:Label ID="lblusername" runat="server" Text="Label"></asp:Label></h1>


             <asp:GridView ID="GVhostellogin" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                 <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                 <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                 <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                 <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                 <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                 <SortedAscendingCellStyle BackColor="#FFF1D4" />
                 <SortedAscendingHeaderStyle BackColor="#B95C30" />
                 <SortedDescendingCellStyle BackColor="#F1E5CE" />
                 <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>

             <asp:GridView ID="GVstudentlogin" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                 <AlternatingRowStyle BackColor="#DCDCDC" />
                 <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                 <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                 <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                 <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                 <SortedAscendingCellStyle BackColor="#F1F1F1" />
                 <SortedAscendingHeaderStyle BackColor="#0000A9" />
                 <SortedDescendingCellStyle BackColor="#CAC9C9" />
                 <SortedDescendingHeaderStyle BackColor="#000065" />
             </asp:GridView>


            <asp:Button ID="btnlogout" runat="server" Text="Logout" OnClick="btnlogout_Click" ToolTip="press this button to logout" />

        </div>
    </form>
</body>
</html>
