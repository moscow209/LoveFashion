<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib uri='http://www.springframework.org/tags' prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="format-detection" content="telephone=no">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>My Account</title>
<meta name="description" content="Page description" />
<meta name="keywords" content="Page keywords" />
<meta name="robots" content="INDEX,FOLLOW" />
<link rel="icon" href="/resources/images/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="/resources/images/favicon.ico" type="image/x-icon" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/bootstrap/bootstrap.min.css"></c:url>' media="all" />
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/bootstrap/bootstrap-theme.min.css"></c:url>' media="all" />
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/font-awesome.css"></c:url>' media="all" />
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/fontsocialico.css"></c:url>' media="all" />
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/docs.css"></c:url>' media="all" />
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/addons.css"></c:url>' media="all" />
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/theme.css"></c:url>' media="all" />
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/menu.css"></c:url>' media="all" />
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/css3.css"></c:url>' media="all" />
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/colorbox.css"></c:url>' media="all" />
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/widgets.css"></c:url>' media="all" />
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/yt-responsive.css"></c:url>' media="all" />
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/jquery.fancybox.css"></c:url>' media="all" />
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/cloudzoom.css"></c:url>' media="all" />
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/new_cpanel.css"></c:url>' media="all" />
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/style.css"></c:url>' media="all" />
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/basicproducts.css"></c:url>' media="all" />
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/cameraslide.css"></c:url>' media="all" />
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/cartpro.css"></c:url>' media="all" />
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/sm_deal.css"></c:url>' media="all" />
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/horizontal/megamenu.css"></c:url>' media="all" />
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/vertical/megamenu.css"></c:url>' media="all" />
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/quickview/quickview.css"></c:url>' media="all" />
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/quickview/jquery.fancybox.css"></c:url>' media="all" />
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/searchboxpro.css"></c:url>' media="all" />
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/slider.css"></c:url>' media="all" />
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/tablisting.css"></c:url>' media="all" />
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/print.css"></c:url>' media="print" />
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/red.css"></c:url>' type="text/css" />

<script type="text/javascript" src='<c:url value="/resources/js/prototype.js"></c:url>'></script>
<script type="text/javascript" src='<c:url value="/resources/js/validation.js"></c:url>'></script>
<script type="text/javascript" src='<c:url value="/resources/js/effects.js"></c:url>'></script>
<script type="text/javascript" src='<c:url value="/resources/js/slider.js"></c:url>'></script>
<script type="text/javascript" src='<c:url value="/resources/js/form.js"></c:url>'></script>
<script type="text/javascript" src='<c:url value="/resources/js/menu.js"></c:url>'></script>
<script type="text/javascript" src='<c:url value="/resources/js/jquery-2.1.3.min.js"></c:url>'></script>
<script type="text/javascript" src='<c:url value="/resources/js/jquery-noconflict.js"></c:url>'></script>
<script type="text/javascript" src='<c:url value="/resources/js/camera.min.js"></c:url>'></script>
<script type="text/javascript" src='<c:url value="/resources/js/enfinity.js"></c:url>'></script>
<script type="text/javascript" src='<c:url value="/resources/js/jquery.easing.1.3.js"></c:url>'></script>
<script type="text/javascript" src='<c:url value="/resources/js/jquery.mobile.customized.min.js"></c:url>'></script>
<script type="text/javascript" src='<c:url value="/resources/js/jsmart.noconflict.js"></c:url>'></script>
<script type="text/javascript" src='<c:url value="/resources/js/jquery.uniform.min.js"></c:url>'></script>
<script type="text/javascript" src='<c:url value="/resources/js/jquery.jqtransform.js"></c:url>'></script>
<script type="text/javascript" src='<c:url value="/resources/js/bootstrap.min.js"></c:url>'></script>
<script type="text/javascript" src='<c:url value="/resources/js/cloud-zoom.1.0.2.js"></c:url>'></script>
<script type="text/javascript" src='<c:url value="/resources/js/jcarousellite_1.0.1.js"></c:url>'></script>
<script type="text/javascript" src='<c:url value="/resources/js/jquery.easing.js"></c:url>'></script>
<script type="text/javascript" src='<c:url value="/resources/js/yt-script.js"></c:url>'></script>
<script type="text/javascript" src='<c:url value="/resources/js/jquery.accordion.js"></c:url>'></script>
<script type="text/javascript" src='<c:url value="/resources/js/yt-extend.js"></c:url>'></script>
<script type="text/javascript" src='<c:url value="/resources/js/jquery.fancybox.js"></c:url>'></script>
<script type="text/javascript" src='<c:url value="/resources/js/fancybox-buttons.js"></c:url>'></script>
<script type="text/javascript" src='<c:url value="/resources/js/sm-slider.js"></c:url>'></script>

