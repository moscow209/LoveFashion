<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="format-detection" content="telephone=no">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Update account</title>
<meta name="description" content="Page description" />
<meta name="keywords" content="Page keywords" />
<meta name="robots" content="INDEX,FOLLOW" />
<link rel="icon" href="/resources/images/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="/resources/images/favicon.ico" type="image/x-icon" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

<!-- Style -->
<link rel="stylesheet" type="text/css" href="/resources/css/bootstrap/bootstrap.min.css" media="all">
<link rel="stylesheet" type="text/css" href="/resources/css/bootstrap/bootstrap-theme.min.css" media="all">
<link rel="stylesheet" type="text/css" href="/resources/css/font-awesome.css" media="all">
<link rel="stylesheet" type="text/css" href="/resources/css/fontsocialico.css" media="all">
<link rel="stylesheet" type="text/css" href="/resources/css/docs.css" media="all">
<link rel="stylesheet" type="text/css" href="/resources/css/addons.css" media="all">
<link rel="stylesheet" type="text/css" href="/resources/css/theme.css" media="all">
<link rel="stylesheet" type="text/css" href="/resources/css/menu.css" media="all">
<link rel="stylesheet" type="text/css" href="/resources/css/css3.css" media="all">
<link rel="stylesheet" type="text/css" href="/resources/css/colorbox.css" media="all">
<link rel="stylesheet" type="text/css" href="/resources/css/widgets.css" media="all">
<link rel="stylesheet" type="text/css" href="/resources/css/yt-responsive.css" media="all">
<link rel="stylesheet" type="text/css" href="/resources/css/jquery.fancybox.css" media="all">
<link rel="stylesheet" type="text/css" href="/resources/css/quickview/jquery.fancybox.css" media="all">
<link rel="stylesheet" type="text/css" href="/resources/css/cloudzoom.css" media="all">
<link rel="stylesheet" type="text/css" href="/resources/css/new_cpanel.css" media="all">
<link rel="stylesheet" type="text/css" href="/resources/css/style.css" media="all">
<link rel="stylesheet" type="text/css" href="/resources/css/basicproducts.css" media="all">
<link rel="stylesheet" type="text/css" href="/resources/css/cartpro.css" media="all">
<link rel="stylesheet" type="text/css" href="/resources/css/sm_deal.css" media="all">
<link rel="stylesheet" type="text/css" href="/resources/css/sm-dynamicslideshow.css" media="all">
<link rel="stylesheet" type="text/css" href="/resources/css/sm-dynamicslideshow-settings.css" media="all">
<link rel="stylesheet" type="text/css" href="/resources/css/vertical/megamenu.css" media="all">
<link rel="stylesheet" type="text/css" href="/resources/css/horizontal/megamenu.css" media="all">
<link rel="stylesheet" type="text/css" href="/resources/css/quickview.css" media="all">
<link rel="stylesheet" type="text/css" href="/resources/css/quickview/jquery.fancybox.css" media="all">
<link rel="stylesheet" type="text/css" href="/resources/css/searchboxpro.css" media="all">
<link rel="stylesheet" type="text/css" href="/resources/css/slider.css" media="all">
<link rel="stylesheet" type="text/css" href="/resources/css/tablisting.css" media="all">
<link rel="stylesheet" type="text/css" href="/resources/css/print.css" media="print">
<link rel="stylesheet" href="/resources/css/violet.css" type="text/css" />

