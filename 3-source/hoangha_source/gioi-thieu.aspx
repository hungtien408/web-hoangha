<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="gioi-thieu.aspx.cs" Inherits="gioi_thieu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div id="site">
            <a class="home" href="./">Trang chủ </a>/ <span>Giới Thiệu</span>
        </div>
    </div>
    <asp:ListView ID="lstAbout" runat="server" DataSourceID="odsAbout" EnableModelValidation="True">
        <ItemTemplate>
            <div class="about-us-bg">
                <div class="head-title">
                    <h1>
                        <%# Eval("ArticleTitle") %></h1>
                </div>
                <div class="wrapper-text about-us">
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Content") %>'></asp:Label>
                </div>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsAbout" runat="server" 
    SelectMethod="ArticleSelectAll" TypeName="TLLib.Article">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
            <asp:Parameter DefaultValue="1" Name="EndRowIndex" Type="String" />
            <asp:Parameter Name="Keyword" Type="String" />
            <asp:Parameter Name="ArticleTitle" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter DefaultValue="1" Name="ArticleCategoryID" Type="String" />
            <asp:Parameter Name="Tag" Type="String" />
            <asp:Parameter Name="IsShowOnHomePage" Type="String" />
            <asp:Parameter Name="IsHot" Type="String" />
            <asp:Parameter Name="IsNew" Type="String" />
            <asp:Parameter Name="FromDate" Type="String" />
            <asp:Parameter Name="ToDate" Type="String" />
            <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
            <asp:Parameter Name="Priority" Type="String" />
            <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
        </SelectParameters>
</asp:ObjectDataSource>
</asp:Content>
