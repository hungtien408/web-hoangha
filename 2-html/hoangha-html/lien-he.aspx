<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="lien-he.aspx.cs" Inherits="lien_he" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Hoàng Hà</title>
    <meta name="description" content="Hoàng Hà" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="container">
        <div id="site">
            <a class="home" href="./">Trang chủ </a> /
            <span>Liên hệ</span>
        </div>
    </div>
        <div class="row wrap-contact">
            <div class="col-md-6">
                <div class="address-contact">
                    <h4 class="text-uppercase">địa chỉ của chúng tôi</h4>
                    <p><span class="fa fa-map-marker"></span>52/2F, Tổ 52, KP 4A, P. Tân Chánh Hiệp, Q.12, Tp.HCM</p>                    <p><span class="fa fa-phone"></span>090 8465 466</p>                    <p><span class="fa fa-envelope"></span><a href="mailto:hoangha@gmail.com">hoangha@gmail.com</a></p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="wrap-send">
                    <h4 class="text-uppercase">Chúng tôi có thể giúp gì cho bạn ?</h4>
                        <div class="contact-w">
                            <div class="contact-input">
                                 <asp:TextBox CssClass="contact-textbox" ID="txtHoTen" runat="server" placeholder="Nhập họ tên..."></asp:TextBox>
                                    <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator1" runat="server" Display="Dynamic"
                                        ValidationGroup="SendEmail" ControlToValidate="txtHoTen" ErrorMessage="Thông tin bắt buộc!"
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="contact-w">
                            <div class="contact-input">
                                <asp:TextBox CssClass="contact-textbox" ID="txtEmail" runat="server" placeholder="Nhập Email......"></asp:TextBox>
                                    <asp:RegularExpressionValidator CssClass="lb-error" ID="RegularExpressionValidator1" runat="server" ValidationGroup="SendEmail"
                                        ControlToValidate="txtEmail" ErrorMessage="Sai định dạng email!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                        Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator2" runat="server" ValidationGroup="SendEmail"
                                        ControlToValidate="txtEmail" ErrorMessage="Thông tin bắt buộc!" Display="Dynamic"
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="contact-w">
                            <div class="contact-input">
                                <asp:TextBox CssClass="contact-area" ID="txtNoiDung" runat="server" TextMode="MultiLine" placeholder="Nhập nội dung..."></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator3" runat="server" ValidationGroup="SendEmail"
                                Display="Dynamic" ControlToValidate="txtNoiDung" ErrorMessage="Thông tin bắt buộc!"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="contact-w">
                            <div class="contact-btn">
                                <asp:Button ID="btGui" CssClass="button-btn" runat="server" Text="Gửi" ValidationGroup="SendEmail"  />
                            </div>
                        </div>
                    </div>
                </div>
          </div>
            <div id="mapshow"></div>
</asp:Content>