<!-- js -->
<script type="text/javascript" src="/resources/js/prototype.js"></script>
<script type="text/javascript" src="/resources/js/ccard.js"></script>
<script type="text/javascript" src="/resources/js/validation.js"></script>
<script type="text/javascript" src="/resources/js/builder.js"></script>
<script type="text/javascript" src="/resources/js/effects.js"></script>
<script type="text/javascript" src="/resources/js/dragdrop.js"></script>
<script type="text/javascript" src="/resources/js/controls.js"></script>
<script type="text/javascript" src="/resources/js/slider.js"></script>
<script type="text/javascript" src="/resources/js/js.js"></script>
<script type="text/javascript" src="/resources/js/form.js"></script>
<script type="text/javascript" src="/resources/js/menu.js"></script>
<script type="text/javascript" src="/resources/js/translate.js"></script>
<script type="text/javascript" src="/resources/js/cookies.js"></script>
<script type="text/javascript" src="/resources/js/product.js"></script>
<script type="text/javascript" src="/resources/js/calendar.js"></script>
<script type="text/javascript" src="/resources/js/calendar-setup.js"></script>
<script type="text/javascript" src="/resources/js/weee.js"></script>
<script type="text/javascript" src="/resources/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.noconflict.js"></script>
<script type="text/javascript" src="/resources/js/jsmart.noconflict.js"></script>
<script type="text/javascript" src="/resources/js/jquery.session.js"></script>
<script type="text/javascript" src="/resources/js/popuplogin.js"></script>
<script type="text/javascript" src="/resources/js/jquery.uniform.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.jqtransform.js"></script>
<script type="text/javascript" src="/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/resources/js/cloud-zoom.1.0.2.js"></script>
<script type="text/javascript" src="/resources/js/jcarousellite_1.0.1.js"></script>
<script type="text/javascript" src="/resources/js/jquery.easing.js"></script>
<script type="text/javascript" src="/resources/js/yt-script.js"></script>
<script type="text/javascript" src="/resources/js/jquery.accordion.js"></script>
<script type="text/javascript" src="/resources/js/ytcpanel.js"></script>
<script type="text/javascript" src="/resources/js/jquery.cookie.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.accordion_snyderplace.js"></script>
<script type="text/javascript" src="/resources/js/yt-extend.js"></script>
<script type="text/javascript" src="/resources/js/respond.src.js"></script>
<script type="text/javascript" src="/resources/js/jquery.fancybox.js"></script>
<script type="text/javascript" src="/resources/js/fancybox-buttons.js"></script>
<script type="text/javascript" src="/resources/js/sm-slider.js"></script>
<script type="text/javascript" src="/resources/js/bundle.js"></script>
<script type="text/javascript" src="/resources/js/cartpro/effects.js"></script>
<script type="text/javascript" src="/resources/js/msrp.js"></script>
<style>
@font-face {
	font-family: "Roboto Condensed Regular";
	font-style: normal;
	font-weight: 400;
	src: local("Roboto Condensed Regular"), local("RobotoCondensed-Regular"),
		url(/resources/font/Zd2E9abXLFGSr9G3YK2MsFzqCfRpIA3W6ypxnPISCPA.woff)
		format("woff");
}

body {
	font-size: 12px;
	font-family: Arial;
}

