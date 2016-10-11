<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Hoàng Hà</title>
    <meta name="description" content="Hoàng Hà" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="body-overlay">
     </div>
     <div class="default-popup">
        <div class="body-popup">
            <a target="_blank" href="#">
               <img src="assets/images/about-img.jpg" />
            </a>
            <img class="btn-close" alt="" src="assets/images/close.png">
        </div>
    </div>
     <div class="container">
        <div id="banner">
            <div id="sliderBanner">
                <div class="slide"><img src="assets/images/banner-img-1.jpg" alt=""/>
                    <div class="text-banner">Bừng sáng <br /><strong>không gian Việt</strong></div>
                </div>
                <div class="slide"><img src="assets/images/banner-img-2.jpg" alt=""/>
                    <div class="text-banner">Bừng sáng <br /><strong>không gian Việt 1</strong></div>
                </div>
            </div>
        </div>
    </div>
  <div class="wrapper-project">
      <div class="head-title">
          <h1><span>DỰ ÁN ĐÃ THI CÔNG</span></h1>
            <!-- Nav tabs -->
          <ul class="nav nav-tabs tabpro" role="tablist">
            <li role="presentation"><a href="#tab1" onclick="initSlider(this)" data-toggle="tab">Rèm vải</a></li>
            <li role="presentation"><a href="#tab2" onclick="initSlider(this)" data-toggle="tab">Rèm văn phòng</a></li>
            <li role="presentation"><a href="#tab3" onclick="initSlider(this)" data-toggle="tab">Giấy dán tường</a></li>
            <li role="presentation"><a href="#tab4" onclick="initSlider(this)" data-toggle="tab">Sàn gỗ</a></li>
          </ul>
      </div>
      <div class="list-project">
          <div class="tab-project">
          <!-- Tab panes -->
          <div class="tab-content">
            <div role="tabpanel" class="tab-pane" id="tab1">
                 <div id="silderProject1" class="owl-carousel">
                    <div class="item">
                        <div class="project-box">
                            <div class="project-img">
                                <a href="#"><img src="assets/images/project1.jpg" alt="" /></a>
                            </div>
                            <h4 class="project-name"><a href="#">Rèm cửa đẹp 10</a></h4>
                        </div>     
                    </div>
                     <div class="item">
                        <div class="project-box">
                            <div class="project-img">
                                <a href="#"><img src="assets/images/project2.jpg" alt="" /></a>
                            </div>
                            <h4 class="project-name"><a href="#">Rèm cửa đẹp 10</a></h4>
                        </div>     
                    </div>
                     <div class="item">
                        <div class="project-box">
                            <div class="project-img">
                                <a href="#"><img src="assets/images/project3.jpg" alt="" /></a>
                            </div>
                            <h4 class="project-name"><a href="#">Rèm cửa đẹp 10</a></h4>
                        </div>     
                    </div>
                     <div class="item">
                        <div class="project-box">
                            <div class="project-img">
                                <a href="#"><img src="assets/images/project4.jpg" alt="" /></a>
                            </div>
                            <h4 class="project-name"><a href="#">Rèm cửa đẹp 10</a></h4>
                        </div>     
                    </div>
                     <div class="item">
                        <div class="project-box">
                            <div class="project-img">
                                <a href="#"><img src="assets/images/project5.jpg" alt="" /></a>
                            </div>
                            <h4 class="project-name"><a href="#">Rèm cửa đẹp 10</a></h4>
                        </div>     
                    </div>
                     <div class="item">
                        <div class="project-box">
                            <div class="project-img">
                                <a href="#"><img src="assets/images/project1.jpg" alt="" /></a>
                            </div>
                            <h4 class="project-name"><a href="#">Rèm cửa đẹp 10</a></h4>
                        </div>     
                    </div>
                </div>
            </div>
            <div role="tabpanel" class="tab-pane" id="tab2">
                <div id="silderProject2" class="owl-carousel">
                    <div class="item">
                        <div class="project-box">
                            <div class="project-img">
                                <a href="#"><img src="assets/images/project2.jpg" alt="" /></a>
                            </div>
                            <h4 class="project-name"><a href="#">Rèm cửa đẹp 10</a></h4>
                        </div>     
                    </div>
                     <div class="item">
                        <div class="project-box">
                            <div class="project-img">
                                <a href="#"><img src="assets/images/project3.jpg" alt="" /></a>
                            </div>
                            <h4 class="project-name"><a href="#">Rèm cửa đẹp 10</a></h4>
                        </div>     
                    </div>
                     <div class="item">
                        <div class="project-box">
                            <div class="project-img">
                                <a href="#"><img src="assets/images/project5.jpg" alt="" /></a>
                            </div>
                            <h4 class="project-name"><a href="#">Rèm cửa đẹp 10</a></h4>
                        </div>     
                    </div>
                     <div class="item">
                        <div class="project-box">
                            <div class="project-img">
                                <a href="#"><img src="assets/images/project4.jpg" alt="" /></a>
                            </div>
                            <h4 class="project-name"><a href="#">Rèm cửa đẹp 10</a></h4>
                        </div>     
                    </div>
                     <div class="item">
                        <div class="project-box">
                            <div class="project-img">
                                <a href="#"><img src="assets/images/project1.jpg" alt="" /></a>
                            </div>
                            <h4 class="project-name"><a href="#">Rèm cửa đẹp 10</a></h4>
                        </div>     
                    </div>
                     <div class="item">
                        <div class="project-box">
                            <div class="project-img">
                                <a href="#"><img src="assets/images/project4.jpg" alt="" /></a>
                            </div>
                            <h4 class="project-name"><a href="#">Rèm cửa đẹp 10</a></h4>
                        </div>     
                    </div>
                </div>
            </div>
            <div role="tabpanel" class="tab-pane" id="tab3">
                <div id="silderProject3" class="owl-carousel">
                    <div class="item">
                        <div class="project-box">
                            <div class="project-img">
                                <a href="#"><img src="assets/images/project3.jpg" alt="" /></a>
                            </div>
                            <h4 class="project-name"><a href="#">Rèm cửa đẹp 10</a></h4>
                        </div>     
                    </div>
                     <div class="item">
                        <div class="project-box">
                            <div class="project-img">
                                <a href="#"><img src="assets/images/project4.jpg" alt="" /></a>
                            </div>
                            <h4 class="project-name"><a href="#">Rèm cửa đẹp 10</a></h4>
                        </div>     
                    </div>
                     <div class="item">
                        <div class="project-box">
                            <div class="project-img">
                                <a href="#"><img src="assets/images/project5.jpg" alt="" /></a>
                            </div>
                            <h4 class="project-name"><a href="#">Rèm cửa đẹp 10</a></h4>
                        </div>     
                    </div>
                     <div class="item">
                        <div class="project-box">
                            <div class="project-img">
                                <a href="#"><img src="assets/images/project1.jpg" alt="" /></a>
                            </div>
                            <h4 class="project-name"><a href="#">Rèm cửa đẹp 10</a></h4>
                        </div>     
                    </div>
                     <div class="item">
                        <div class="project-box">
                            <div class="project-img">
                                <a href="#"><img src="assets/images/project2.jpg" alt="" /></a>
                            </div>
                            <h4 class="project-name"><a href="#">Rèm cửa đẹp 10</a></h4>
                        </div>     
                    </div>
                     <div class="item">
                        <div class="project-box">
                            <div class="project-img">
                                <a href="#"><img src="assets/images/project3.jpg" alt="" /></a>
                            </div>
                            <h4 class="project-name"><a href="#">Rèm cửa đẹp 10</a></h4>
                        </div>     
                    </div>
                </div>
            </div>
            <div role="tabpanel" class="tab-pane" id="tab4">
                <div id="silderProject4" class="owl-carousel">
                    <div class="item">
                        <div class="project-box">
                            <div class="project-img">
                                <a href="#"><img src="assets/images/project4.jpg" alt="" /></a>
                            </div>
                            <h4 class="project-name"><a href="#">Rèm cửa đẹp 10</a></h4>
                        </div>     
                    </div>
                     <div class="item">
                        <div class="project-box">
                            <div class="project-img">
                                <a href="#"><img src="assets/images/project5.jpg" alt="" /></a>
                            </div>
                            <h4 class="project-name"><a href="#">Rèm cửa đẹp 10</a></h4>
                        </div>     
                    </div>
                     <div class="item">
                        <div class="project-box">
                            <div class="project-img">
                                <a href="#"><img src="assets/images/project1.jpg" alt="" /></a>
                            </div>
                            <h4 class="project-name"><a href="#">Rèm cửa đẹp 10</a></h4>
                        </div>     
                    </div>
                     <div class="item">
                        <div class="project-box">
                            <div class="project-img">
                                <a href="#"><img src="assets/images/project3.jpg" alt="" /></a>
                            </div>
                            <h4 class="project-name"><a href="#">Rèm cửa đẹp 10</a></h4>
                        </div>     
                    </div>
                     <div class="item">
                        <div class="project-box">
                            <div class="project-img">
                                <a href="#"><img src="assets/images/project2.jpg" alt="" /></a>
                            </div>
                            <h4 class="project-name"><a href="#">Rèm cửa đẹp 10</a></h4>
                        </div>     
                    </div>
                     <div class="item">
                        <div class="project-box">
                            <div class="project-img">
                                <a href="#"><img src="assets/images/project4.jpg" alt="" /></a>
                            </div>
                            <h4 class="project-name"><a href="#">Rèm cửa đẹp 10</a></h4>
                        </div>     
                    </div>
                </div>
            </div>
          </div>
        </div>
      </div>
  </div>
    <div class="wrapper-product">
       <div class="head-title">
          <h1>RÈM VẢI - RÈM CỔ ĐIỂN</h1>
          <ul class="nav nav-tabs tabpro" role="tablist">
            <li role="presentation"><a href="#taba" data-toggle="tab">Rèm Hàn Quốc</a></li>
            <li role="presentation"><a href="#tabb" data-toggle="tab">Rèm Đài Loan</a></li>
            <li role="presentation"><a href="#tabc" data-toggle="tab">Rèm Thái</a></li>
            <li role="presentation"><a href="#tabd" data-toggle="tab">Rèm Bỉ</a></li>
          </ul>
           <div class="view-all">
               <a href="#">Xem tất cả</a>
           </div>
      </div>
        <div class="product-main">
            <div class="tab-product">
                <div class="tab-content">
                <div role="tabpanel" class="tab-pane" id="taba">
                    <div class="product-content row">
                        <div class="col-md-4">
                            <div class="product-box">
                                <div class="product-img"><a href="#"><img src="assets/images/img1.jpg" /></a>
                                    <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                                </div>
                                <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                            </div>
                        </div>
                         <div class="col-md-4">
                            <div class="product-box">
                                <div class="product-img"><a href="#"><img src="assets/images/img2.jpg" /></a>
                                    <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                                </div>
                                <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                            </div>
                        </div>
                         <div class="col-md-4">
                            <div class="product-box">
                                <div class="product-img"><a href="#"><img src="assets/images/img3.jpg" /></a>
                                    <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                                </div>
                                <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="product-box">
                                <div class="product-img"><a href="#"><img src="assets/images/img4.jpg" /></a>
                                    <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                                </div>
                                <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                            </div>
                        </div>
                         <div class="col-md-4">
                            <div class="product-box">
                                <div class="product-img"><a href="#"><img src="assets/images/img5.jpg" /></a>
                                    <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                                </div>
                                <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                            </div>
                        </div>
                         <div class="col-md-4">
                            <div class="product-box">
                                <div class="product-img"><a href="#"><img src="assets/images/img6.jpg" /></a>
                                    <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                                </div>
                                <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="tabb">
                    <div class="product-content row">
                        <div class="col-md-4">
                            <div class="product-box">
                                <div class="product-img"><a href="#"><img src="assets/images/img1.jpg" /></a>
                                    <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                                </div>
                                <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                            </div>
                        </div>
                         <div class="col-md-4">
                            <div class="product-box">
                                <div class="product-img"><a href="#"><img src="assets/images/img2.jpg" /></a>
                                    <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                                </div>
                                <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                            </div>
                        </div>
                         <div class="col-md-4">
                            <div class="product-box">
                                <div class="product-img"><a href="#"><img src="assets/images/img1.jpg" /></a>
                                    <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                                </div>
                                <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="product-box">
                                <div class="product-img"><a href="#"><img src="assets/images/img1.jpg" /></a>
                                    <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                                </div>
                                <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                            </div>
                        </div>
                         <div class="col-md-4">
                            <div class="product-box">
                                <div class="product-img"><a href="#"><img src="assets/images/img5.jpg" /></a>
                                    <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                                </div>
                                <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                            </div>
                        </div>
                         <div class="col-md-4">
                            <div class="product-box">
                                <div class="product-img"><a href="#"><img src="assets/images/img1.jpg" /></a>
                                    <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                                </div>
                                <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="tabc">
                    <div class="product-content row">
                        <div class="col-md-4">
                            <div class="product-box">
                                <div class="product-img"><a href="#"><img src="assets/images/img2.jpg" /></a>
                                    <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                                </div>
                                <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                            </div>
                        </div>
                         <div class="col-md-4">
                            <div class="product-box">
                                <div class="product-img"><a href="#"><img src="assets/images/img1.jpg" /></a>
                                    <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                                </div>
                                <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                            </div>
                        </div>
                         <div class="col-md-4">
                            <div class="product-box">
                                <div class="product-img"><a href="#"><img src="assets/images/img3.jpg" /></a>
                                    <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                                </div>
                                <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="product-box">
                                <div class="product-img"><a href="#"><img src="assets/images/img1.jpg" /></a>
                                    <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                                </div>
                                <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                            </div>
                        </div>
                         <div class="col-md-4">
                            <div class="product-box">
                                <div class="product-img"><a href="#"><img src="assets/images/img4.jpg" /></a>
                                    <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                                </div>
                                <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                            </div>
                        </div>
                         <div class="col-md-4">
                            <div class="product-box">
                                <div class="product-img"><a href="#"><img src="assets/images/img1.jpg" /></a>
                                    <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                                </div>
                                <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="tabd">
                    <div class="product-content row">
                        <div class="col-md-4">
                            <div class="product-box">
                                <div class="product-img"><a href="#"><img src="assets/images/img5.jpg" /></a>
                                    <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                                </div>
                                <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                            </div>
                        </div>
                         <div class="col-md-4">
                            <div class="product-box">
                                <div class="product-img"><a href="#"><img src="assets/images/img2.jpg" /></a>
                                    <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                                </div>
                                <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                            </div>
                        </div>
                         <div class="col-md-4">
                            <div class="product-box">
                                <div class="product-img"><a href="#"><img src="assets/images/img1.jpg" /></a>
                                    <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                                </div>
                                <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="product-box">
                                <div class="product-img"><a href="#"><img src="assets/images/img4.jpg" /></a>
                                    <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                                </div>
                                <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                            </div>
                        </div>
                         <div class="col-md-4">
                            <div class="product-box">
                                <div class="product-img"><a href="#"><img src="assets/images/img3.jpg" /></a>
                                    <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                                </div>
                                <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                            </div>
                        </div>
                         <div class="col-md-4">
                            <div class="product-box">
                                <div class="product-img"><a href="#"><img src="assets/images/img6.jpg" /></a>
                                    <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                                </div>
                                <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                            </div>
                        </div>
                    </div>
                </div>
              </div>
            </div>
            <div class="list-product">
                <ul>
                    <li><a href="#">Rèm cửa phòng khách</a>
                        <ul>
                            <li><a href="#">Rèm cửa phòng khách 1</a></li>
                            <li><a href="#">Rèm cửa phòng khách 2</a></li>
                            <li><a href="#">Rèm cửa phòng khách 3</a></li>
                            <li><a href="#">Rèm cửa phòng khách 4</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Rèm cửa phòng ngủ</a></li>
                    <li><a href="#">Rèm cửa sổ </a></li>
                    <li><a href="#">Rèm chống nắng</a></li>
                    <li><a href="#">Rèm cửa phòng em bé</a></li>
                    <li><a href="#">Rèm Roman</a></li>
                    <li><a href="#">Rèm che phòng tắm</a></li>
                    <li><a href="#">Rèm cổ điển</a></li>
                    <li><a href="#">Rèm nữ hoàng</a></li>
                    <li><a href="#">Rèm tự động</a></li>
                    <li><a href="#">Rèm resort - khách sạn</a></li>
                    <li><a href="#">Rèm bệnh viện</a></li>
                </ul>
                <div class="img-product">
                    <img src="assets/images/img-product.jpg" />
                </div>
            </div>
            
        </div>
    </div>
    <div class="wrapper-product">
       <div class="head-title">
          <h1>Rèm văn phòng</h1>
          <ul class="nav nav-tabs tabpro" role="tablist">
            <li role="presentation"><a href="#tab1a" data-toggle="tab">Rèm Roman</a></li>
          </ul>
           <div class="view-all">
               <a href="#">Xem tất cả</a>
           </div>
      </div>
        <div class="product-main">
            <div class="tab-product">
                <div class="tab-content">
                <div role="tabpanel" class="tab-pane" id="tab1a">
                    <div class="product-content row">
                        <div class="col-md-4">
                            <div class="product-box">
                                <div class="product-img"><a href="#"><img src="assets/images/img7.jpg" /></a>
                                    <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                                </div>
                                <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                            </div>
                        </div>
                         <div class="col-md-4">
                            <div class="product-box">
                                <div class="product-img"><a href="#"><img src="assets/images/img8.jpg" /></a>
                                    <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                                </div>
                                <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                            </div>
                        </div>
                         <div class="col-md-4">
                            <div class="product-box">
                                <div class="product-img"><a href="#"><img src="assets/images/img9.jpg" /></a>
                                    <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                                </div>
                                <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="product-box">
                                <div class="product-img"><a href="#"><img src="assets/images/img10.jpg" /></a>
                                    <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                                </div>
                                <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                            </div>
                        </div>
                         <div class="col-md-4">
                            <div class="product-box">
                                <div class="product-img"><a href="#"><img src="assets/images/img11.jpg" /></a>
                                    <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                                </div>
                                <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                            </div>
                        </div>
                         <div class="col-md-4">
                            <div class="product-box">
                                <div class="product-img"><a href="#"><img src="assets/images/img12.jpg" /></a>
                                    <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                                </div>
                                <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                            </div>
                        </div>
                    </div>
                </div>
              </div>
            </div>
            <div class="list-product">
                <ul>
                    <li><a href="#">Rèm sáo dọc</a>
                        <ul>
                            <li><a href="#">Rèm sáo dọc 1</a></li>
                            <li><a href="#">Rèm sáo dọc 2</a></li>
                            <li><a href="#">Rèm sáo dọc 3</a></li>
                            <li><a href="#">Rèm sáo dọc 4</a></li>
                            <li><a href="#">Rèm sáo dọc 5</a></li>
                            <li><a href="#">Rèm sáo dọc 6</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Rèm cuốn chống nắng</a></li>
                    <li><a href="#">Rèm cuốn lưới</a></li>
                    <li><a href="#">Rèm cuốn in tranh</a></li>
                    <li><a href="#">Rèm sáo nhôm </a></li>
                    <li><a href="#">Rèm sáo gỗ</a></li>
                    <li><a href="#">Rèm sáo tre</a></li>
                    <li><a href="#">Rèm tự động</a></li>
                    <li><a href="#">Rèm cầu vồng</a></li>
                </ul>
                <div class="img-product">
                    <img src="assets/images/img-product1.jpg" />
                </div>
            </div>
            
        </div>
    </div>
    <div class="wrapper-product">
       <div class="head-title">
          <h1>giấy dán tường</h1>
           <div class="view-all">
               <a href="#">Xem tất cả</a>
           </div>
      </div>
        <div class="product-main">
            <div class="tab-product">
                <div class="product-content row">
                <div class="col-md-4">
                    <div class="product-box">
                        <div class="product-img"><a href="#"><img src="assets/images/img13.jpg" /></a>
                            <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                        </div>
                        <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="product-box">
                        <div class="product-img"><a href="#"><img src="assets/images/img14.jpg" /></a>
                            <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                        </div>
                        <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="product-box">
                        <div class="product-img"><a href="#"><img src="assets/images/img15.jpg" /></a>
                            <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                        </div>
                        <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="product-box">
                        <div class="product-img"><a href="#"><img src="assets/images/img16.jpg" /></a>
                            <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                        </div>
                        <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="product-box">
                        <div class="product-img"><a href="#"><img src="assets/images/img17.jpg" /></a>
                            <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                        </div>
                        <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="product-box">
                        <div class="product-img"><a href="#"><img src="assets/images/img18.jpg" /></a>
                            <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                        </div>
                        <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                    </div>
                </div>
            </div>
            </div>
            <div class="list-product">
                <ul>
                    <li><a href="#">Giấy Hàn Quốc</a>
                        <ul>
                            <li><a href="#">Giấy Hàn Quốc 1</a></li>
                            <li><a href="#">Giấy Hàn Quốc 2</a></li>
                            <li><a href="#">Giấy Hàn Quốc 3</a></li>
                            <li><a href="#">Giấy Hàn Quốc 4</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Giấy Nhật Bản</a></li>
                    <li><a href="#">Giấy Đức</a></li>
                    <li><a href="#">Giấy Đài Loan</a></li>
                </ul>
                <div class="img-product">
                    <img src="assets/images/img-product2.jpg" />
                </div>
            </div>
         </div>
    </div>
    <div class="wrapper-product">
       <div class="head-title">
          <h1>sàn gỗ cao cấp</h1>
           <div class="view-all">
               <a href="#">Xem tất cả</a>
           </div>
      </div>
        <div class="product-main">
            <div class="tab-product">
                <div class="product-content row">
                   <div class="col-md-4">
                        <div class="product-box">
                            <div class="product-img"><a href="#"><img src="assets/images/img19.jpg" /></a>
                                <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                            </div>
                            <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="product-box">
                            <div class="product-img"><a href="#"><img src="assets/images/img20.jpg" /></a>
                                <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                            </div>
                            <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="product-box">
                            <div class="product-img"><a href="#"><img src="assets/images/img21.jpg" /></a>
                                <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                            </div>
                            <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="product-box">
                            <div class="product-img"><a href="#"><img src="assets/images/img22.jpg" /></a>
                                <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                            </div>
                            <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="product-box">
                            <div class="product-img"><a href="#"><img src="assets/images/img23.jpg" /></a>
                                <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                            </div>
                            <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="product-box">
                            <div class="product-img"><a href="#"><img src="assets/images/img24.jpg" /></a>
                                <div class="view-detail"><a href="#">Xem chi tiết</a></div>
                            </div>
                            <div class="product-name"><a href="#">Rèm cửa đẹp 10</a></div>
                        </div>
                    </div>
               </div>
            </div>
            <div class="list-product">
                <ul>
                    <li><a href="#">Sàn gỗ Đức</a></li>
                    <li><a href="#">Sàn gỗ Pháp</a></li>
                    <li><a href="#">Sàn gỗ Ý</a>
                        <ul>
                            <li><a href="#">Sàn gỗ Ý 1</a></li>
                            <li><a href="#">Sàn gỗ Ý 2</a></li>
                            <li><a href="#">Sàn gỗ Ý 3</a></li>
                            <li><a href="#">Sàn gỗ Ý 4</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Sàn gỗ Malaysia</a></li>
                    <li><a href="#">Sàn gỗ Thái Lan</a></li>
                    <li><a href="#">Sàn gỗ Trung Quốc</a></li>
                </ul>
                <div class="img-product">
                    <img src="assets/images/img-product3.jpg" />
                </div>
            </div>
         </div>
    </div>
</asp:Content>



