﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="60.aspx.cs" Inherits="experiments_database_00" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link type="text/css" rel="stylesheet" href="../../css/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <h1>Linking GridView Page to DetailsView Inserting Oage</h1>

        <h2>Applications</h2>

        <p>
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-primary" NavigateUrl="60-Insert.aspx">Create New Application</asp:HyperLink>
            <asp:GridView CssClass="table table-striped" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowSorting="True" AllowPaging="True" PageSize="5">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="Downloads" HeaderText="Downloads" SortExpression="Downloads" />
                    <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" ReadOnly="True" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" >
                        <ControlStyle CssClass="btn btn-primary btn-xs"></ControlStyle>
                    </asp:CommandField>
                </Columns>
                <PagerSettings Mode="NumericFirstLast" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jgaCS %>" DeleteCommand="DELETE FROM [Application] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Application] ([Name], [Price], [Downloads], [Category]) VALUES (@Name, @Price, @Downloads, @Category)" ProviderName="<%$ ConnectionStrings:jgaCS.ProviderName %>" SelectCommand="SELECT [Id], [Name], [Price], [Downloads], [Category] FROM [Application]" UpdateCommand="UPDATE [Application] SET [Name] = @Name, [Price] = @Price, [Downloads] = @Downloads WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Price" Type="Double" />
                    <asp:Parameter Name="Downloads" Type="Int32" />
                    <asp:Parameter Name="Category" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Price" Type="Double" />
                    <asp:Parameter Name="Downloads" Type="Int32" />
                    <asp:Parameter Name="Category" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <h2>Source</h2>
       	<a target="_blank" href="../../fileview/Default.aspx?~/experiments/database/60.aspx">Main ASPX</a><br/>
       	<a target="_blank" href="../../fileview/Default.aspx?~/experiments/database/60.aspx.cs">Main C#</a><br/>
    </div>
    </form>
</body>
</html>
