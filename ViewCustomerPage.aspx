<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCustomerPage.aspx.cs" Inherits="CIS470_Senior_Course_Project.ViewCustomerPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" />
            <asp:Panel ID="Panel1" runat="server">
            </asp:Panel>
        </div>
        <asp:Panel ID="Panel2" runat="server" Height="766px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CUSTOMER_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="customerFirstName" HeaderText="customerFirstName" SortExpression="customerFirstName" />
                    <asp:BoundField DataField="CUSTOMER_ID" HeaderText="CUSTOMER_ID" InsertVisible="False" ReadOnly="True" SortExpression="CUSTOMER_ID" />
                    <asp:BoundField DataField="customerLastName" HeaderText="customerLastName" SortExpression="customerLastName" />
                    <asp:BoundField DataField="customerAddress" HeaderText="customerAddress" SortExpression="customerAddress" />
                    <asp:BoundField DataField="customerEmail" HeaderText="customerEmail" SortExpression="customerEmail" />
                    <asp:BoundField DataField="customerCity" HeaderText="customerCity" SortExpression="customerCity" />
                    <asp:BoundField DataField="customerState" HeaderText="customerState" SortExpression="customerState" />
                    <asp:BoundField DataField="customerZIP" HeaderText="customerZIP" SortExpression="customerZIP" />
                    <asp:BoundField DataField="customerpaymentType" HeaderText="customerpaymentType" SortExpression="customerpaymentType" />
                    <asp:BoundField DataField="customerPhone" HeaderText="customerPhone" SortExpression="customerPhone" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:wscConnectionString %>" ProviderName="<%$ ConnectionStrings:wscConnectionString.ProviderName %>" SelectCommand="SELECT [customerFirstName], [CUSTOMER_ID], [customerLastName], [customerAddress], [customerEmail], [customerCity], [customerState], [customerZIP], [customerpaymentType], [customerPhone] FROM [CUSTOMER]"></asp:SqlDataSource>
        </asp:Panel>
    </form>
</body>
</html>
