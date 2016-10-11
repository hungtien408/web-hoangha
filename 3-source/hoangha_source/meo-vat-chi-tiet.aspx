<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="meo-vat-chi-tiet.aspx.cs" Inherits="tin_tuc_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div id="site">
            <a class="home" href="./">Trang chủ </a> / <span>
                <asp:Label ID="lblTitle" runat="server" Text=""></asp:Label></span>
        </div>
    </div>
    <asp:ListView ID="lstNewDetails" runat="server" DataSourceID="odsNewDetails" EnableModelValidation="True">
        <ItemTemplate>
            <div class="news-bg">
                <div class="head-title">
                    <h1>
                        MẸO VẶT CUỘC SỐNG</h1>
                </div>
                <div class="news-details-wrap">
                    <h1>
                        <%# Eval("ArticleTitle") %></h1>
                    <p><asp:Label ID="Label1" runat="server" Text='<%# Eval("Content") %>'></asp:Label></p>
                    <div class="more-news">
                        <h2>
                            Tin liên quan</h2>
                        <asp:ListView ID="lstNewSame" runat="server" DataSourceID="odsNewSame" EnableModelValidation="True">
                            <ItemTemplate>
                                <li><a href='<%# progressTitle(Eval("ArticleTitle")) + "-mv-" + Eval("ArticleID") %>'>
                                    <%# Eval("ArticleTitle") %></a></li>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <ul>
                                    <li runat="server" id="itemPlaceholder"></li>
                                </ul>
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsNewSame" runat="server" SelectMethod="ArticleSameSelectAll"
                            TypeName="TLLib.Article">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="10" Name="RerultCount" Type="String" />
                                <asp:QueryStringParameter DefaultValue="" Name="ArticleID" QueryStringField="mv"
                                    Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </div>
                </div>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsNewDetails" runat="server" SelectMethod="ArticleSelectOne"
        TypeName="TLLib.Article">
        <SelectParameters>
            <asp:QueryStringParameter Name="ArticleID" QueryStringField="mv" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
