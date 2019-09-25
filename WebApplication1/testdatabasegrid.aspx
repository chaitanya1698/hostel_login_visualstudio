<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testdatabasegrid.aspx.cs" Inherits="WebApplication1.testdatabasegrid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>


            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server"   DataKeyNames="sno"  ShowFooter="True" Width="406px"  BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="demogrid" AutoGenerateColumns="False" >
                <Columns>

                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />

                    <asp:TemplateField HeaderText="sno" SortExpression="sno">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("sno") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("sno") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:LinkButton ID="Lbinsert" ValidationGroup="INSERT" runat="server"   OnClick ="Lbinsert_Click">insert</asp:LinkButton>
                        </FooterTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField FooterText="enter the name" HeaderText="sname" SortExpression="sname">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("sname") %>'></asp:TextBox>

                            <asp:RequiredFieldValidator ID="ReqFieldEditname" runat="server" ControlToValidate="TextBox1" Text="*" ForeColor="Red" ErrorMessage="name is required"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("sname") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>

                            <asp:TextBox ID="Txtname" runat="server"></asp:TextBox>

                             <asp:RequiredFieldValidator ID="ReqFieldInsertname"  ValidationGroup="INSERT" runat="server" ControlToValidate="Txtname" Text="*" ForeColor="Red" ErrorMessage="name is required"></asp:RequiredFieldValidator>
                        
                        </FooterTemplate>

                    </asp:TemplateField>


                    <asp:TemplateField FooterText="enter the email" HeaderText="smail" SortExpression="smail">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("smail") %>'></asp:TextBox>

                            <asp:RequiredFieldValidator ID="ReqFieldEditmail" runat="server" ControlToValidate="TextBox2" Text="*" ForeColor="Red" ErrorMessage="MAil is required"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("smail") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>

                            <asp:TextBox ID="Txtcity" runat="server"></asp:TextBox>

                             <asp:RequiredFieldValidator ID="ReqFieldInsertmail" ValidationGroup="INSERT" runat="server" ControlToValidate="Txtcity" Text="*" ForeColor="Red" ErrorMessage="MAil is required"></asp:RequiredFieldValidator>
                        
                        </FooterTemplate>

                    </asp:TemplateField>


                </Columns>
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
            <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="INSERT" ForeColor="Red" runat="server" />
            
            <asp:ValidationSummary ID="ValidationSummary2"  ForeColor="Red" runat="server" />

            <asp:SqlDataSource ID="demogrid" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>"
                SelectCommand="SELECT * FROM [test]" 
                DeleteCommand="DELETE FROM [test] WHERE [sno] = @sno" 
                InsertCommand="INSERT INTO [test] ([sname], [smail]) VALUES (@sname, @smail)" 
                UpdateCommand="UPDATE [test] SET [sname] = @sname, [smail] = @smail WHERE [sno] = @sno">
                <DeleteParameters>
                    <asp:Parameter Name="sno" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="sname" Type="String" />
                    <asp:Parameter Name="smail" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="sname" Type="String" />
                    <asp:Parameter Name="smail" Type="String" />
                    <asp:Parameter Name="sno" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>


        </div>
    </form>
 </body>
</html>
