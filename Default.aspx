﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Products_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Products</title>
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../../Content/font-awesome.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <h1 class="text-center">View Products</h1>
        <div class="col-lg-12">
            <div class="well">
                <form runat="server" class="form-horizontal">
                    <asp:Panel ID="pnlProducts" runat="server"
                        DefaultButton="btnSearch">
                        <div class="col-lg-4 pull-right">
                            <div class="input-group">
                                <asp:TextBox ID="txtKeyword" runat="server" class="form-control" placeholder="Keyword..." />
                                <span class="input-group-btn">
                                    <asp:LinkButton ID="btnSearch" runat="server"
                                        class="btn btn-info" OnCLick="btnSearch_Click">
                                    <i class="fa fa-search" ></i>
                                    </asp:LinkButton>
                                </span>
                            </div>
                        </div>
                        <div class="row"></div>
                        <br />
                        <table class="table table-hover">
                            <thead>
                                <th>#</th>
                                <th>Name</th>
                                <th>Category</th>
                                <th>Description</th>
                                <th>Image</th>
                                <th>Price</th>
                                <th>Is Featured?</th>
                                <th>Date Added</th>
                                <th>Date Modified</th>
                                <th>Actions</th>
                            </thead>
                            <tbody>
                                

                                <asp:ListView ID="lvProducts" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%# Eval("ProductID") %> </td>
                                            <td><%# Eval("Name") %></td>
                                            <td><%# Eval("Category") %> </td>
                                            <td><%# Eval("Description") %></td>
                                            <td><%# Eval("Image") %></td>
                                            <td><%# Eval("Price") %></td>
                                            <td><%# Eval("IsFeatured") %></td>
                                            <td><%# Eval("Status") %></td>
                                            <td><%# Eval("DateAdded", "{0: MMM, dd, yyyy}") %> </td>
                                            <td><%# Eval("DateModified", "{0: MMM, dd, yyyy") %></td>
                                            
                                                <a href='Details.aspx?ID=<%# Eval("ProductID") %>'
                                                    class="btn btn-xs btn-info">
                                                    <i class="fa fa-search"></i>
                                                    

                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <EmptyDataTemplate>
                                        <tr>
                                            <td colspan="10">
                                                <h2 class="text-center">No records found! </h2>
                                            </td>
                                        </tr>
                                    </EmptyDataTemplate>
                                </asp:ListView>
                            </tbody>
                        </table>
                        <hr />
                        <asp:DataPager ID="dpProducts" runat="server" PageSize="5"
                            PagedControlID="lvProducts">
                            <Fields>
                                <asp:NumericPagerField ButtonType="Button"
                                    CurrentPageLabelCssClass="btn btn-info"
                                    NumericButtonCssClass="btn"
                                    NextPreviousButtonCssClass="btn" />
                            </Fields>
                        </asp:DataPager>
                    </asp:Panel>
                </form>
            </div>
        </div>
    </div>
    <div>
    </div>
</body>
</html>

