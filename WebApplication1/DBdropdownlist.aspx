<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DBdropdownlist.aspx.cs" Inherits="WebApplication1.DBdropdownlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:DropDownList ID="ddlnametest" runat="server"  DataTextField="Hname" DataValueField="Hid" AutoPostBack="True" DataSourceID="SqlDataSource1" ></asp:DropDownList>

            <br />
            <br />

        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="SELECT [Hid], [Hname] FROM [Hostel]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2"  BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="Hid" HeaderText="Hid" SortExpression="Hid" />
                <asp:CheckBoxField DataField="wifi" HeaderText="wifi" SortExpression="wifi" />
                <asp:CheckBoxField DataField="two_wheeler_parking" HeaderText="two_wheeler_parking" SortExpression="two_wheeler_parking" />
                <asp:CheckBoxField DataField="hot_water" HeaderText="hot_water" SortExpression="hot_water" />
                <asp:BoundField DataField="food" HeaderText="food" SortExpression="food" />
            </Columns>
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
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="SELECT * FROM [Facilites]">
        </asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="SELECT [sno], [sname] FROM [test]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:DropDownList ID="ddltest" runat="server" DataSourceID="SqlDataSource3" DataTextField="sname" DataValueField="sno">
        </asp:DropDownList>
        <br />
        <br />
        <br />
    </form>
</body>
</html>
