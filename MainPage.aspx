<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="CIS470_Senior_Course_Project.MainPage" %>

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
            <asp:Image ID="Image1" runat="server" Height="185px" ImageUrl="~/Images/facebook_cover_photo_1.png" Width="539px" style="margin-bottom: 0px" /></center>
        </div>
        <asp:Panel ID="Panel1" runat="server" Height="1646px">
            <asp:Button ID="btnLogOut" runat="server" Text="LogOut" PostBackUrl="~/LoginPage.aspx" />
            <div class="auto-style1">
                <asp:GridView ID="grdViewOperationsManagerNotification" runat="server" AutoGenerateColumns="False" DataKeyNames="notificationID" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="notificationID" HeaderText="notificationID" InsertVisible="False" ReadOnly="True" SortExpression="notificationID" />
                        <asp:BoundField DataField="sender" HeaderText="sender" SortExpression="sender" />
                        <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\wsc_v4.mdb" DeleteCommand="DELETE FROM [tblNotificationOperationsManager] WHERE [notificationID] = ? AND (([sender] = ?) OR ([sender] IS NULL AND ? IS NULL)) AND (([message] = ?) OR ([message] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [tblNotificationOperationsManager] ([notificationID], [sender], [message]) VALUES (?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM [tblNotificationOperationsManager]" UpdateCommand="UPDATE [tblNotificationOperationsManager] SET [sender] = ?, [message] = ? WHERE [notificationID] = ? AND (([sender] = ?) OR ([sender] IS NULL AND ? IS NULL)) AND (([message] = ?) OR ([message] IS NULL AND ? IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_notificationID" Type="Int32" />
                        <asp:Parameter Name="original_sender" Type="String" />
                        <asp:Parameter Name="original_sender" Type="String" />
                        <asp:Parameter Name="original_message" Type="String" />
                        <asp:Parameter Name="original_message" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="notificationID" Type="Int32" />
                        <asp:Parameter Name="sender" Type="String" />
                        <asp:Parameter Name="message" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="sender" Type="String" />
                        <asp:Parameter Name="message" Type="String" />
                        <asp:Parameter Name="original_notificationID" Type="Int32" />
                        <asp:Parameter Name="original_sender" Type="String" />
                        <asp:Parameter Name="original_sender" Type="String" />
                        <asp:Parameter Name="original_message" Type="String" />
                        <asp:Parameter Name="original_message" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:GridView ID="grdViewPrintingSpecialistNotification" runat="server" AutoGenerateColumns="False" DataKeyNames="notificationID" DataSourceID="SqlDataSource3">
                    <Columns>
                        <asp:BoundField DataField="notificationID" HeaderText="notificationID" InsertVisible="False" ReadOnly="True" SortExpression="notificationID" />
                        <asp:BoundField DataField="sender" HeaderText="sender" SortExpression="sender" />
                        <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\wsc_v4.mdb" DeleteCommand="DELETE FROM [tblNotificationPrintingSpecialist] WHERE [notificationID] = ? AND (([sender] = ?) OR ([sender] IS NULL AND ? IS NULL)) AND (([message] = ?) OR ([message] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [tblNotificationPrintingSpecialist] ([notificationID], [sender], [message]) VALUES (?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM [tblNotificationPrintingSpecialist]" UpdateCommand="UPDATE [tblNotificationPrintingSpecialist] SET [sender] = ?, [message] = ? WHERE [notificationID] = ? AND (([sender] = ?) OR ([sender] IS NULL AND ? IS NULL)) AND (([message] = ?) OR ([message] IS NULL AND ? IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_notificationID" Type="Int32" />
                        <asp:Parameter Name="original_sender" Type="String" />
                        <asp:Parameter Name="original_sender" Type="String" />
                        <asp:Parameter Name="original_message" Type="String" />
                        <asp:Parameter Name="original_message" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="notificationID" Type="Int32" />
                        <asp:Parameter Name="sender" Type="String" />
                        <asp:Parameter Name="message" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="sender" Type="String" />
                        <asp:Parameter Name="message" Type="String" />
                        <asp:Parameter Name="original_notificationID" Type="Int32" />
                        <asp:Parameter Name="original_sender" Type="String" />
                        <asp:Parameter Name="original_sender" Type="String" />
                        <asp:Parameter Name="original_message" Type="String" />
                        <asp:Parameter Name="original_message" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <asp:GridView ID="grdViewStockRoomClerkNotification" runat="server" AutoGenerateColumns="False" DataKeyNames="notificationID" DataSourceID="SqlDataSource_notificationStockRoomClerk">
                    <Columns>
                        <asp:BoundField DataField="notificationID" HeaderText="notificationID" InsertVisible="False" ReadOnly="True" SortExpression="notificationID" />
                        <asp:BoundField DataField="sender" HeaderText="sender" SortExpression="sender" />
                        <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource_notificationStockRoomClerk" runat="server" ConflictDetection="CompareAllValues" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\wsc_v4.mdb" DeleteCommand="DELETE FROM [tblNotificationStockRoomClerk] WHERE [notificationID] = ? AND (([sender] = ?) OR ([sender] IS NULL AND ? IS NULL)) AND (([message] = ?) OR ([message] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [tblNotificationStockRoomClerk] ([notificationID], [sender], [message]) VALUES (?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM [tblNotificationStockRoomClerk]" UpdateCommand="UPDATE [tblNotificationStockRoomClerk] SET [sender] = ?, [message] = ? WHERE [notificationID] = ? AND (([sender] = ?) OR ([sender] IS NULL AND ? IS NULL)) AND (([message] = ?) OR ([message] IS NULL AND ? IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_notificationID" Type="Int32" />
                        <asp:Parameter Name="original_sender" Type="String" />
                        <asp:Parameter Name="original_sender" Type="String" />
                        <asp:Parameter Name="original_message" Type="String" />
                        <asp:Parameter Name="original_message" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="notificationID" Type="Int32" />
                        <asp:Parameter Name="sender" Type="String" />
                        <asp:Parameter Name="message" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="sender" Type="String" />
                        <asp:Parameter Name="message" Type="String" />
                        <asp:Parameter Name="original_notificationID" Type="Int32" />
                        <asp:Parameter Name="original_sender" Type="String" />
                        <asp:Parameter Name="original_sender" Type="String" />
                        <asp:Parameter Name="original_message" Type="String" />
                        <asp:Parameter Name="original_message" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="grdViewSalesPersonNotification" runat="server" AutoGenerateColumns="False" DataKeyNames="notificationID" DataSourceID="SqlDataSource_SalesPersonNotification">
                    <Columns>
                        <asp:BoundField DataField="notificationID" HeaderText="notificationID" InsertVisible="False" ReadOnly="True" SortExpression="notificationID" />
                        <asp:BoundField DataField="sender" HeaderText="sender" SortExpression="sender" />
                        <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource_SalesPersonNotification" runat="server" ConflictDetection="CompareAllValues" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\wsc_v4.mdb" DeleteCommand="DELETE FROM [tblNotificationSalesPerson] WHERE [notificationID] = ? AND (([sender] = ?) OR ([sender] IS NULL AND ? IS NULL)) AND (([message] = ?) OR ([message] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [tblNotificationSalesPerson] ([notificationID], [sender], [message]) VALUES (?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM [tblNotificationSalesPerson]" UpdateCommand="UPDATE [tblNotificationSalesPerson] SET [sender] = ?, [message] = ? WHERE [notificationID] = ? AND (([sender] = ?) OR ([sender] IS NULL AND ? IS NULL)) AND (([message] = ?) OR ([message] IS NULL AND ? IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_notificationID" Type="Int32" />
                        <asp:Parameter Name="original_sender" Type="String" />
                        <asp:Parameter Name="original_sender" Type="String" />
                        <asp:Parameter Name="original_message" Type="String" />
                        <asp:Parameter Name="original_message" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="notificationID" Type="Int32" />
                        <asp:Parameter Name="sender" Type="String" />
                        <asp:Parameter Name="message" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="sender" Type="String" />
                        <asp:Parameter Name="message" Type="String" />
                        <asp:Parameter Name="original_notificationID" Type="Int32" />
                        <asp:Parameter Name="original_sender" Type="String" />
                        <asp:Parameter Name="original_sender" Type="String" />
                        <asp:Parameter Name="original_message" Type="String" />
                        <asp:Parameter Name="original_message" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <br />
                <asp:Panel ID="Panel2" runat="server" Height="687px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="imgCustomerInfo" runat="server" Height="90px" ImageUrl="~/Images/iconfinder_user_information_1902263.png" Width="90px" />
                    <asp:LinkButton ID="btnCustomerInformation" runat="server" OnClick="btnCustomerInformation_Click" PostBackUrl="~/CustomerInformationPage.aspx" style="text-align: left">Customer Information</asp:LinkButton>
                    <br />
                    &nbsp;&nbsp;
                    <asp:Image ID="imgOrderInfo" runat="server" Height="80px" ImageUrl="~/Images/information.png" Width="80px" />
                    <asp:LinkButton ID="btnOrderInformation" runat="server" OnClick="LinkButton2_Click" PostBackUrl="~/OrderInformationPage.aspx">Order Information</asp:LinkButton>
                    &nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="imgInventoryInfo" runat="server" Height="80px" ImageUrl="~/Images/inventory.png" Width="80px" />
                    <asp:LinkButton ID="btnInventoryInformation" runat="server" OnClick="btnInventoryInformation_Click1" PostBackUrl="~/InventoryInformationPage.aspx">Inventory Information</asp:LinkButton>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="imgUserAccesInfo" runat="server" Height="80px" ImageUrl="~/Images/iconfinder_General_Office_37_2530816.png" Width="80px" />
                    <asp:LinkButton ID="btnUserAccessInformation" runat="server" OnClick="btnUserAccessInformation_Click" PostBackUrl="~/UserAccessInformationPage.aspx">User Access Infromation</asp:LinkButton>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="imgQualityAssuranceChecklist" runat="server" Height="80px" ImageUrl="~/Images/iconfinder_Checklist_379508.png" Width="80px" />
                    <asp:LinkButton ID="btnQualityAssuranceChecklist" runat="server" OnClick="btnQualityAssuranceChecklist_Click" PostBackUrl="~/QualityAssuranceChecklistPage.aspx">Quality Assurance Checklist</asp:LinkButton>
                </asp:Panel>
                <br />
                &nbsp;
               
                
                <br />
                &nbsp;&nbsp;&nbsp;<br /><br /><br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
        </asp:Panel>
        </center>
    </form>
</body>
</html>