<style type="text/css">
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
                    <strong><span><spring:message code="customer.dashboard.title.e1"></spring:message></span></strong>
                  </div>
                  <div class="block-content">
                    <ul>
                      <li class="current"><strong><spring:message code="customer.dashboard.title.e8"></spring:message></strong></li>
                      <li><a href="/customer/account/edit"><spring:message code="customer.dashboard.title.e9"></spring:message></a></li>
                      <li><a href="/customer/account/address"><spring:message code="customer.dashboard.title.e10"></spring:message></a></li>
                      <li><a href="/customer/account/myorder"><spring:message code="customer.dashboard.title.e11"></spring:message></a></li>
                      <li><a href="#"><spring:message code="customer.dashboard.title.e12"></spring:message></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <div id="yt_main" class="yt-main-right yt-main col-main col-lg-9 col-md-9 col-sm-8 col-xs-12">
              <div class="yt_main_inner">
                <div class="my-account">
                  <div class="dashboard">
                    <div class="page-title">
                      <h1><spring:message code="customer.dashboard.title.e2"></spring:message></h1>
                    </div>
                    <div class="welcome-msg">
                      <p class="hello">
                        <strong><spring:message code="common.hello"></spring:message>, ${customer.firstname} ${customer.lastname}!</strong>
                      </p>
                      <p><spring:message code="customer.dashboard.content"></spring:message></p>
                    </div>
                    <div class="box-account box-info">
                      <div class="box-head">
                        <h2><spring:message code="customer.dashboard.title.e3"></spring:message></h2>
                      </div>
                      <div class="col2-set">
                        <div class="box">
                          <div class="box-title">
                            <h3><spring:message code="customer.dashboard.title.e4"></spring:message></h3>
                            <a href="/customer/account/edit"><spring:message code="common.edit"></spring:message></a>
                          </div>
                          <div class="box-content">
                            <p>
                              <spring:message code="common.name"></spring:message>: ${customer.lastname} ${customer.firstname}<br> <spring:message code="common.email"></spring:message>: ${customer.email}<br> <a href="/customer/account/edit?changePassword=1"><spring:message code="common.password.change"></spring:message></a>
                            </p>
                          </div>
                        </div>
                      </div>
                      <div class="col2-set">
                        <div class="box">
                          <div class="box-title">
                            <h3><spring:message code="customer.dashboard.title.e10"></spring:message></h3>
                            <a href="/customer/account/address/"><spring:message code="customer.dashboard.address.manager"></spring:message></a>
                          </div>
                          <div class="box-content">
                            <div class="col-1">
                              <h4><spring:message code="customer.dashboard.title.e6"></spring:message></h4>
                              <c:if test="${not empty defaultBilling}">
                                <address>
                                  Name: ${defaultBilling.firstname} ${defaultBilling.lastname} </br> Address: ${defaultBilling.street}, ${defaultBilling.region} </br> Country: ${defaultBilling.country} </br> Phone:
                                  ${defaultBilling.phone}
                                </address>
                                <p>
                                  <a href="/customer/account/address/edit/id/${defaultBilling.entityId}">Change Billing Address</a>
                                </p>
                              </c:if>
                              <c:if test="${empty defaultBilling}">
                                <address><spring:message code="customer.dashboard.billing.content"></spring:message></address>
                              </c:if>
                            </div>
                            <div class="col-2">
                              <h4><spring:message code="customer.dashboard.title.e7"></spring:message></h4>
                              <c:if test="${not empty defaultShipping}">
                                <address>
                                  Name: ${defaultShipping.firstname} ${defaultShipping.lastname} </br> Address: ${defaultShipping.street}, ${defaultShipping.region} </br> Country: ${defaultShipping.country} </br>
                                  Phone: ${defaultShipping.phone}
                                </address>
                                <p>
                                  <a href="/customer/account/address/edit/id/${defaultShipping.entityId}">Change Billing Address</a>
                                </p>
                              </c:if>
                              <c:if test="${empty defaultShipping}">
                                <address><spring:message code="customer.dashboard.shipping.content"></spring:message></address>
                              </c:if>
                            </div>
                          </div>
                        </div>
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
  </div>
</body>
</html>