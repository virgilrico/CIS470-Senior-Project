<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCustomerPage.aspx.cs" Inherits="CIS470_Senior_Course_Project.AddCustomerPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 58%;
        }
        .auto-style4 {
            height: 50px;
            width: 338px;
        }
        .auto-style6 {
            width: 338px;
        }
        .auto-style8 {
            height: 50px;
            width: 878px;
            text-align: center;
        }
        .auto-style10 {
            width: 878px;
        }
        .auto-style11 {
            width: 878px;
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
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="customerId" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="customerId" HeaderText="customerId" InsertVisible="False" ReadOnly="True" SortExpression="customerId" />
                            <asp:BoundField DataField="customerFirstName" HeaderText="customerFirstName" SortExpression="customerFirstName" />
                            <asp:BoundField DataField="customerLastName" HeaderText="customerLastName" SortExpression="customerLastName" />
                            <asp:BoundField DataField="customerUserName" HeaderText="customerUserName" SortExpression="customerUserName" />
                            <asp:BoundField DataField="customerEmail" HeaderText="customerEmail" SortExpression="customerEmail" />
                            <asp:BoundField DataField="customerAddress" HeaderText="customerAddress" SortExpression="customerAddress" />
                            <asp:BoundField DataField="customerCity" HeaderText="customerCity" SortExpression="customerCity" />
                            <asp:BoundField DataField="customerState" HeaderText="customerState" SortExpression="customerState" />
                            <asp:BoundField DataField="customerZip" HeaderText="customerZip" SortExpression="customerZip" />
                            <asp:BoundField DataField="customerPhone" HeaderText="customerPhone" SortExpression="customerPhone" />
                            <asp:BoundField DataField="customerPayMethod" HeaderText="customerPayMethod" SortExpression="customerPayMethod" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\wsc_v4.mdb;Persist Security Info=True" ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM [tblCustomer]"></asp:SqlDataSource>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <br />
                </ContentTemplate>
            </asp:UpdatePanel>
        <br />
        
        <asp:Panel ID="Panel1" runat="server" Height="1430px">
           
            &nbsp;&nbsp;<br />&nbsp;
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                        &nbsp;<asp:Label ID="lblErrorFirstName" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtLastName" runat="server" height="22px" width="128px"></asp:TextBox>
                        &nbsp;<asp:Label ID="lblErrorLastName" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtUsername" runat="server" height="22px" width="128px"></asp:TextBox>
                        &nbsp;<asp:Label ID="lblErrorUsername" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td class="auto-style8">&nbsp;<asp:TextBox ID="txtEmail" runat="server" height="22px"  width="128px"></asp:TextBox>
                        &nbsp;<asp:Label ID="lblErrorEmail" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="lblAddress" runat="server" Text="Address "></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtAddress" runat="server" height="22px" style="margin-left: 0px" width="128px"></asp:TextBox>
                        &nbsp;<asp:Label ID="lblErrorAddress" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtCity" runat="server" height="22px" width="128px"></asp:TextBox>
                        &nbsp;<asp:Label ID="lblErrorCity" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="lblState" runat="server" Text="State"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtState" runat="server" height="22px" width="128px"></asp:TextBox>
                        &nbsp;<asp:Label ID="lblErrorState" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="lblZip" runat="server" Text="Zip"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtZip" runat="server" height="22px" width="128px"></asp:TextBox>
                        &nbsp;<asp:Label ID="lblErrorZip" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblPhone" runat="server" Text="Phone"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtPhone" runat="server" height="22px" width="128px"></asp:TextBox>
                        &nbsp;<asp:Label ID="lblErrorPhone" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style10">
                        <asp:Button ID="btnSubmitAddCustomer" runat="server" OnClick="btnSubmitAddCustomer_Click" Text="Submit" style="height: 56px" />
                    </td>
                </tr>
            </table>
            <asp:Label ID="lblError" runat="server"></asp:Label>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/CustomerInformationPage.aspx">&lt;&lt;Back</asp:LinkButton>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br /> &nbsp;&nbsp;&nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
        </asp:Panel>
        </center>
    </form>
</body>
</html>
