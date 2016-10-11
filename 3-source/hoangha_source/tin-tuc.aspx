<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="tin-tuc.aspx.cs" Inherits="tin_tuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div id="site">
            <a class="home" href="./">Trang chủ </a>/ <span>Tin tức</span>
        </div>
    </div>
    <div class="news-bg">
        <div class="head-title">
            <h1>
                TIN TỨC</h1>
        </div>
        <div class="wrapper-news">
            <div class="main-news">
                <div class="main-news-left">
                    <asp:ListView ID="lstNewHot1" runat="server" DataSourceID="odsNewHot" EnableModelValidation="True">
                        <ItemTemplate>
                            <div class="news-image">
                                <a href='<%# progressTitle(Eval("ArticleTitle")) + "-tt-" + Eval("ArticleID") %>'>
                                    <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/article/" + Eval("ImageName") : "~/assets/images/main-news.png" %>'
                                        runat="server" />
                                </a>
                            </div>
                            <div class="main-title">
                                <a href='<%# progressTitle(Eval("ArticleTitle")) + "-tt-" + Eval("ArticleID") %>'>
                                    <%# Eval("ArticleTitle")%></a>
                                <p>
                                    <%# Eval("Description") %></p>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsNewHot" runat="server" SelectMethod="ArticleSelectAll"
                        TypeName="TLLib.Article">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                            <asp:Parameter DefaultValue="1" Name="EndRowIndex" Type="String" />
                            <asp:Parameter Name="Keyword" Type="String" />
                            <asp:Parameter Name="ArticleTitle" Type="String" />
                            <asp:Parameter Name="Description" Type="String" />
                            <asp:Parameter DefaultValue="2" Name="ArticleCategoryID" Type="String" />
                            <asp:Parameter Name="Tag" Type="String" />
                            <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                            <asp:Parameter DefaultValue="True" Name="IsHot" Type="String" />
                            <asp:Parameter Name="IsNew" Type="String" />
                            <asp:Parameter Name="FromDate" Type="String" />
                            <asp:Parameter Name="ToDate" Type="String" />
                            <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                            <asp:Parameter Name="Priority" Type="String" />
                            <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
                <div class="main-news-right">
                    <div class="news-thumb">
                        <asp:ListView ID="lstNewHot2" runat="server" DataSourceID="odsNewHot2" EnableModelValidation="True">
                            <ItemTemplate>
                                <div class="item">
                                    <div class="thumb-img">
                                        <a href='<%# progressTitle(Eval("ArticleTitle")) + "-tt-" + Eval("ArticleID") %>'>
                                            <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/article/" + Eval("ImageName") : "~/assets/images/main-news.png" %>'
                                                runat="server" />
                                        </a>
                                    </div>
                                    <div class="thumb-tit">
                                        <a href='<%# progressTitle(Eval("ArticleTitle")) + "-tt-" + Eval("ArticleID") %>'>
                                            <%# Eval("ArticleTitle")%></a>
                                    </div>
                                </div>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsNewHot2" runat="server" SelectMethod="ArticleSelectAll"
                            TypeName="TLLib.Article">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="2" Name="StartRowIndex" Type="String" />
                                <asp:Parameter DefaultValue="6" Name="EndRowIndex" Type="String" />
                                <asp:Parameter Name="Keyword" Type="String" />
                                <asp:Parameter Name="ArticleTitle" Type="String" />
                                <asp:Parameter Name="Description" Type="String" />
                                <asp:Parameter DefaultValue="2" Name="ArticleCategoryID" Type="String" />
                                <asp:Parameter Name="Tag" Type="String" />
                                <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="IsHot" Type="String" />
                                <asp:Parameter Name="IsNew" Type="String" />
                                <asp:Parameter Name="FromDate" Type="String" />
                                <asp:Parameter Name="ToDate" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                <asp:Parameter Name="Priority" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </div>
                </div>
            </div>
            <div class="clr">
            </div>
            <div class="thumb-items">
                <asp:ListView ID="lstNew" runat="server" DataSourceID="odsNew" EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="item">
                            <div class="item-wrap">
                                <div class="img">
                                    <a href='<%# progressTitle(Eval("ArticleTitle")) + "-tt-" + Eval("ArticleID") %>'>
                                        <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/article/" + Eval("ImageName") : "~/assets/images/main-news.png" %>'
                                            runat="server" /></a>
                                </div>
                                <div class="title">
                                    <a href='<%# progressTitle(Eval("ArticleTitle")) + "-tt-" + Eval("ArticleID") %>'>
                                        <%# Eval("ArticleTitle")%></a>
                                    <p>
                                        <%# Eval("Description") %></p>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsNew" runat="server" SelectMethod="ArticleSelectAll"
                    TypeName="TLLib.Article">
                    <SelectParameters>
                        <asp:Parameter Name="StartRowIndex" Type="String" />
                        <asp:Parameter Name="EndRowIndex" Type="String" />
                        <asp:Parameter Name="Keyword" Type="String" />
                        <asp:Parameter Name="ArticleTitle" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter DefaultValue="2" Name="ArticleCategoryID" Type="String" />
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
                <div class="clr">
                </div>
                <div class="pager">
                    <%--<a href="#" class="current">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#"
                        class="next fa fa-angle-right"></a>--%>
                    <asp:DataPager ID="DataPager1" runat="server" PageSize="6" PagedControlID="lstNew">
                        <Fields>
                            <asp:NumericPagerField ButtonCount="5" NumericButtonCssClass="numer-paging" CurrentPageLabelCssClass="current" />
                            <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="false" ButtonCssClass="next fa fa-caret-right"
                                ShowNextPageButton="true" ShowPreviousPageButton="false" RenderDisabledButtonsAsLabels="true"
                                NextPageText="" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
