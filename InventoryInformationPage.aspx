<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InventoryInformationPage.aspx.cs" Inherits="CIS470_Senior_Course_Project.InventoryInformationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-top: 0px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <center>
        <div>
           
            <asp:Image ID="Image1" runat="server" Height="156px" ImageUrl="~/Images/facebook_cover_photo_1.png" Width="539px" />
        </div>
        <asp:Panel ID="linkSearchInventory" runat="server" Height="1070px">
            <br />
            &nbsp;<asp:GridView ID="grdViewInventory" runat="server" AutoGenerateColumns="False" DataKeyNames="inventoryId" DataSourceID="SqlDataSource_Inventory" >
                <Columns>
                    <asp:BoundField DataField="inventoryId" HeaderText="inventoryId" InsertVisible="False" ReadOnly="True" SortExpression="inventoryId" />
                    <asp:BoundField DataField="productName" HeaderText="productName" SortExpression="productName" />
                    <asp:BoundField DataField="productDesc" HeaderText="productDesc" SortExpression="productDesc" />
                    <asp:BoundField DataField="productPrice" HeaderText="productPrice" SortExpression="productPrice" />
                    <asp:CheckBoxField DataField="productDelivered" HeaderText="productDelivered" SortExpression="productDelivered" />
                    <asp:BoundField DataField="productQtyInStock" HeaderText="productQtyInStock" SortExpression="productQtyInStock" />
                    <asp:BoundField DataField="productReorderQty" HeaderText="productReorderQty" SortExpression="productReorderQty" />
                    <asp:BoundField DataField="productDeliveryDate" HeaderText="productDeliveryDate" SortExpression="productDeliveryDate" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource_Inventory" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\wsc_v4.mdb" ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM [tblInventory]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Panel ID="panelStockRoomClerk" runat="server" CssClass="auto-style1" Height="544px">
                <br />
                <asp:Panel ID="SearchPanelPrintingAndClerk0" runat="server">
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Search for item by item name"></asp:Label>
                    &nbsp;<asp:TextBox ID="txtSearchItem" runat="server"></asp:TextBox>
                    &nbsp;<asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" PostBackUrl="~/ViewItem.aspx" Text="Search" />
                    &nbsp;<asp:Label ID="lblErrorInventory" runat="server"></asp:Label>
                    <br />
                    <br />
                </asp:Panel>
                <br />
                <asp:Image ID="imgEditInventory" runat="server" Height="30px" ImageUrl="~/Images/iconfinder_EditDocument_728933.png" Width="30px" />
                <asp:LinkButton ID="linkEditInventory" runat="server" PostBackUrl="~/EditInventory.aspx">Edit Inventory</asp:LinkButton>
                <br />
                <br />
                <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/MainPage.aspx">&lt;&lt;Back</asp:LinkButton>
            </asp:Panel>
        </asp:Panel>
    </form>
</body>
</html>
