<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta name="title" content="Rèm cửa đẹp Hoàng Hà" />
    <meta name="description" content="Chuyên cung cấp rèm cửa đẹp, rèm cao cấp, rèm cửa văn phòng, sàn gỗ, giấy dán tường tại HCM với nhiều mẫu đa dạng, chất liệu, màu sắc phong phú.LH 0916 304 038" />
    <meta name="keyword" content="Rèm cửa đẹp, rèm cao cấp, rèm cửa màn sáo, sàn gỗ, giấy dán tường, rem cua dep, rem cua van phong dep" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ListView ID="lstPopup" runat="server" DataSourceID="odsPopup" EnableModelValidation="True">
        <ItemTemplate>
            <div class="body-overlay">
            </div>
            <div class="default-popup">
                <div class="body-popup">
                    <a href="javascript:void(0);">
                        <img id="Img1" alt='<%# Eval("FileName") %>' src='<%# !string.IsNullOrEmpty(Eval("FileName").ToString()) ? "~/res/advertisement/" + Eval("FileName") : "~/assets/images/about-img.jpg" %>'
                            runat="server" />
                    </a>
                    <img class="btn-close" alt="" src="assets/images/close.png">
                </div>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsPopup" runat="server" SelectMethod="AdsBannerSelectAll"
        TypeName="TLLib.AdsBanner">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
            <asp:Parameter DefaultValue="1" Name="EndRowIndex" Type="String" />
            <asp:Parameter DefaultValue="6" Name="AdsCategoryID" Type="String" />
            <asp:Parameter Name="CompanyName" Type="String" />
            <asp:Parameter Name="Website" Type="String" />
            <asp:Parameter Name="FromDate" Type="String" />
            <asp:Parameter Name="ToDate" Type="String" />
            <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
            <asp:Parameter Name="Priority" Type="String" />
            <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <div class="container">
        <div id="banner">
            <div id="sliderBanner">
                <asp:ListView ID="lstBanner" runat="server" DataSourceID="odsBanner" EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="slide">
                            <img id="Img1" alt='<%# Eval("FileName") %>' src='<%# !string.IsNullOrEmpty(Eval("FileName").ToString()) ? "~/res/advertisement/" + Eval("FileName") : "~/assets/images/slider1.jpg" %>'
                                runat="server" />
                            <div class="text-banner">
                                <%# Eval("Title") %>
                                <br />
                                <strong>
                                    <%# Eval("Description") %></strong></div>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsBanner" runat="server" SelectMethod="AdsBannerSelectAll"
                    TypeName="TLLib.AdsBanner">
                    <SelectParameters>
                        <asp:Parameter Name="StartRowIndex" Type="String" />
                        <asp:Parameter Name="EndRowIndex" Type="String" />
                        <asp:Parameter DefaultValue="5" Name="AdsCategoryID" Type="String" />
                        <asp:Parameter Name="CompanyName" Type="String" />
                        <asp:Parameter Name="Website" Type="String" />
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
    <div class="wrapper-project">
        <div class="head-title">
            <h1>
                <span>DỰ ÁN ĐÃ THI CÔNG</span></h1>
            <!-- Nav tabs -->
            <ul class="nav nav-tabs tabpro" role="tablist">
                <asp:ListView ID="lstProductCategory" runat="server" DataSourceID="odsProductCategoryComplete"
                    EnableModelValidation="True">
                    <ItemTemplate>
                        <li role="presentation"><a href='<%# "#tab" + Eval("ProductCategoryID") %>' onclick="initSlider(this)"
                            data-toggle="tab">
                            <%# Eval("ProductCategoryName") %></a></li>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsProductCategoryComplete" runat="server" SelectMethod="ProductCategorySelectAll"
                    TypeName="TLLib.ProductCategory">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="36" Name="parentID" Type="Int32" />
                        <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                        <asp:Parameter Name="IsShowOnMenu" Type="String" />
                        <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </ul>
        </div>
        <div class="list-project">
            <div class="tab-project">
                <!-- Tab panes -->
                <div class="tab-content">
                    <asp:ListView ID="lstProductCategory2" runat="server" DataSourceID="odsProductCategoryComplete"
                        EnableModelValidation="True">
                        <ItemTemplate>
                            <div role="tabpanel" class="tab-pane" id='<%# "tab" + Eval("ProductCategoryID") %>'>
                                <asp:HiddenField ID="hdnProductCategoryID" Value='<%# Eval("ProductCategoryID") %>'
                                    runat="server" />
                                <div id='<%# "silderProject" + Eval("ProductCategoryID") %>' class="owl-carousel">
                                    <asp:ListView ID="lstProductComplete" runat="server" DataSourceID="odsProductComplete"
                                        EnableModelValidation="True">
                                        <ItemTemplate>
                                            <div class="item">
                                                <div class="project-box">
                                                    <div class="project-img">
                                                        <a href='<%# progressTitle(Eval("ProductName")) + "-di-" + Eval("ProductID") %>'>
                                                            <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/project1.jpg" %>'
                                                                runat="server" /></a>
                                                        <div class="link-web">
                                                            <a href="javascript:void(0);">remcuadephoangha.com</a>
                                                        </div>
                                                    </div>
                                                    <h4 class="project-name">
                                                        <a href='<%# progressTitle(Eval("ProductName")) + "-di-" + Eval("ProductID") %>'>
                                                            <%# Eval("ProductName") %></a></h4>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                        <LayoutTemplate>
                                            <span runat="server" id="itemPlaceholder" />
                                        </LayoutTemplate>
                                    </asp:ListView>
                                    <asp:ObjectDataSource ID="odsProductComplete" runat="server" SelectMethod="ProductSelectAll"
                                        TypeName="TLLib.Product">
                                        <SelectParameters>
                                            <asp:Parameter Name="StartRowIndex" Type="String" />
                                            <asp:Parameter Name="EndRowIndex" Type="String" />
                                            <asp:Parameter Name="Keyword" Type="String" />
                                            <asp:Parameter Name="ProductName" Type="String" />
                                            <asp:Parameter Name="Description" Type="String" />
                                            <asp:Parameter Name="PriceFrom" Type="String" />
                                            <asp:Parameter Name="PriceTo" Type="String" />
                                            <asp:ControlParameter ControlID="hdnProductCategoryID" Name="CategoryID" PropertyName="Value"
                                                Type="String" />
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
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                </div>
            </div>
        </div>
    </div>
    <asp:ListView ID="lstProductCategory3" runat="server" DataSourceID="odsProductCategory"
        EnableModelValidation="True">
        <ItemTemplate>
            <div class='<%# Eval("ProductCategoryID").ToString() == "1" || Eval("ProductCategoryID").ToString() == "2" ? "wrapper-product" : "hidden" %>'>
                <div class="head-title">
                    <h1>
                        <%# Eval("ProductCategoryName") %></h1>
                    <asp:HiddenField ID="hdnProductCategoryID3" Value='<%# Eval("ProductCategoryID") %>'
                        runat="server" />
                    <!--check man vai vs man sao thi ko hien thi danh muc san pham-->
                    <%--<ul class='<%# Eval("ProductCategoryID").ToString() == "1" || Eval("ProductCategoryID").ToString() == "2" ? "hidden" : "nav nav-tabs tabpro" %>'
                        role="tablist">
                        <asp:ListView ID="lstProductCategory" runat="server" DataSourceID="odsProductCategory3"
                            EnableModelValidation="True">
                            <ItemTemplate>
                                <li role="presentation"><a href='<%# "#tab" + Eval("ProductCategoryID") %>' data-toggle="tab">
                                    <%# Eval("ProductCategoryName") %></a></li>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                        
                    </ul>--%>
                    <asp:ObjectDataSource ID="odsProductCategory3" runat="server" SelectMethod="ProductCategorySelectAll"
                        TypeName="TLLib.ProductCategory">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="hdnProductCategoryID3" Name="parentID" PropertyName="Value"
                                Type="Int32" />
                            <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                            <asp:Parameter Name="IsShowOnMenu" Type="String" />
                            <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                    <!--check man vai vs man sao thi hien thi danh muc xuat xu-->
                    <ul class='<%# Eval("ProductCategoryID").ToString() == "1" ? "nav nav-tabs tabpro" : "hidden" %>'
                        role="tablist">
                        <asp:ListView ID="lstOrigin" runat="server" DataSourceID="odsOrigin" EnableModelValidation="True">
                            <ItemTemplate>
                                <li role="presentation"><a href='<%# "#tabCatAOr" + Eval("OriginID") %>' data-toggle="tab">
                                    <%# Eval("OriginName")%></a></li>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsOrigin" runat="server" SelectMethod="OriginSelectAllByProductCategoryID"
                            TypeName="TLLib.Origin">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="hdnProductCategoryID3" Name="ProductCategoryID"
                                    PropertyName="Value" Type="String" />
                                <asp:Parameter Name="OriginName" Type="String" />
                                <asp:Parameter Name="IsAvailable" Type="String" DefaultValue="True" />
                                <asp:Parameter Name="Priority" Type="String" />
                                <asp:Parameter Name="SortByPriority" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </ul>
                    <ul class='<%# Eval("ProductCategoryID").ToString() == "2" ? "nav nav-tabs tabpro" : "hidden" %>'
                        role="tablist">
                        <asp:ListView ID="lstOrigin2" runat="server" DataSourceID="odsOrigin" EnableModelValidation="True">
                            <ItemTemplate>
                                <li role="presentation"><a href='<%# "#tabCatBOr" + Eval("OriginID") %>' data-toggle="tab">
                                    <%# Eval("OriginName")%></a></li>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                    </ul>
                    <div class="view-all">
                        <a href='<%# progressTitle(Eval("ProductCategoryName")) + "-pci-" + Eval("ProductCategoryID") %>'>
                            Xem tất cả</a>
                    </div>
                </div>
                <div class="product-main">
                    <div class="tab-product">
                        <%--<div class='<%# Eval("ProductCategoryID").ToString() == "1" || Eval("ProductCategoryID").ToString() == "2" ? "hidden" : "tab-content" %>'>
                            <asp:ListView ID="lstProductCategory4" runat="server" DataSourceID="odsProductCategory3"
                                EnableModelValidation="True">
                                <ItemTemplate>
                                    <div role="tabpanel" class="tab-pane" id='<%# "tab" + Eval("ProductCategoryID") %>'>
                                        <asp:HiddenField ID="hdnProductCategoryID4" Value='<%# Eval("ProductCategoryID") %>'
                                            runat="server" />
                                        <div class="product-content row">
                                            <asp:ListView ID="lstProduct" runat="server" DataSourceID="odsProduct" EnableModelValidation="True">
                                                <ItemTemplate>
                                                    <div class="col-md-4">
                                                        <div class="product-box">
                                                            <div class="product-img">
                                                                <a href='<%# progressTitle(Eval("ProductName")) + "-pi-" + Eval("ProductID") %>'>
                                                                    <img id="Img2" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/project1.jpg" %>'
                                                                        runat="server" /></a>
                                                                <div class="view-detail">
                                                                    <a href='<%# progressTitle(Eval("ProductName")) + "-pi-" + Eval("ProductID") %>'>Xem
                                                                        chi tiết</a></div>
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
                                                    <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                                                    <asp:Parameter DefaultValue="6" Name="EndRowIndex" Type="String" />
                                                    <asp:Parameter Name="Keyword" Type="String" />
                                                    <asp:Parameter Name="ProductName" Type="String" />
                                                    <asp:Parameter Name="Description" Type="String" />
                                                    <asp:Parameter Name="PriceFrom" Type="String" />
                                                    <asp:Parameter Name="PriceTo" Type="String" />
                                                    <asp:ControlParameter ControlID="hdnProductCategoryID4" Name="CategoryID" PropertyName="Value"
                                                        Type="String" />
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
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <span runat="server" id="itemPlaceholder" />
                                </LayoutTemplate>
                            </asp:ListView>
                        </div>--%>
                        <div class='<%# Eval("ProductCategoryID").ToString() == "1" ? "tab-content" : "hidden"%>'>
                            <asp:ListView ID="lstTabOrigin" runat="server" DataSourceID="odsOrigin" EnableModelValidation="True">
                                <ItemTemplate>
                                    <div role="tabpanel" class="tab-pane" id='<%# "tabCatAOr" + Eval("OriginID") %>'>
                                        <asp:HiddenField ID="hdnOriginID" Value='<%# Eval("OriginID") %>' runat="server" />
                                        <div class="product-content row">
                                            <asp:ListView ID="lstProduct2" runat="server" DataSourceID="odsProduct2" EnableModelValidation="True">
                                                <ItemTemplate>
                                                    <div class="col-md-4">
                                                        <div class="product-box">
                                                            <div class="product-img">
                                                                <a href='<%# progressTitle(Eval("ProductName")) + "-pi-" + Eval("ProductID") %>'>
                                                                    <img id="Img2" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/project1.jpg" %>'
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
                                            <asp:ObjectDataSource ID="odsProduct2" runat="server" SelectMethod="ProductSelectAll"
                                                TypeName="TLLib.Product">
                                                <SelectParameters>
                                                    <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                                                    <asp:Parameter DefaultValue="6" Name="EndRowIndex" Type="String" />
                                                    <asp:Parameter Name="Keyword" Type="String" />
                                                    <asp:Parameter Name="ProductName" Type="String" />
                                                    <asp:Parameter Name="Description" Type="String" />
                                                    <asp:Parameter Name="PriceFrom" Type="String" />
                                                    <asp:Parameter Name="PriceTo" Type="String" />
                                                    <asp:Parameter DefaultValue="1" Name="CategoryID" Type="String" />
                                                    <asp:Parameter Name="ManufacturerID" Type="String" />
                                                    <asp:ControlParameter ControlID="hdnOriginID" Name="OriginID" PropertyName="Value"
                                                        Type="String" />
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
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <span runat="server" id="itemPlaceholder" />
                                </LayoutTemplate>
                            </asp:ListView>
                        </div>
                        <div class='<%# Eval("ProductCategoryID").ToString() == "2" ? "tab-content" : "hidden"%>'>
                            <asp:ListView ID="lstTabOrigin2" runat="server" DataSourceID="odsOrigin" EnableModelValidation="True">
                                <ItemTemplate>
                                    <div role="tabpanel" class="tab-pane" id='<%# "tabCatBOr" + Eval("OriginID") %>'>
                                        <asp:HiddenField ID="hdnOriginID" Value='<%# Eval("OriginID") %>' runat="server" />
                                        <div class="product-content row">
                                            <asp:ListView ID="lstProduct3" runat="server" DataSourceID="odsProduct3" EnableModelValidation="True">
                                                <ItemTemplate>
                                                    <div class="col-md-4">
                                                        <div class="product-box">
                                                            <div class="product-img">
                                                                <a href='<%# progressTitle(Eval("ProductName")) + "-pi-" + Eval("ProductID") %>'>
                                                                    <img id="Img2" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/project1.jpg" %>'
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
                                            <asp:ObjectDataSource ID="odsProduct3" runat="server" SelectMethod="ProductSelectAll"
                                                TypeName="TLLib.Product">
                                                <SelectParameters>
                                                    <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                                                    <asp:Parameter DefaultValue="6" Name="EndRowIndex" Type="String" />
                                                    <asp:Parameter Name="Keyword" Type="String" />
                                                    <asp:Parameter Name="ProductName" Type="String" />
                                                    <asp:Parameter Name="Description" Type="String" />
                                                    <asp:Parameter Name="PriceFrom" Type="String" />
                                                    <asp:Parameter Name="PriceTo" Type="String" />
                                                    <asp:Parameter DefaultValue="2" Name="CategoryID" Type="String" />
                                                    <asp:Parameter Name="ManufacturerID" Type="String" />
                                                    <asp:ControlParameter ControlID="hdnOriginID" Name="OriginID" PropertyName="Value"
                                                        Type="String" />
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
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <span runat="server" id="itemPlaceholder" />
                                </LayoutTemplate>
                            </asp:ListView>
                        </div>
                    </div>
                    <div class="list-product">
                        <asp:ListView ID="lstCategory" runat="server" DataSourceID="odsProductCategory3"
                            EnableModelValidation="True">
                            <ItemTemplate>
                                <li><a href='<%# progressTitle(Eval("ProductCategoryName")) + "-pci-" + Eval("ProductCategoryID") %>'>
                                    <%# Eval("ProductCategoryName") %></a>
                                    <asp:HiddenField ID="hdnProductCategoryID4" Value='<%# Eval("ProductCategoryID") %>'
                                        runat="server" />
                                    <asp:ListView ID="lstCategorySub" runat="server" DataSourceID="odsProductCategory4"
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
                                    <asp:ObjectDataSource ID="odsProductCategory4" runat="server" SelectMethod="ProductCategorySelectAll"
                                        TypeName="TLLib.ProductCategory">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="hdnProductCategoryID4" Name="parentID" PropertyName="Value"
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
                        <div class="img-product">
                            <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/productcategory/" + Eval("ImageName") : "~/assets/images/img-product.jpg" %>'
                                runat="server" />
                        </div>
                    </div>
                </div>
            </div>
            <div class='<%# Eval("ProductCategoryID").ToString() == "1" || Eval("ProductCategoryID").ToString() == "2" ? "hidden" : "wrapper-product" %>'>
                <div class="head-title">
                    <h1>
                        <%# Eval("ProductCategoryName") %></h1>
                    <asp:HiddenField ID="hdnProductCategoryID5" Value='<%# Eval("ProductCategoryID") %>'
                        runat="server" />
                    <div class="view-all">
                        <a href='<%# progressTitle(Eval("ProductCategoryName")) + "-pci-" + Eval("ProductCategoryID") %>'>
                            Xem tất cả</a>
                    </div>
                </div>
                <div class="product-main">
                    <div class="tab-product">
                        <div class="product-content row">
                            <asp:ListView ID="lstProduct5" runat="server" DataSourceID="odsProduct5" EnableModelValidation="True">
                                <ItemTemplate>
                                    <div class="col-md-4">
                                        <div class="product-box">
                                            <div class="product-img">
                                                <a href='<%# progressTitle(Eval("ProductName")) + "-pi-" + Eval("ProductID") %>'>
                                                    <img id="Img2" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/project1.jpg" %>'
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
                                                    <%# Eval("ProductName")%></a></div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <span runat="server" id="itemPlaceholder" />
                                </LayoutTemplate>
                            </asp:ListView>
                            <asp:ObjectDataSource ID="odsProduct5" runat="server" SelectMethod="ProductSelectAll"
                                TypeName="TLLib.Product">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                                    <asp:Parameter DefaultValue="6" Name="EndRowIndex" Type="String" />
                                    <asp:Parameter Name="Keyword" Type="String" />
                                    <asp:Parameter Name="ProductName" Type="String" />
                                    <asp:Parameter Name="Description" Type="String" />
                                    <asp:Parameter Name="PriceFrom" Type="String" />
                                    <asp:Parameter Name="PriceTo" Type="String" />
                                    <asp:ControlParameter ControlID="hdnProductCategoryID5" Name="CategoryID" PropertyName="Value"
                                        Type="String" />
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
                    <div class="list-product">
                        <asp:ListView ID="lstProductCategory5" runat="server" DataSourceID="odsProductCategory5"
                            EnableModelValidation="True">
                            <ItemTemplate>
                                <li><a href='<%# progressTitle(Eval("ProductCategoryName")) + "-pci-" + Eval("ProductCategoryID") %>'>
                                    <%# Eval("ProductCategoryName") %></a>
                                    <asp:HiddenField ID="hdnProductCategoryID6" Value='<%# Eval("ProductCategoryID") %>'
                                        runat="server" />
                                    <asp:ListView ID="lstCategorySub" runat="server" DataSourceID="odsProductCategory6"
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
                                    <asp:ObjectDataSource ID="odsProductCategory6" runat="server" SelectMethod="ProductCategorySelectAll"
                                        TypeName="TLLib.ProductCategory">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="hdnProductCategoryID6" Name="parentID" PropertyName="Value"
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
                        <asp:ObjectDataSource ID="odsProductCategory5" runat="server" SelectMethod="ProductCategorySelectAll"
                            TypeName="TLLib.ProductCategory">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="hdnProductCategoryID5" Name="parentID" PropertyName="Value"
                                    Type="Int32" />
                                <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                                <asp:Parameter Name="IsShowOnMenu" Type="String" />
                                <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                        <div class="img-product">
                            <img id="Img3" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/productcategory/" + Eval("ImageName") : "~/assets/images/img-product.jpg" %>'
                                runat="server" />
                        </div>
                    </div>
                </div>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsProductCategory" runat="server" SelectMethod="ProductCategorySelectAll"
        TypeName="TLLib.ProductCategory">
        <SelectParameters>
            <asp:Parameter DefaultValue="35" Name="parentID" Type="Int32" />
            <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
            <asp:Parameter Name="IsShowOnMenu" Type="String" />
            <asp:Parameter Name="IsShowOnHomePage" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
