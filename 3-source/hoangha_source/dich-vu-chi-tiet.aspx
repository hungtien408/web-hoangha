<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="dich-vu-chi-tiet.aspx.cs" Inherits="dich_vu_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="canonical" href='<%= Request.Url.Scheme + "://" + Page.Request.Url.Host.ToString() + "/" + Request.Url.AbsolutePath.Substring(Request.Url.AbsolutePath.LastIndexOf("/") + 1) %>' />
    <meta property="og:locale" content="vi_VN" />
    <meta property="og:type" content="article" />
    <meta property="og:title" content='<%= hdnTitle.Value %>' />
    <meta property="og:description" content='<%= hdnDescription.Value %>' />
    <meta property="og:url" content='<%= Request.Url.Scheme + "://" + Page.Request.Url.Host.ToString() + "/" + Request.Url.AbsolutePath.Substring(Request.Url.AbsolutePath.LastIndexOf("/") + 1) %>' />
    <meta property="og:site_name" content="RÈM CỬA ĐẸP HOÀNG HÀ" />
    <meta property="og:image" content='<%= Request.Url.Scheme + "://" + Page.Request.Url.Host.ToString() + "/" + ("res/article/"+ hdnImageName.Value)  %>' />
    <meta property="og:image:width" content="600" />
    <meta property="og:image:height" content="451" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:HiddenField ID="hdnTitle" runat="server" />
    <asp:HiddenField ID="hdnDescription" runat="server" />
    <asp:HiddenField ID="hdnImageName" runat="server" />
    <div class="container">
        <div id="site">
            <asp:HiddenField ID="hdnArticleCategoryID" runat="server" />
            <asp:ListView ID="lstBreadcrum" runat="server" DataSourceID="odsBreadcrum" EnableModelValidation="True">
                <ItemTemplate>
                    <%# "<a href='" + progressTitle(Eval("ArticleCategoryName")) + "-sci-" + Eval("ArticleCategoryID") + "'>" + Eval("ArticleCategoryName") + "</a> / "%>
                </ItemTemplate>
                <LayoutTemplate>
                    <a id="A1" href="~/" class="home" runat="server">Trang chủ</a> / <span runat="server"
                        id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsBreadcrum" runat="server" SelectMethod="ArticleCategoryHierarchyToTopSelectAll"
                TypeName="TLLib.ArticleCategory">
                <SelectParameters>
                    <asp:ControlParameter ControlID="hdnArticleCategoryID" Name="CurrentArticleCategoryID"
                        PropertyName="Value" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <asp:Label ID="lblTitle" runat="server"></asp:Label>
        </div>
    </div>
    <div class="container">
        <div class="wrapper-box">
            <div class="colContent">
                <asp:ListView ID="lstServiceDetails" runat="server" DataSourceID="odsServiceDetails"
                    EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="service-detail">
                            <h1>
                                Mô tả thông tin</h1>
                            <div class="detail-text">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Content") %>'></asp:Label>
                            </div>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsServiceDetails" runat="server" SelectMethod="ArticleSelectOne"
                    TypeName="TLLib.Article">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="ArticleID" QueryStringField="si" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
            <div class="colAside">
                <div class="contact-box">
                    <div class="phone-box">
                        <div class="phonebox">
                            Liên hệ tư vấn
                            <p>
                                091 6304 038</p>
                        </div>
                    </div>
                    <div class="address-box">
                        <div class="addressbox">
                            <h1>
                                Xưởng sản xuất:</h1>
                            <p>
                                52/2F, Tổ 52, KP 4A, P. Tân Chánh Hiệp, Quận 12, Tp.HCM</p>
                        </div>
                        <div class="addressbox">
                            <h1>
                                Show room:</h1>
                            <p>
                                649/36/24 Điện Biên Phủ, P.25. Q.Bình Thạnh, Tp.HCM</p>
                        </div>
                    </div>
                </div>
                <div class="list-menu">
                    <div class="head-title">
                        <h1>
                            Dịch vụ khác</h1>
                    </div>
                    <div class="list-product">
                        <asp:ListView ID="lstServiceSame" runat="server" DataSourceID="odsServiceSame" EnableModelValidation="True">
                            <ItemTemplate>
                                <li><a href='<%# progressTitle(Eval("ArticleTitle")) + "-si-" + Eval("ArticleID") %>'>
                                    <%# Eval("ArticleTitle") %></a></li>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <ul>
                                    <span runat="server" id="itemPlaceholder" />
                                </ul>
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsServiceSame" runat="server" SelectMethod="ArticleSameSelectAll"
                            TypeName="TLLib.Article">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="10" Name="RerultCount" Type="String" />
                                <asp:QueryStringParameter Name="ArticleID" QueryStringField="si" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
