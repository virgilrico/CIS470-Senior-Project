<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserAccessInformationPage.aspx.cs" Inherits="CIS470_Senior_Project.UserAccessInformationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 788px; width: 931px">
            <br />
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="userAccessId" DataSourceID="Connection4" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                        <Columns>
                            <asp:BoundField DataField="userAccessId" HeaderText="Employee ID" InsertVisible="False" ReadOnly="True" SortExpression="userAccessId" />
                            <asp:BoundField DataField="userName" HeaderText="Username" SortExpression="userName" />
                            <asp:BoundField DataField="userPassword" HeaderText="Password" SortExpression="userPassword" />
                            <asp:BoundField DataField="securityLevel" HeaderText="Security Level" SortExpression="securityLevel" />
                            <asp:CommandField ButtonType="Button" ShowEditButton="True" ShowDeleteButton="True" />
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="Connection4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" DeleteCommand="DELETE FROM [tblUserAccess] WHERE [userAccessId] = ?" InsertCommand="INSERT INTO [tblUserAccess] ([userAccessId], [userName], [userPassword], [securityLevel]) VALUES (?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" SelectCommand="SELECT * FROM [tblUserAccess]" UpdateCommand="UPDATE [tblUserAccess] SET [userName] = ?, [userPassword] = ?, [securityLevel] = ? WHERE [userAccessId] = ?">
                        <DeleteParameters>
                            <asp:Parameter Name="userAccessId" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="userAccessId" Type="Int32" />
                            <asp:Parameter Name="userName" Type="String" />
                            <asp:Parameter Name="userPassword" Type="String" />
                            <asp:Parameter Name="securityLevel" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="userName" Type="String" />
                            <asp:Parameter Name="userPassword" Type="String" />
                            <asp:Parameter Name="securityLevel" Type="String" />
                            <asp:Parameter Name="userAccessId" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Manage Users"></asp:Label>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
                    &nbsp;
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username needs an input" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                    &nbsp;
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password needs an input" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Security Type"></asp:Label>
                    &nbsp;
                    <asp:DropDownList ID="ddlSecurityLevel" runat="server" EnableTheming="True">
                        <asp:ListItem Value="O"></asp:ListItem>
                        <asp:ListItem Value="S"></asp:ListItem>
                        <asp:ListItem Value="P"></asp:ListItem>
                        <asp:ListItem Value="C"></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:Button ID="btnAddUser" runat="server" OnClick="btnAddUser_Click" Text="Add User" Width="139px" />
                    <br />
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            &nbsp;
            <br />
            &nbsp;
            <br />
            &nbsp;
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
