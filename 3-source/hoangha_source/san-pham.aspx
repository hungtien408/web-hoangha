<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="san-pham.aspx.cs" Inherits="san_pham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta name="title" content="Rèm cửa đẹp Hoàng Hà">
    <meta name="description" content="Chuyên cung cấp rèm cửa đẹp, rèm cao cấp, rèm cửa văn phòng, sàn gỗ, giấy dán tường tại HCM với nhiều mẫu đa dạng, chất liệu, màu sắc phong phú.LH 0916 304 038">
    <meta name="keyword" content="Rèm cửa đẹp, rèm cao cấp, rèm cửa màn sáo, sàn gỗ, giấy dán tường, rem cua dep, rem cua van phong dep">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div id="site">
            <a class="home" href="./">Trang chủ </a>/
            <asp:Label ID="lblTitle" runat="server" Text=""></asp:Label>
            <asp:HiddenField ID="hdnlink" runat="server" />
            <a class="a-link-cat" href="<%= hdnlink.Value %>"></a>
        </div>
    </div>
    <div class="container">
        <div class="wrapper-main">
            <div class="colContent">
                <div class="wrapper-main">
                    <h1>
                        <asp:Label ID="lblTitle2" runat="server" Text=""></asp:Label>
                        <span>(<asp:Label ID="lblCountProduct" runat="server" Text=""></asp:Label>
                            sản phẩm)</span></h1>
                    <div class="product-content row">
                        <asp:ListView ID="lstProduct" runat="server" DataSourceID="odsProduct" EnableModelValidation="True">
                            <ItemTemplate>
                                <div class="col-md-3">
                                    <div class="product-box">
                                        <div class="product-img">
                                            <a href='<%# progressTitle(Eval("ProductName")) + "-pi-" + Eval("ProductID") %>'>
                                                <img id="Img2" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/img1.jpg" %>'
                                                    runat="server" /></a>
                                            <div class="view-detail">
                                                <a href='<%# progressTitle(Eval("ProductName")) + "-pi-" + Eval("ProductID") %>'>Xem
                                                    chi tiết</a></div>
                                            <div class="link-web">
                                                <a href="javascript:void(0);">remcuadephoangha.com</a>
                                            </div>
                                        </div>
                                        <div class="product-name">
                                            <a href='<%# progressTitle(Eval("ProductName")) + "-pi-" + Eval("ProductID") %>'>
                                                <%# Eval("ProductName") %></a></div>
                                    </div>
                                </div>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsProduct" runat="server" SelectMethod="ProductSelectAll"
                            TypeName="TLLib.Product">
                            <SelectParameters>
                                <asp:Parameter Name="StartRowIndex" Type="String" />
                                <asp:Parameter Name="EndRowIndex" Type="String" />
                                <asp:Parameter Name="Keyword" Type="String" />
                                <asp:Parameter Name="ProductName" Type="String" />
                                <asp:Parameter Name="Description" Type="String" />
                                <asp:Parameter Name="PriceFrom" Type="String" />
                                <asp:Parameter Name="PriceTo" Type="String" />
                                <asp:QueryStringParameter Name="CategoryID" QueryStringField="pci" Type="String" />
                                <asp:Parameter Name="ManufacturerID" Type="String" />
                                <asp:Parameter Name="OriginID" Type="String" />
                                <asp:Parameter Name="Tag" Type="String" />
                                <asp:Parameter Name="InStock" Type="String" />
                                <asp:Parameter Name="IsHot" Type="String" />
                                <asp:Parameter Name="IsNew" Type="String" />
                                <asp:Parameter Name="IsBestSeller" Type="String" />
                                <asp:Parameter Name="IsSaleOff" Type="String" />
                                <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                                <asp:Parameter Name="FromDate" Type="String" />
                                <asp:Parameter Name="ToDate" Type="String" />
                                <asp:Parameter Name="Priority" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </div>
                </div>
                <div class="pager">
                    <asp:DataPager ID="DataPager1" runat="server" PageSize="16" PagedControlID="lstProduct">
                        <Fields>
                            <asp:NumericPagerField ButtonCount="5" NumericButtonCssClass="numer-paging" CurrentPageLabelCssClass="current" />
                            <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="false" ButtonCssClass="next fa fa-caret-right"
                                ShowNextPageButton="true" ShowPreviousPageButton="false" RenderDisabledButtonsAsLabels="true"
                                NextPageText="" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </div>
            <div class="colAside">
                <div class="list-menu">
                    <asp:HiddenField ID="hdnProductCategoryParent" runat="server" />
                    <div class="head-title">
                        <h1>
                            <asp:Label ID="lblProductCategoryParent" CssClass="category" runat="server" Text=""></asp:Label></h1>
                    </div>
                    <div class="list-product">
                        <asp:ListView ID="lstProductCategory" runat="server" DataSourceID="odsProductCategory"
                            EnableModelValidation="True">
                            <ItemTemplate>
                                <li><a href='<%# progressTitle(Eval("ProductCategoryName")) + "-pci-" + Eval("ProductCategoryID") %>'>
                                    <%# Eval("ProductCategoryName") %></a>
                                    <asp:HiddenField ID="hdnProductCategorySubID" Value='<%# Eval("ProductCategoryID") %>'
                                        runat="server" />
                                    <asp:ListView ID="lstProductCategorySub" runat="server" DataSourceID="odsProductCategorySub"
                                        EnableModelValidation="True">
                                        <ItemTemplate>
                                            <li><a href='<%# progressTitle(Eval("ProductCategoryName")) + "-pci-" + Eval("ProductCategoryID") %>'>
                                                <%# Eval("ProductCategoryName") %></a></li>
                                        </ItemTemplate>
                                        <LayoutTemplate>
                                            <ul>
                                                <li runat="server" id="itemPlaceholder"></li>
                                            </ul>
                                        </LayoutTemplate>
                                    </asp:ListView>
                                    <asp:ObjectDataSource ID="odsProductCategorySub" runat="server" SelectMethod="ProductCategorySelectAll"
                                        TypeName="TLLib.ProductCategory">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="hdnProductCategorySubID" Name="parentID" PropertyName="Value"
                                                Type="Int32" />
                                            <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                                            <asp:Parameter Name="IsShowOnMenu" Type="String" />
                                            <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                                        </SelectParameters>
                                    </asp:ObjectDataSource>
                                </li>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <ul>
                                    <li runat="server" id="itemPlaceholder"></li>
                                </ul>
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsProductCategory" runat="server" SelectMethod="ProductCategorySelectAll"
                            TypeName="TLLib.ProductCategory">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="hdnProductCategoryParent" Name="parentID" PropertyName="Value"
                                    Type="Int32" />
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
                <div class="wrapper-info">
                    <div class="head-title">
                        <h1>
                            mẹo vặt cuộc sống</h1>
                    </div>
                    <div class="silderinfo">
                        <asp:ListView ID="lstTips" runat="server" DataSourceID="odsTips" EnableModelValidation="True">
                            <ItemTemplate>
                                <div class="slide">
                                    <div class="info-slide">
                                        <a href='<%# progressTitle(Eval("ArticleTitle")) + "-mv-" + Eval("ArticleID") %>'
                                            class="slide-img">
                                            <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/article/" + Eval("ImageName") : "~/assets/images/h1.jpg" %>'
                                                runat="server" /></a>
                                        <h4 class="slide-name">
                                            <a href='<%# progressTitle(Eval("ArticleTitle")) + "-mv-" + Eval("ArticleID") %>'>
                                                <%# Eval("ArticleTitle")%></a></h4>
                                    </div>
                                </div>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsTips" runat="server" SelectMethod="ArticleSelectAll"
                            TypeName="TLLib.Article">
                            <SelectParameters>
                                <asp:Parameter Name="StartRowIndex" Type="String" />
                                <asp:Parameter Name="EndRowIndex" Type="String" />
                                <asp:Parameter Name="Keyword" Type="String" />
                                <asp:Parameter Name="ArticleTitle" Type="String" />
                                <asp:Parameter Name="Description" Type="String" />
                                <asp:Parameter DefaultValue="8" Name="ArticleCategoryID" Type="String" />
                                <asp:Parameter Name="Tag" Type="String" />
                                <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                                <asp:Parameter Name="IsHot" Type="String" />
                                <asp:Parameter Name="IsNew" Type="String" />
                                <asp:Parameter Name="FromDate" Type="String" />
                                <asp:Parameter Name="ToDate" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                <asp:Parameter DefaultValue="" Name="Priority" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </div>
                    <div data-id="silderinfo" class="control-slider">
                        <a href="javascript:void(0);" class="prev"><span class="fa fa-angle-left"></span>
                        </a><a href="javascript:void(0);" class="next"><span class="fa fa-angle-right"></span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