.right-content-header .detail-minicart .title-cart,.button,.respl-item .item-inner .item-image .item-price .regular-price .price,.respl-item .item-inner .item-image .item-price .old-price .price,.catalog-product-view #yt_main .page-title h1,.left-product-base .special-price .special-price,.left-product-base .regular-price .price,#yt_main .products-list .product-info .price,#yt_main .products-list .product-info .special-price .special-price,.yt-product-detail .yt-detail-right .price-box,.wrap-qty .qty-title,.yt-product-detail .yt-detail-right .product-name,.yt-product-detail .tab-product-detail .yt-tab-navi>li>a,.left-product-base .item-box-content .old-price .price,.respl-item .item-inner .item-image .item-price .minimal-price .price,.respl-item .item-inner .item-image .item-price .price-from .price,.respl-item .item-inner .item-image .item-price .price-to .price,#zoptions .price-box,#confirmbox .button.btn-cart>span,#btcancel,#btccart span,#btcshop span,.category-description .des-about,.promotional-popup .form-subscribe-header h2,.promotional-popup .btn-newsletter,.sm_megamenu_wrapper_horizontal_menu .sm_megamenu_menu li a.sm_megamenu_head,#what-client-say .item-cus .name-client,.footer-title h2,.btn_slide,.a-few-words,.banner-center-wrapper,.w-title h2,.submit-login .submit-repl,.product-details .product-name a,.mini-cartpro .block-content .mini-products-list li.item .price,.mini-cartpro .block-content .mini-products-list li.item .qty-w .label-qty,.mini-cartpro .price-total,.sm_megamenu_head_item .sm_megamenu_title,.cart-collaterals .crosssell .product-details .price,.cart-collaterals .crosssell .product-details .special-price .special-price,#checkoutSteps .step-title>h2,#checkoutSteps .step-title>span,.fieldset .legend,#nav>li>a,.sm_quickview_handler,.block-layered-nav .currently ol li span.value,.price-wrapper-shopby .title-price>h2,#yt_main .products-list .item .price-label,.sm-deal-wrap .view-detail,#yt_left .block .block-title strong,#yt_right .block .block-title strong,.related-header .block-title strong,.block-right-nav .block-title strong,.home-products .block-title strong,.left-product-base .item-box-content .product-name a,.respl-item .item-info .item-title a,.sale-item,.new-product,.static-top-home .content-banner-top h2 a,.respl-tabs-wrap h2.cat-name-tab,.newletter-home .new-static>h2,.quick-info .item1,.quick-info .item2>span,.sm_megamenu_wrapper_vertical_menu .sm_megamenu_menu .sm_megamenu_lv1 .sm_megamenu_head .sm_megamenu_title,.sm_megamenu_wrapper_vertical_menu .sm_megamenu_menu .more-view,.list-categories li a,.static-banner-center-homev1 .dt-static-homev1 .detail-homev1,.header-style-4 .btn-ver-menu .txt-btn,#yt_main .page-title h1,.respl-item .item-info .item-price .price,.left-product-base .item-box-content .old-price .price,.left-product-base .special-price
	{
	font-family: Roboto Condensed Regular, serif
}

body.sm_lovefashion {
	color: #666666;
	background-color: #ffffff;
}

a {
	color: #666666;
}
</style>

<script type="text/javascript">
    $jsmart(document).ready(function($) {
        $('.link-wishlist').each(function() {
            var href = $(this).attr('href');
            href = href.replace('https:', 'http:');
            $(this).attr('href', href);
        });
        /* show-hidden login form */
        $(".header-login .login-quick").hide();
        $('.header-login a.login').click(function() {
            $this = $(this);
            $this.toggleClass("actived");
            $(".login-quick").slideToggle("fast");
        });
        /*show-hidden account user*/
        $(".header-user .links").hide();
        $('.header-user span.icon-user').click(function() {
            $this = $(this);
            $this.toggleClass("actived");
            $(".header-user .links").slideToggle("fast");
        });
    });
</script>
<script type="text/javascript">
    $jsmart(function($) {
        //style for select option, radio...
        $("#chk_remember").uniform();
        $("#dont-show-again").uniform();
        $("#poll-answers .radio").uniform();
        $("#product-options-wrapper select").uniform();
        $("#toolbar-limit select").uniform();
        $(".toolbar .select-inner select").uniform();
        $(".sm-searbox-content .cat-wrapper select").uniform();
    });
