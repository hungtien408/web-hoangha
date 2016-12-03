<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="dich-vu.aspx.cs" Inherits="dich_vu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta name="title" content="Rèm cửa đẹp Hoàng Hà" />
    <meta name="description" content="Chuyên cung cấp rèm cửa đẹp, rèm cao cấp, rèm cửa văn phòng, sàn gỗ, giấy dán tường tại HCM với nhiều mẫu đa dạng, chất liệu, màu sắc phong phú.LH 0916 304 038" />
    <meta name="keyword" content="Rèm cửa đẹp, rèm cao cấp, rèm cửa màn sáo, sàn gỗ, giấy dán tường, rem cua dep, rem cua van phong dep" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div id="site">
            <a class="home" href="./">Trang chủ </a>/ <a class="home" href="dich-vu.aspx">Dịch vụ</a>
            / <span>
                <asp:Label ID="lblTitle" runat="server" Text=""></asp:Label></span>
            <asp:HiddenField ID="hdnlink" runat="server" />
            <a class="a-link-dv" href="<%= hdnlink.Value %>"></a>
        </div>
    </div>
    <div class="container">
        <div class="wrapper-main">
            <div class="colContent">
                <div class="service-bg">
                    <h1>
                        <asp:Label ID="lblTitle2" runat="server" Text=""></asp:Label></h1>
                    <div class="row service-main">
                        <asp:ListView ID="lstService" runat="server" DataSourceID="odsService" EnableModelValidation="True">
                            <ItemTemplate>
                                <div class="col-md-4 element-item">
                                    <div class="service-box">
                                        <div class="service-img">
                                            <a href='<%# progressTitle(Eval("ArticleTitle")) + "-si-" + Eval("ArticleID") %>'>
                                                <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/article/" + Eval("ImageName") : "~/assets/images/dich-vu.jpg" %>'
                                                    runat="server" /></a>
                                        </div>
                                        <div class="service-name">
                                            <a href='<%# progressTitle(Eval("ArticleTitle")) + "-si-" + Eval("ArticleID") %>'>
                                                <%# Eval("ArticleTitle")%></a>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsService" runat="server" SelectMethod="ArticleSelectAll"
                            TypeName="TLLib.Article">
                            <SelectParameters>
                                <asp:Parameter Name="StartRowIndex" Type="String" />
                                <asp:Parameter Name="EndRowIndex" Type="String" />
                                <asp:Parameter Name="Keyword" Type="String" />
                                <asp:Parameter Name="ArticleTitle" Type="String" />
                                <asp:Parameter Name="Description" Type="String" />
                                <asp:QueryStringParameter QueryStringField="sci" DefaultValue="3" Name="ArticleCategoryID"
                                    Type="String" />
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
                    </div>
                    <div class="pager">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="9" PagedControlID="lstService">
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
            <div class="colAside">
                <div class="list-menu">
                    <div class="head-title">
                        <h1>
                            Dịch vụ</h1>
                    </div>
                    <div class="list-product">
                        <asp:ListView ID="lstServiceCategory" runat="server" DataSourceID="odsServiceCategory"
                            EnableModelValidation="True">
                            <ItemTemplate>
                                <li><a href='<%# progressTitle(Eval("ArticleCategoryName")) + "-sci-" + Eval("ArticleCategoryID") %>'>
                                    <%# Eval("ArticleCategoryName") %></a></li>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <ul>
                                    <li runat="server" id="itemPlaceholder"></li>
                                </ul>
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsServiceCategory" runat="server" SelectMethod="ArticleCategorySelectAll"
                            TypeName="TLLib.ArticleCategory">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="3" Name="parentID" Type="Int32" />
                                <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                                <asp:Parameter Name="IsShowOnMenu" Type="String" />
                                <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </div>
                </div>
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
            </div>
        </div>
    </div>
</asp:Content>
