<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserAccessInformationPage.aspx.cs" Inherits="CIS470_Senior_Course_Project.UserAccessInformationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <center>
        <div>
            <asp:Image ID="Image1" runat="server" Height="185px" ImageUrl="~/Images/facebook_cover_photo_1.png" Width="539px" />
        </div>
        <asp:Panel ID="Panel1" runat="server">
             <br />
            <div style="text-align: center; font-weight: bold;">
        Manage Users:</div>
             <div class="auto-style1">
                 <asp:Label ID="Label1" runat="server" Text="User Name:"></asp:Label>
                 <asp:TextBox ID="txtUserName" runat="server" ></asp:TextBox>
                 &nbsp;<asp:Label ID="lblErrorUserName" runat="server"></asp:Label>
                 <br />
                 Password:
                 <asp:TextBox ID="txtPassword" runat="server" ></asp:TextBox>
                 &nbsp;<asp:Label ID="lblErrorPassword" runat="server" Text=""></asp:Label>
                 <br />
                 Security Level:
                 <asp:DropDownList ID="cboRole" runat="server" OnSelectedIndexChanged="cboRole_SelectedIndexChanged">
                     <asp:ListItem>O</asp:ListItem>
                     <asp:ListItem>S</asp:ListItem>
                     <asp:ListItem>P</asp:ListItem>
                     <asp:ListItem>C</asp:ListItem>
                 </asp:DropDownList>
                 <br />
                 <br />
                 <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Add User" />
                 <br />
                 <br />
                 <asp:Label ID="lblNewUserStatus" runat="server" ForeColor="#CC0000"></asp:Label>
                 <br />
             </div>
        </asp:Panel>
      
        <asp:GridView ID="grdViewUserInfo" runat="server" AutoGenerateColumns="False" DataKeyNames="userAccessId" DataSourceID="SqlDataSource1" Width="1117px">
            <Columns>
                <asp:BoundField DataField="userAccessId" HeaderText="userAccessId" InsertVisible="False" ReadOnly="True" SortExpression="userAccessId" />
                <asp:BoundField DataField="userName" HeaderText="userName" SortExpression="userName" />
                <asp:BoundField DataField="userPassword" HeaderText="userPassword" SortExpression="userPassword" />
                <asp:BoundField DataField="securityLevel" HeaderText="securityLevel" SortExpression="securityLevel" />
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
      
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:wsc_v4ConnectionString %>" DeleteCommand="DELETE FROM [tblUserAccess] WHERE [userAccessId] = ? AND (([userName] = ?) OR ([userName] IS NULL AND ? IS NULL)) AND (([userPassword] = ?) OR ([userPassword] IS NULL AND ? IS NULL)) AND (([securityLevel] = ?) OR ([securityLevel] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [tblUserAccess] ([userAccessId], [userName], [userPassword], [securityLevel]) VALUES (?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:wsc_v4ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblUserAccess]" UpdateCommand="UPDATE [tblUserAccess] SET [userName] = ?, [userPassword] = ?, [securityLevel] = ? WHERE [userAccessId] = ? AND (([userName] = ?) OR ([userName] IS NULL AND ? IS NULL)) AND (([userPassword] = ?) OR ([userPassword] IS NULL AND ? IS NULL)) AND (([securityLevel] = ?) OR ([securityLevel] IS NULL AND ? IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_userAccessId" Type="Int32" />
                    <asp:Parameter Name="original_userName" Type="String" />
                    <asp:Parameter Name="original_userName" Type="String" />
                    <asp:Parameter Name="original_userPassword" Type="String" />
                    <asp:Parameter Name="original_userPassword" Type="String" />
                    <asp:Parameter Name="original_securityLevel" Type="String" />
                    <asp:Parameter Name="original_securityLevel" Type="String" />
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
                    <asp:Parameter Name="original_userAccessId" Type="Int32" />
                    <asp:Parameter Name="original_userName" Type="String" />
                    <asp:Parameter Name="original_userName" Type="String" />
                    <asp:Parameter Name="original_userPassword" Type="String" />
                    <asp:Parameter Name="original_userPassword" Type="String" />
                    <asp:Parameter Name="original_securityLevel" Type="String" />
                    <asp:Parameter Name="original_securityLevel" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
      
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        &nbsp;<asp:LinkButton ID="btnBack" runat="server" PostBackUrl="~/MainPage.aspx">&lt;&lt;Back</asp:LinkButton>
            <br />
     </center> 
    </form>
</body>
</html>
