<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta name="format-detection" content="telephone=no">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Check out</title>
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
      <div class="yt-content-inner">
        <div class="container">
          <div class="row">
            <div id="yt_main" class="yt-main-left yt-main col-main col-lg-9 col-md-9 col-sm-9 col-xs-12">
              <div class="yt_main_inner">
                <div class="global-site-notice demo-notice">
                  <div class="notice-inner">
                    <p>This is a demo store. Any orders placed through this store will not be honored or fulfilled.</p>
                  </div>
                </div>
                <div class="page-title">
                  <h1>Checkout</h1>
                </div>
                <ol class="opc" id="checkoutSteps">
                  <c:if test="${empty sessionScope.customer}">
                    <li id="opc-login" class="section allow active">
                      <div class="step-title">
                        <span class="number">1</span>
                        <h2>Checkout Method</h2>
                        <a href="javascript:void(0)" onclick="showStep()">Edit</a>
                      </div>
                      <div id="checkout-step-login" class="step a-item">
                        <div class="col2-set">
                          <div class="col-1 col-lg-6 col-md-6 col-sm-12 col-xs-12">
                            <h3>Checkout as a Gues or Register</h3>
                            <p>Register with us for future convenience:</p>
                            <ul class="form-list">
                              <li class="control"><input type="radio" name="checkout_method" id="login:guest" value="guest" class="radio"><label for="login:guest">Checkout as
                                  Guest</label></li>
                              <li class="control"><input type="radio" name="checkout_method" id="login:register" value="register" class="radio"><label for="login:register">Register</label>
                              </li>
                            </ul>
                            <h4>Register and save time!</h4>
                            <p>Register with us for future convenience:</p>
                            <ul class="ul">
                              <li>Fast and easy check out</li>
                              <li>Easy access to your order history and status</li>
                            </ul>
                            <div class="buttons-set">
                              <!--<p class="required">&nbsp;</p>-->
                              <button id="onepage-guest-register-button" type="button" class="button">
                                <span><span>Continue</span></span>
                              </button>
                            </div>
                          </div>
                          <div class="col-2 col-lg-6 col-md-6 col-sm-12 col-xs-12">
                            <h3>Login</h3>
                            <form id="login-form" action="/customer/account/login" method="post">
                              <fieldset>
                                <h4>Already registered?</h4>
                                <p>Please log in below:</p>
                                <ul class="form-list">
                                  <li><label for="login-email" class="required"><em>*</em>Email Address</label>
                                    <div class="input-box">
                                      <input type="text" class="input-text required-entry validate-email" id="login-email" name="login[username]" value="">
                                    </div></li>
                                  <li><label for="login-password" class="required"><em>*</em>Password</label>
                                    <div class="input-box">
                                      <input type="password" class="input-text required-entry" id="login-password" name="login[password]"> <input type="hidden" name="returnUrl"
                                        value="/checkout/onepage">
                                    </div></li>
                                </ul>
                                <input name="context" type="hidden" value="checkout">
                              </fieldset>
                            </form>
                            <div class="buttons-set">
                              <a href="/customer/account/forgotpassword" class="f-left">Forgot your password?</a>
                              <button type="submit" class="button" onclick="onepageLogin(this)">
                                <span><span>Login</span></span>
                              </button>
                            </div>
                          </div>
                        </div>
                        <script type="text/javascript">
                        var loginForm = new VarienForm('login-form',true);
                        function onepageLogin(button) {
                            if (loginForm.validator&& loginForm.validator.validate()) {
                                button.disabled = true;
                                loginForm.submit();
                            }
                        }	
						</script>
                      </div>
                    </li>
                  </c:if>
                  <li id="opc-billing" class='section <c:if test='${sessionScope.step > 1}'> allow</c:if> <c:if test='${sessionScope.step == 1}'> active</c:if>'>
                    <div class="step-title">
                      <c:if test="${empty sessionScope.customer}">
                        <span class="number">2</span>
                      </c:if>
                      <c:if test="${not empty sessionScope.customer}">
                        <span class="number">1</span>
                      </c:if>
                      <h2>Billing Information</h2>
                      <a href="javascript:void(0)" onclick="showStep()">Edit</a>
                    </div>
                    <div id="checkout-step-billing" class="step a-item" <c:if test='${sessionScope.step != 1}'>style="display: none;"</c:if>>
                      <form:form id="co-billing-form" action="/checkout/onepage/billing" commandName="billing">
                        <div class="fieldset">
                          <h2 class="legend">Contact Information</h2>
                          <ul class="form-list edit-address-form">
                            <li class="fields">
                              <div class="customer-name-middlename row">
                                <div class="field name-firstname col-md-6">
                                  <label for="firstname" class="required"><em>*</em>First Name</label>
                                  <div class="input-box">
                                    <form:input path="firstName" value="${defaultBilling.firstname}" title="First Name" maxlength="255" class="input-text required-entry" />
                                  </div>
                                </div>
                              </div>
                              <div class="customer-name-middlename row">
                                <div class="field name-firstname col-md-6">
                                  <label for="lastname" class="required"><em>*</em>Last Name</label>
                                  <div class="input-box">
                                    <form:input path="lastName" value="${defaultBilling.lastname}" title="Last Name" maxlength="255" class="input-text required-entry" />
                                  </div>
                                </div>
                              </div>
                              <div class="customer-name-middlename row">
                                <div class="field name-firstname col-md-6">
                                  <label for="telephone" class="required"><em>*</em>Telephone</label>
                                  <div class="input-box">
                                    <form:input path="telephone" title="Telephone" class="input-text required-entry" value="${defaultBilling.phone}" />
                                  </div>
                                </div>
                              </div>
                            </li>
                          </ul>
                        </div>
                        <div class="fieldset">
                          <h2 class="legend">Address</h2>
                          <ul class="form-list edit-address-form">
                            <li class="wide"><label for="street_1" class="required"><em>*</em>Street Address</label>
                              <div class="input-box">
                                <form:input path="street" title="Street" class="input-text required-entry" value="${defaultBilling.street}" />
                              </div></li>
                            <li class="fields">
                              <div class="row">
                                <div class="field col-md-6">
                                  <label for="region_id" class="required"><em>*</em>State/Province</label>
                                  <div class="input-box">
                                    <form:select path="regionId" class="validate-select required-entry" value="${defaultBilling.regionId}">
                                      <form:option value="" label="Please select region, state or province" />
                                      <form:options items="${regionList}" />
                                    </form:select>
                                  </div>
                                </div>
                                <div class="field col-md-6">
                                  <label for="country" class="required"><em>*</em>Country</label>
                                  <div class="input-box">
                                    <form:select path="countryId" class="validate-select required-entry" value="${defaultBilling.countryId}">
                                      <form:option value="" label="Please select region, state or province" />
                                      <form:options items="${countryList}" />
                                    </form:select>
                                  </div>
                                </div>
                              </div>
                            </li>
                          </ul>
                        </div>

                        <div class="buttons-set" id="payment-buttons-container">
                          <button type="submit" class="button" onclick="onepageBilling(this)">
                            <span><span>Continue</span></span>
                          </button>
                        </div>
                      </form:form>
                    </div>
                  </li>

                  <li id="opc-shipping" class="section <c:if test='${sessionScope.step > 2}'> allow</c:if> <c:if test='${sessionScope.step == 2}'> active</c:if>">
                    <div class="step-title">
                      <c:if test="${empty sessionScope.customer}">
                        <span class="number">3</span>
                      </c:if>
                      <c:if test="${not empty sessionScope.customer}">
                        <span class="number">2</span>
                      </c:if>
                      <h2>Shipping Information</h2>
                      <a href="#">Edit</a>
                    </div>
                    <div id="checkout-step-shipping" class="step a-item" <c:if test='${sessionScope.step != 2}'>style="display: none;"</c:if>>
                      <form:form id="co-shipping-form" action="/checkout/onepage/shipping" commandName="shipping">
                        <div class="fieldset">
                          <h2 class="legend">Contact Information</h2>
                          <ul class="form-list edit-address-form">
                            <li class="fields">
                              <div class="customer-name-middlename row">
                                <div class="field name-firstname col-md-6">
                                  <label for="firstname" class="required"><em>*</em>First Name</label>
                                  <div class="input-box">
                                    <form:input path="firstName" value="${defaultShipping.firstname}" title="First Name" maxlength="255" class="input-text required-entry" />
                                  </div>
                                </div>
                              </div>
                              <div class="customer-name-middlename row">
                                <div class="field name-firstname col-md-6">
                                  <label for="lastname" class="required"><em>*</em>Last Name</label>
                                  <div class="input-box">
                                    <form:input path="lastName" value="${defaultShipping.lastname}" title="Last Name" maxlength="255" class="input-text required-entry" />
                                  </div>
                                </div>
                              </div>
                              <div class="customer-name-middlename row">
                                <div class="field name-firstname col-md-6">
                                  <label for="telephone" class="required"><em>*</em>Telephone</label>
                                  <div class="input-box">
                                    <form:input path="telephone" title="Telephone" class="input-text required-entry" value="${defaultShipping.phone}" />
                                  </div>
                                </div>
                              </div>
                            </li>
                          </ul>
                        </div>
                        <div class="fieldset">
                          <h2 class="legend">Address</h2>
                          <ul class="form-list edit-address-form">
                            <li class="wide"><label for="street_1" class="required"><em>*</em>Street Address</label>
                              <div class="input-box">
                                <form:input path="street" title="Street" class="input-text required-entry" value="${defaultShipping.street}" />
                              </div></li>
                            <li class="fields">
                              <div class="row">
                                <div class="field col-md-6">
                                  <label for="region_id" class="required"><em>*</em>State/Province</label>
                                  <div class="input-box">
                                    <form:select path="regionId" class="validate-select required-entry">
                                      <form:option value="" label="Please select region, state or province" />
                                      <form:options items="${regionList}" />
                                    </form:select>
                                  </div>
                                </div>
                                <div class="field col-md-6">
                                  <label for="country" class="required"><em>*</em>Country</label>
                                  <div class="input-box">
                                    <form:select path="countryId" class="validate-select required-entry" defaultvalue="0">
                                      <form:option value="" label="Please select region, state or province" />
                                      <form:options items="${countryList}" />
                                    </form:select>
                                  </div>
                                </div>
                              </div>
                            </li>
                          </ul>
                        </div>
                        <div class="buttons-set" id="payment-buttons-container">
                          <button type="submit" class="button" onclick="onepageShipping(this)">
                            <span><span>Continue</span></span>
                          </button>
                        </div>
                      </form:form>
                    </div>
                  </li>

                  <li id="opc-shipping_method" class="section <c:if test='${sessionScope.step > 3}'> allow</c:if> <c:if test='${sessionScope.step == 3}'> active</c:if>">
                    <div class="step-title">
                      <c:if test="${empty sessionScope.customer}">
                        <span class="number">4</span>
                      </c:if>
                      <c:if test="${not empty sessionScope.customer}">
                        <span class="number">3</span>
                      </c:if>
                      <h2>Shipping Method</h2>
                      <a href="#">Edit</a>
                    </div>
                    <div id="checkout-step-shipping_method" class="step a-item" <c:if test="${sessionScope.step != 3}">style="display: none;"</c:if>>
                      <form id="co-shipping-method-form" action="/checkout/onepage/method-shipping" method="post">
                        <ul class="form-list">
                          <li>
                            <div class="input-box col-md-6">
                              <p>Enter your destination to get a shipping estimate.</p>
                              <select name="methodShipping" id="country" class="validate-select jqtransformdone" title="Country">
                                <option value="Free Shipping">Free Shipping</option>
                                <option value="Shipping for item">Shipping for item</option>
                              </select>
                            </div>
                          </li>
                        </ul>
                        <div class="buttons-set" id="payment-buttons-container">
                          <button type="submit" class="button">
                            <span><span>Continue</span></span>
                          </button>
                        </div>
                      </form>
                    </div>
                  </li>

                  <li id="opc-spayment" class="section <c:if test='${sessionScope.step > 4}'> allow</c:if> <c:if test='${sessionScope.step == 4}'> active</c:if>">
                    <div class="step-title">
                      <c:if test="${empty sessionScope.customer}">
                        <span class="number">5</span>
                      </c:if>
                      <c:if test="${not empty sessionScope.customer}">
                        <span class="number">4</span>
                      </c:if>
                      <h2>Payement Method</h2>
                      <a href="#">Edit</a>
                    </div>
                    <div id="checkout-step-payment" class="step a-item" <c:if test="${sessionScope.step != 4}">style="display: none;"</c:if>>
                      <form id="co-payment-form" action="/checkout/onepage/payment" method="post">
                        <ul class="form-list">
                          <li>
                            <div class="input-box col-md-6">
                              <p>Payment.</p>
                              <select name="payment" id="payment" class="validate-select jqtransformdone" title="Country">
                                <option value="Direct payment">Direct payment</option>
                                <option value="Paypal">Paypal</option>
                              </select>
                              <!-- Them input thanh toan paypal -->
                              <c:set var="count" value="1" />
                                <c:forEach var="item" items="${sessionScope.cart.list}" >
                                    <input type="hidden" name="item_number_${count}" value="${item.id}"/>
                                    <input type="hidden" name="item_name_${count}" value="${item.name}"/>
                                    <input type="hidden" name="quantity_${count}" value="${item.qty}"/>
                                    <input type="hidden" name="amount_${count}" value="${item.qty * item.price}"/>
                                    <c:set var="count" value="${count+1}" />
                                </c:forEach>
                                 <input type="hidden" name="shipping_1" value="${sessionScope.cart.priceTax + sessionScope.cart.priceShipping }"/>
                                <input type="hidden" name="cmd" value="_cart"/>
                                <input type="hidden" name="business" value="shoper_@gmail.com"/>
                                <input type="hidden" name="return" value="${url}/checkout/onepage/complele"/>
                                <input type="hidden" name="cancel" value="${url}/checkout/onepage/fail"/>
                                <input type="hidden" name="upload" value="1" />
                            </div>
                          </li>
                        </ul>
                        <div class="buttons-set" id="payment-buttons-container">
                          <button type="button" class="button" onclick="onepagePayment()">
                            <span><span>Continue</span></span>
                          </button>
                        </div>
                      </form>
                    </div>
                  </li>
                </ol>
              </div>
            </div>
            <div id="yt_right" class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
              <div class="yt-right-wrap">
                <div id="checkout-progress-wrapper">
                  <div class="block block-progress opc-block-progress">
                    <div class="title-header  block-title">
                      <strong> <span>Your Progress</span>
                      </strong>
                    </div>
                    <div class="block-content">
                      <dl>
                        <div id="billing-progress-opcheckout">
                          <dt>Billing Address</dt>
                        </div>

                        <div id="shipping-progress-opcheckout">
                          <dt>Shipping Address</dt>
                        </div>
                        <div id="shipping_method-progress-opcheckout">
                          <dt>Shipping Method</dt>
                        </div>
                        <div id="payment-progress-opcheckout">
                          <dt>Payment Method</dt>
                        </div>
                      </dl>
                    </div>
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
     var billingForm = new VarienForm('co-billing-form', true);
     var shippingForm = new VarienForm('co-shipping-form', true);
     function onepageBilling(button){
    	 if (billingForm.validator && billingForm.validator.validate()) {
             button.disabled = true;
             billingForm.submit();
         }
     }
     function onepageShipping(button){
         if (shippingForm.validator && shippingForm.validator.validate()) {
             button.disabled = true;
             shippingForm.submit();
         }
     }
     function onepagePayment(){
         var method = jQuery('select[name="payment"]').val();
         if(method == 'Paypal'){
             jQuery('#co-payment-form').attr('action', 'https://www.sandbox.paypal.com/cgi-bin/webscr');
         }
         jQuery('#co-payment-form').submit();
     }
  </script>

</body>
</body>
</html>