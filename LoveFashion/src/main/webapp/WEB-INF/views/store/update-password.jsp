<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib uri='http://www.springframework.org/tags' prefix="spring"%>
<html>
<head>
<meta name="format-detection" content="telephone=no">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Change Password</title>
<meta name="description" content="Page description" />
<meta name="keywords" content="Page keywords" />
<meta name="robots" content="INDEX,FOLLOW" />
<link rel="icon" href="/resources/images/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="/resources/images/favicon.ico" type="image/x-icon" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
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
    if (typeof isShow == 'undefined')
        isShow = false;
    if (typeof isEffect == 'undefined')
        isEffect = false;
    if (typeof overEffect == 'undefined')
        overEffect = false;
    if (typeof outEffect == 'undefined') 
        outEffect = false;
    
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

<!-- Search -->
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
    <div id="yt_content" class="yt-content wrap">
      <div id="yt_main" class="yt-main col-main ">
        <div class="yt_main_inner yt-content-inner">
          <div class="container">
            <div class="row">
              <div class="">
                <div class="col-md-12">
                  <div class="account-login">
                    <div class="page-title">
                      <h1>Login or Create an Account</h1>
                    </div>
                    <%--Show error --%>
                    <c:if test="${not empty error_login}">
                      <ul class="messages">
                        <li class="error-msg"><ul>
                            <li><span>${error_login}</span></li>
                          </ul></li>
                      </ul>
                    </c:if>
                    <form action='<spring:url value="/customer/account/changePassword"></spring:url>' method="post" id="login-form">
                      <div class="col2-set row">
                        <div class="col-md-6 new-users">
                          <div class="cus-wrapper-login">
                            <div class="content">
                              <h2>New Customers</h2>
                              <p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders
                                in your account and more.</p>
                            </div>
                            <div class="buttons-set">
                              <button type="button" title="Create an Account" class="button" onclick="window.location='customer/account/register';">
                                <span><span>Create an Account</span></span>
                              </button>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6 registered-users">
                          <div class="cus-wrapper-login">
                            <div class="content">
                              <h2>Change Password</h2>
                              <ul class="form-list">
                                <li><label for="pass" class="required"><em>*</em>Password</label>
                                  <div class="input-box">
                                    <input type="password" name="password" class="input-text required-entry validate-password" id="pass" title="Password">
                                    <c:if test="${not empty password }">
                                      <div class="validation-advice">${password}</div>
                                    </c:if>
                                  </div></li>
                                <li><label for="pass" class="required"><em>*</em>Confirm Password</label>
                                  <div class="input-box">
                                    <input type="password" name="confirmPassword" class="input-text required-entry validate-cpassword" id="pass" title="Password">
                                    <input type="hidden" name="entityId" value="${entityId}">
                                    <c:if test="${not empty password }">
                                      <div class="validation-advice">${password}</div>
                                    </c:if>
                                  </div></li>
                              </ul>
                            </div>
                            <div class="buttons-set">
                              <button type="submit" class="button" title="Login" name="send" id="send2">
                                <span><span>Change Password</span></span>
                              </button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>
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
        var dataForm = new VarienForm('login-form', true);
    </script>
</body>
</body>
</html>