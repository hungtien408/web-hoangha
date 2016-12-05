<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="lien-he.aspx.cs" Inherits="lien_he" %>

<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit, Version=3.5.40412.0, Culture=neutral, PublicKeyToken=28f01b0e84b6d53e" %>
<%@ Register TagPrefix="asp" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI, Version=2012.3.1016.35, Culture=neutral, PublicKeyToken=121fae78165ba3d4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Liên hệ - Rèm cửa đẹp Hoàng Hà</title>
    <meta name="description" content="Liên hệ - Rèm cửa đẹp Hoàng Hà" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div id="site">
            <a class="home" href="./">Trang chủ </a>/ <span>Liên hệ</span>
        </div>
    </div>
    <div class="row wrap-contact">
        <div class="col-md-6">
            <div class="address-contact">
                <h4 class="text-uppercase">
                    địa chỉ của chúng tôi</h4>
                <p>
                    <span class="fa fa-map-marker"></span>649/36/24 Điện Biên Phủ, P.25. Q.Bình Thạnh, Tp.HCM</p>
                <p>
                    <span class="fa fa-phone"></span>091 6304 038</p>
                <p>
                    <span class="fa fa-envelope"></span><a href="mailto:remcuadephoangha@gmail.com">remcuadephoangha@gmail.com</a></p>
            </div>
        </div>
        <div class="col-md-6">
            <div class="wrap-send">
                <h4 class="text-uppercase">
                    Chúng tôi có thể giúp gì cho bạn ?</h4>
                <div class="contact-w">
                    <div class="contact-input">
                        <asp:TextBox CssClass="contact-textbox" ID="txtFullName" runat="server"></asp:TextBox>
                        <asp:TextBoxWatermarkExtender ID="txtFullName_WatermarkExtender" runat="server" Enabled="True"
                            WatermarkText="Nhập họ tên..." TargetControlID="txtFullName">
                        </asp:TextBoxWatermarkExtender>
                        <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator1" runat="server"
                            Display="Dynamic" ValidationGroup="SendEmail" ControlToValidate="txtFullName" ErrorMessage="Thông tin bắt buộc!"
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="contact-w">
                    <div class="contact-input">
                        <asp:TextBox CssClass="contact-textbox" ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:TextBoxWatermarkExtender ID="txtEmail_WatermarkExtender" runat="server" Enabled="True"
                            WatermarkText="Nhập Email..." TargetControlID="txtEmail">
                        </asp:TextBoxWatermarkExtender>
                        <asp:RegularExpressionValidator CssClass="lb-error" ID="RegularExpressionValidator1"
                            runat="server" ValidationGroup="SendEmail" ControlToValidate="txtEmail" ErrorMessage="Sai định dạng email!"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
                            ForeColor="Red"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator2" runat="server"
                            ValidationGroup="SendEmail" ControlToValidate="txtEmail" ErrorMessage="Thông tin bắt buộc!"
                            Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="contact-w">
                    <div class="contact-input">
                        <asp:TextBox CssClass="contact-area" ID="txtNoiDung" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:TextBoxWatermarkExtender ID="txtNoiDung_WatermarkExtender" runat="server" Enabled="True"
                            WatermarkText="Nhập nội dung..." TargetControlID="txtNoiDung">
                        </asp:TextBoxWatermarkExtender>
                        <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator3" runat="server"
                            ValidationGroup="SendEmail" Display="Dynamic" ControlToValidate="txtNoiDung"
                            ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-6">
                        <div class="contact-w">
                            <div class="contact-input">
                                <div class="wcodes">
                                    <asp:TextBox ID="txtVerifyCode" CssClass="contact-textbox" runat="server"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="txtVerifyCode_WatermarkExtender" runat="server"
                                        Enabled="True" WatermarkText="Code" TargetControlID="txtVerifyCode">
                                    </asp:TextBoxWatermarkExtender>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="contact-w">
                            <div class="contact-input">
                                <div class="wcodes">
                                    <asp:RadCaptcha ID="RadCaptcha1" ForeColor="Red" Font-Bold="true" ValidationGroup="SendEmail"
                                        runat="server" ErrorMessage="+ Mã an toàn: không chính xác." ValidatedTextBoxID="txtVerifyCode"
                                        Display="Dynamic">
                                        <captchaimage height="35" width="135" renderimageonly="True" />
                                    </asp:RadCaptcha>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="contact-w">
                    <div class="contact-btn">
                        <asp:Button ID="btGui" CssClass="button-btn" runat="server" Text="Gửi" ValidationGroup="SendEmail"
                            OnClick="btGui_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="mapshow">
    </div>
</asp:Content>
