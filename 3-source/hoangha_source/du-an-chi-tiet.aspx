﻿<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="du-an-chi-tiet.aspx.cs" Inherits="san_pham_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div id="site">
            <asp:HiddenField ID="hdnProductCategoryID" runat="server" />
            <asp:ListView ID="lstBreadcrum" runat="server" DataSourceID="odsBreadcrum" EnableModelValidation="True">
                <ItemTemplate>
                    <%# "<a href='" + progressTitle(Eval("ProductCategoryName")) + "-pci-" + Eval("ProductCategoryID") + "'>" + Eval("ProductCategoryName") + "</a> / "%>
                </ItemTemplate>
                <LayoutTemplate>
                    <a id="A1" href="~/" runat="server">Trang chủ</a> / <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsBreadcrum" runat="server" SelectMethod="ProductCategoryHierarchyToTopSelectAll"
                TypeName="TLLib.ProductCategory">
                <SelectParameters>
                    <asp:ControlParameter ControlID="hdnProductCategoryID" Name="CurrentProductCategoryID"
                        PropertyName="Value" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <asp:Label ID="lblProductTitle" runat="server"></asp:Label>
            <asp:HiddenField ID="hdnlink" runat="server" />
            <a class="a-link" href="<%= hdnlink.Value %>"></a>
        </div>
    </div>
    <div class="container">
        <div class="wrapper-box">
            <div class="colContent">
                <asp:ListView ID="lstProductDetails" runat="server" DataSourceID="odsProductDetails"
                    EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="warpper-detail">
                            <%--<div class="detail-img desktop-showhide">
                                <asp:ListView ID="lstProductImageBig" runat="server" DataSourceID="odsProductImage"
                                    EnableModelValidation="True">
                                    <ItemTemplate>
                                        <div class="zoom-box">
                                            <a id="zoom1" href='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "res/product/album/" + Eval("ImageName") : "assets/images/details-big-1.jpg" %>'
                                                class="cloud-zoom" rel="showTitle: false, adjustY:0, adjustX:5">
                                                <img id="Img1" class="img-responsive" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/album/thumbs/" + Eval("ImageName") : "~/assets/images/details-img-1.jpg" %>'
                                                    runat="server" />
                                            </a>
                                        </div>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <span runat="server" id="itemPlaceholder" />
                                    </LayoutTemplate>
                                </asp:ListView>
                            </div>
                            <div class="detail-img mobile-showhide">
                                <div class="zoom-box">
                                    <asp:ListView ID="lstProductImageSmall" runat="server" DataSourceID="odsProductImage"
                                        EnableModelValidation="True">
                                        <ItemTemplate>
                                            <img class="img-responsive" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/album/thumbs/" + Eval("ImageName") : "~/assets/images/details-img-1.jpg" %>'
                                                runat="server" />
                                        </ItemTemplate>
                                        <LayoutTemplate>
                                            <span runat="server" id="itemPlaceholder" />
                                        </LayoutTemplate>
                                    </asp:ListView>
                                </div>
                            </div>--%>
                            <div id="sliderDetails" class="detail-images">
                                <div class="wrap-images">
                                    <div class="detailimg-desktop">
                                        <asp:ListView ID="lstProductImageBig1" runat="server" DataSourceID="odsProductImage"
                                            EnableModelValidation="True">
                                            <ItemTemplate>
                                                <div class="zoom-box">
                                                    <a id="zoom1" href='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "res/product/album/" + Eval("ImageName") : "assets/images/details-big-1.jpg" %>'
                                                        class="cloud-zoom" rel="showTitle: false, adjustY:0, adjustX:5">
                                                        <img id="Img1" class="img-responsive" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/album/thumbs/" + Eval("ImageName") : "~/assets/images/details-img-1.jpg" %>'
                                                            runat="server" />
                                                        <div class="link-web">
                                                            <a href="javascript:void(0);">remcuadephoangha.com</a>
                                                        </div>
                                                    </a>
                                                </div>
                                            </ItemTemplate>
                                            <LayoutTemplate>
                                                <span runat="server" id="itemPlaceholder" />
                                            </LayoutTemplate>
                                        </asp:ListView>
                                        <asp:DataPager ID="DataPager1" runat="server" PagedControlID="lstProductImageBig1"
                                            PageSize="1" Visible="False">
                                        </asp:DataPager>
                                    </div>
                                    <div class="detailimg-mobile">
                                        <div class="slider-for">
                                            <asp:ListView ID="lstProductImageSmall" runat="server" DataSourceID="odsProductImage"
                                                EnableModelValidation="True">
                                                <ItemTemplate>
                                                    <div class="slide">
                                                        <img id="Img1" class="img-responsive" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/album/thumbs/" + Eval("ImageName") : "~/assets/images/details-img-1.jpg" %>'
                                                            runat="server" />
                                                        <div class="link-web">
                                                            <a href="javascript:void(0);">remcuadephoangha.com</a>
                                                        </div>
                                                    </div>
                                                </ItemTemplate>
                                                <LayoutTemplate>
                                                    <span runat="server" id="itemPlaceholder" />
                                                </LayoutTemplate>
                                            </asp:ListView>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrapper-in">
                                    <div class="wrapper-7">
                                        <div class="slider-nav">
                                            <asp:ListView ID="lstProductImageBig" runat="server" DataSourceID="odsProductImage"
                                                EnableModelValidation="True">
                                                <ItemTemplate>
                                                    <div class="slide">
                                                        <a href='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "res/product/album/" + Eval("ImageName") : "assets/images/details-big-1.jpg" %>'
                                                            data-img='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "res/product/album/" + Eval("ImageName") : "assets/images/details-big-1.jpg" %>'
                                                            class='cloud-zoom-gallery small-img' title='Thumbnail 1' rel="useZoom: 'zoom1', smallImage: '<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "res/product/album/" + Eval("ImageName") : "assets/images/details-big-1.jpg" %>'">
                                                            <span>
                                                                <img id="Img3" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/album/thumbs/" + Eval("ImageName") : "~/assets/images/details-img-1.jpg" %>'
                                                                    runat="server" /></span> </a>
                                                    </div>
                                                </ItemTemplate>
                                                <LayoutTemplate>
                                                    <span runat="server" id="itemPlaceholder" />
                                                </LayoutTemplate>
                                            </asp:ListView>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--<div id="sliderDetails" class="detail-images">
                                <div class="wrap-images">
                                    <div class="detailimg-desktop">
                                        <div class="zoom-box">
                                        <a id="zoom1" href="assets/images/details-big-2.jpg" class="cloud-zoom" rel="showTitle: false, adjustY:0, adjustX:5">
                                                 <img class="img-responsive" src="assets/images/details-img-2.jpg" alt=""/>
                                         </a>
                                            </div>
                                    </div>
                                    <div class="detailimg-mobile">
                                        <div class="slider-for">
                                            <div class="slide">
                                                <img src="assets/images/details-img-1.jpg" alt=""/>
                                            </div>
                                            <div class="slide">
                                                <img src="assets/images/details-img-2.jpg" alt=""/>
                                            </div>
                                            <div class="slide">
                                                <img src="assets/images/details-img-3.jpg" alt=""/>
                                            </div>
                                            <div class="slide">
                                                <img src="assets/images/details-img-4.jpg" alt=""/>
                                            </div>
                                            <div class="slide">
                                                <img src="assets/images/details-img-5.jpg" alt=""/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrapper-in">
                                    <div class="wrapper-7">
                                        <div class="slider-nav">
                                            <div class="slide">
                                                <a href='assets/images/details-big-1.jpg' data-img='assets/images/details-img-1.jpg' class='cloud-zoom-gallery small-img' title='Thumbnail 1' rel="useZoom: 'zoom1', smallImage: 'assets/images/details-img-1.jpg'">
                                                    <span><img src="assets/images/details-small-1.jpg" alt=""/></span>
                                                </a>
                                            </div>
                                            <div class="slide">
                                                <a href='assets/images/details-big-2.jpg' data-img='assets/images/details-img-2.jpg' class='cloud-zoom-gallery small-img' title='Thumbnail 1' rel="useZoom: 'zoom1', smallImage: 'assets/images/details-img-2.jpg'">
                                                    <span><img src="assets/images/details-small-2.jpg" alt=""/></span>
                                                </a>
                                            </div>
                                            <div class="slide">
                                                <a href='assets/images/details-big-3.jpg' data-img='assets/images/details-img-3.jpg' class='cloud-zoom-gallery small-img' title='Thumbnail 1' rel="useZoom: 'zoom1', smallImage: 'assets/images/details-img-3.jpg'">
                                                    <span><img src="assets/images/details-small-3.jpg" alt=""/></span>
                                                </a>
                                            </div>
                                            <div class="slide">
                                                <a href='assets/images/details-big-4.jpg' data-img='assets/images/details-img-4.jpg' class='cloud-zoom-gallery small-img' title='Thumbnail 1' rel="useZoom: 'zoom1', smallImage: 'assets/images/details-img-4.jpg'">
                                                    <span><img src="assets/images/details-small-4.jpg" alt=""/></span>
                                                </a>
                                            </div>
                                            <div class="slide">
                                                <a href='assets/images/details-big-5.jpg' data-img='assets/images/details-img-5.jpg' class='cloud-zoom-gallery small-img' title='Thumbnail 1' rel="useZoom: 'zoom1', smallImage: 'assets/images/details-img-5.jpg'">
                                                    <span><img src="assets/images/details-small-5.jpg" alt=""/></span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>--%>
                            <div class="detail-box">
                                <div class="product-name">
                                    <%# Eval("ProductName") %></div>
                                <div class="desription">
                                    <%--<ul class="list-info">
                                        <li><span>Mã sản phẩm:</span> #24586</li>
                                        <li><span>Chất liệu:</span> Vải thô, dợi dệt nhung</li>
                                        <li><span>Sắc màu:</span> Mẫu rèm vải in hoa văn màu nâu in giả kiểu 3D</li>
                                        <li><span>Kích thướt:</span> 2,8m, may hoàn thiện còn 2,7 m</li>
                                        <li><span>Xuất xứ:</span> Việt Nam</li>
                                    </ul>--%>
                                    <%# Eval("Description") %>
                                </div>
                                <div class="phone-book">
                                    <p>
                                        Liên hệ đặt hàng <span>090 8465 466</span></p>
                                </div>
                                <%--<div class="pl-google">
                                    <img src="assets/images/google.png" />
                                </div>
                                <div class="pl-facebook">
                                    <img src="assets/images/facebook.png" />
                                </div>--%>
                            </div>
                        </div>
                        <div class="clr">
                        </div>
                        <%--<div class="detail-content">
                            <h1>
                                Mô tả dự án</h1>
                            <div class="detail-text">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Content") %>'></asp:Label>
                            </div>
                        </div>--%>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsProductDetails" runat="server" SelectMethod="ProductSelectOne"
                    TypeName="TLLib.Product">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="ProductID" QueryStringField="di" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <asp:ObjectDataSource ID="odsProductImage" runat="server" SelectMethod="ProductImageSelectAll"
                    TypeName="TLLib.ProductImage">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="ProductID" QueryStringField="di" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                        <asp:Parameter Name="Priority" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
            <div class="colAside">
                <div class="contact-box">
                    <div class="phone-box">
                        <div class="phonebox">
                            Liên hệ tư vấn
                            <p>
                                090 8465 466</p>
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
                                52/2F, Tổ 52, KP 4A, P. Tân Chánh Hiệp, Quận 12, Tp.HCM</p>
                        </div>
                    </div>
                </div>
                <div class="wrapper-info">
                    <div class="head-title">
                        <h1>
                            dự án cùng loại</h1>
                    </div>
                    <div class="silderproduct">
                        <asp:ListView ID="lstProductSame" runat="server" DataSourceID="odsProductSame" EnableModelValidation="True">
                            <ItemTemplate>
                                <div class="slide">
                                    <div class="info-slide">
                                        <div class="product-img">
                                            <a href='<%# progressTitle(Eval("ProductName")) + "-di-" + Eval("ProductID") %>'>
                                                <img id="Img2" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/img1.jpg" %>'
                                                    runat="server" /></a>
                                            <div class="view-detail">
                                                <a href='<%# progressTitle(Eval("ProductName")) + "-di-" + Eval("ProductID") %>'>Xem
                                                    chi tiết</a></div>
                                        </div>
                                        <div class="product-name">
                                            <a href='<%# progressTitle(Eval("ProductName")) + "-di-" + Eval("ProductID") %>'>
                                                <%# Eval("ProductName") %></a></div>
                                    </div>
                                </div>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsProductSame" runat="server" SelectMethod="ProductSameSelectAll"
                            TypeName="TLLib.Product">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="10" Name="RerultCount" Type="String" />
                                <asp:QueryStringParameter Name="ProductID" QueryStringField="di" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </div>
                    <div data-id="silderproduct" class="control-slider">
                        <a href="javascript:void(0);" class="prev"><span class="fa fa-angle-left"></span>
                        </a><a href="javascript:void(0);" class="next"><span class="fa fa-angle-right"></span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