</script>
</head>
<body id="bd" class="sm_lovefashion">
  <div id="yt_wrapper">
    <!-- BEGIN: Header -->
    <jsp:include page="header.jsp"></jsp:include>
    <!-- END: Header -->
    <!-- BEGIN: Content -->
    <div id="yt_content" class="yt-content wrap col2-left-layout">
      <div class="yt-content-inner wrapper-inner">
        <div class="container">
          <div class="row">
            <div id="yt_left" class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
              <div class="yt-left-wrap">
                <div class="block block-account">
                  <div class="block-title">
                    <strong> <span>My Account</span></strong>
                  </div>
                  <div class="block-content">
                    <ul>
                      <li><a href="/customer/account/">Account Dashboard</a></li>
                      <li class="current"><strong>Account Information</strong></li>
                      <li><a href="/customer/account/address">Address Book</a></li>
                      <li><a href="/customer/account/myorder">My Orders</a></li>
                      <li><a href="#">Billing Agreements</a></li>
                      <li><a href="#">My Wishlist</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <div id="yt_main" class="yt-main-right yt-main col-main col-lg-9 col-md-9 col-sm-8 col-xs-12">
              <div class="yt_main_inner">
                <div class="my-account">
                  <div class="page-title">
                    <h1>Edit Account Information</h1>
                  </div>
                  <c:if test="${not empty error_update}">
                    <ul class="messages">
                      <li class="error-msg"><ul>
                          <li><span>${error_update}</span></li>
                        </ul></li>
                    </ul>
                  </c:if>
                  <c:if test="${not empty message_update}">
                    <ul class="messages">
                      <li class="success-msg"><ul>
                          <li><span>${message_update}</span></li>
                        </ul></li>
                    </ul>
                  </c:if>
                  <form:form action="/customer/account/edit" method="post" id="form-validate" autocomplete="off" commandName="update">
                    <div class="row edit-account-form">
                      <div class="fieldset col-md-6">
                        <h2 class="legend">Account Information</h2>
                        <ul class="form-list">
                          <li class="fields">
                            <div class="customer-name row">
                              <div class="field name-firstname col-md-6">
                                <label for="firstname" class="required"><em>*</em>First Name</label>
                                <div class="input-box">
                                  <form:input path="firstName" value="${sessionScope.customer.firstname}" title="First Name" maxlength="255" class="input-text required-entry" />
                                </div>
                              </div>
                              <div class="field name-lastname col-md-6">
                                <label for="lastame" class="required"><em>*</em>Last Name</label>
                                <div class="input-box">
                                  <form:input path="lastName" value="${sessionScope.customer.lastname}" title="Last Name" maxlength="255" class="input-text required-entry" />
                                </div>
                              </div>
                            </div>
                          </li>
                          <li><label for="email" class="required"><em>*</em>Email Address</label>
                            <div class="input-box">
                              <form:input path="email" value="${sessionScope.customer.email}" title="Email Address" maxlength="255" disabled="true" class="input-text" />
                            </div></li>
                          <li class="control"><form:checkbox path="changePassword" onclick="setPasswordForm(this.checked)" title="Change Password" class="checkbox" /> <label
                            for="change_password">Change Password</label></li>
                        </ul>
                      </div>
                      <div class="fieldset col-md-6" <c:if test="${!changePassword}">style = 'display: none;'</c:if>>
                        <h2 class="legend">Change Password</h2>
                        <ul class="form-list">
                          <li><label for="current_password" class="required"><em>*</em>Current Password</label>
                            <div class="input-box">
                              <!-- This is a dummy hidden field to trick firefox from auto filling the password -->
                              <input type="text" class="input-text no-display" name="dummy" id="dummy">
                              <form:password path="currentPassword" title="Password" class="input-text required-entry validate-password" />
                            </div></li>
                          <li class="fields">
                            <div class="row">
                              <div class="field col-md-6">
                                <label for="password" class="required"><em>*</em>New Password</label>
                                <div class="input-box">
                                  <form:password path="password" title="New Password" class="input-text required-entry validate-password" />
                                </div>
                              </div>
                              <div class="field col-md-6">
                                <label for="confirmation" class="required"><em>*</em>Confirm New Password</label>
                                <div class="input-box">
                                  <form:password path="confirmPassword" title="Confirm New Password" class="input-text required-entry validate-cpassword" />
                                </div>
                              </div>
                            </div>
                          </li>
                        </ul>
                      </div>
                    </div>
                    <div class="buttons-set">
                      <p class="required">* Required Fields</p>
                      <p class="back-link">
                        <a href="/customer/account/"><small>« </small>Back</a>
                      </p>
                      <button type="submit" title="Save" class="button">
                        <span><span>Save</span></span>
                      </button>
                    </div>
                  </form:form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- END: Content -->
    <!-- BEGIN: Footer -->
    <jsp:include page="footer.jsp"></jsp:include>
    <!-- END: Footer -->
  </div>
  <script type="text/javascript">
        var dataForm = new VarienForm('form-validate', true);
        function setPasswordForm(arg){
            if(arg){
                $('currentPassword').up(3).show();
            } else{
                $('currentPassword').up(3).hide();
            }
        }
    </script>
</body>
</html>