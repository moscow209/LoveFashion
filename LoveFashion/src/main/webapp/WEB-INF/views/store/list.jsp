<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri='http://www.springframework.org/tags' prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="format-detection" content="telephone=no">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Categories</title>
<meta name="description" content="Page description" />
<meta name="keywords" content="Page keywords" />
<meta name="robots" content="INDEX,FOLLOW" />
<link rel="icon" href="resources/images/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="resources/images/favicon.ico" type="image/x-icon" />
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
                <div id="layered-navigation">
                  <div class="block block-layered-nav">
                    <div class="block-title">
                      <strong><span><spring:message code="list.title.e1"></spring:message></span></strong>
                    </div>
                    <!-- <div class="currently">
                      <ol>
                        <li>href="http://demo.magentech.com/themes/sm_love_fashion/mens//manufacturer/duresta.html" title="Remove This Item"></a>
                        </li>
                        <li>href="http://demo.magentech.com/themes/sm_love_fashion/mens//cat/clothing.html" title="Remove This Item"></a>
                        </li>
                      </ol>
                      <div class="actions">
                        <a href="http://demo.magentech.com/themes/sm_love_fashion/mens.html">Clear All</a>
                      </div>
                    </div> -->
                    <div class="block-content">
                      <dl id="narrow-by-list">
                        <c:if test="${not empty cats && cats.size() > 0}">
                            <dt class="Category odd"><spring:message code="list.title.cats"></spring:message></dt>
                            <dd class="odd">
                                <ol>
                                    <c:forEach var="item" items="${cats}">
                                        <c:if test="${pageContext.response.locale == 'en'}">
                                            <li><a href="#">${item.nameEn}</a></li>
                                        </c:if>
                                        <c:if test="${pageContext.response.locale == 'vi'}">
                                            <li><a href="#">${item.name}</a></li>
                                        </c:if>
                                    </c:forEach>
                                </ol>
                            </dd>
                        </c:if>
                        <dt class="Price even">Price</dt>
                        <dd class="even">
                          <div class="price-wrapper-shopby">
                            <div class="title-price">
                              <h2><spring:message code="list.title.price"></spring:message></h2>
                            </div>
                            <div id="price-filter" class="price_filter">
                              <span id="price-filter-min" class="price-from selected" title="Minimum value"></span>
                              <span id="price-filter-max" class="price-to" title="Maximum value"></span>
                            </div>
                            <ul>
                              <li>
                                <c:if test="${empty price}">
                                    <span class="sp-left">
                                        <span>$</span>
                                        <span id="price-filter-min-display">0</span>
                                    </span>
                                    <span class="sp-right">
                                        <span>$</span>
                                        <span id="price-filter-max-display">415</span>
                                    </span>
                                </c:if>
                                <c:if test="${not empty price}">
                                    <span class="sp-left">
                                        <span>$</span>
                                        <span id="price-filter-min-display">${price[0]}</span>
                                    </span>
                                    <span class="sp-right">
                                        <span>$</span>
                                        <span id="price-filter-max-display">${price[1]}</span>
                                    </span>
                                </c:if>
                              </li>
                            </ul>
                          </div>
                        </dd>
                        <c:if test="${not empty brands}">
                            <dt class="Manufacturer odd"><spring:message code="list.title.brand"></spring:message></dt>
                            <dd class="odd">
                                <ol>
                                    <c:forEach var="item" items="${brands}">
                                       <li><input class="check-shopby" type="checkbox" onclick="$(this).next().click()">
                                            <a class="checked" onclick="$(this).previous().checked = false;" href="#">${item}</a>
                                       </li>                                        
                                    </c:forEach>
                                </ol>
                            </dd>
                        </c:if>
                        <c:if test="${not empty colors}">
                            <dt class="Color last even"><spring:message code="list.title.color"></spring:message></dt>
                            <dd class="even">
                                <ol class="configurable-swatch-list">
                                    <c:forEach var="item" items="${colors}">
                                        <li><a href="http://demo.magentech.com/themes/sm_love_fashion/mens//cat/clothing/color/black/manufacturer/duresta.html" class="swatch-link">
                                            <span class="swatch-label">${item}</span>
                                            </a>
                                        </li>
                                    </c:forEach>
                                </ol>
                            </dd>
                        </c:if>
                        <c:if test="${not empty sizes}">
                            <dt class="Size"><spring:message code="list.title.size"></spring:message></dt>
                            <dd class="last odd">
                                <ol>
                                    <c:forEach var="item" items="${sizes}">
                                       <li><input class="check-shopby" type="checkbox" onclick="$(this).next().click()">
                                            <a class="checked" onclick="$(this).previous().checked = false;" href="#">${item}</a>
                                       </li>                                        
                                    </c:forEach>
                                </ol>
                            </dd>
                        </c:if>
                      </dl>
                    </div>
                  </div>
                </div>
                <div class="block left-image">
                  <div class="block-content">
                    <a title="Left Static Image" href="#"><img src="http://demo.magentech.com/themes/sm_love_fashion/media/wysiwyg/left-static-image.png" alt="Left Static Image"></a>
                  </div>
                </div>
                <p></p>
                <div class="block left-products">
                  <div class="block-title">
                    <strong> <span>Best Sale</span>
                    </strong>
                  </div>
                  <div class="block-content">
                    <div class="left-product-base">
                      <div class="list-items">
                        <div class="item first ">
                          <div class="item-inner">
                            <div class="product-image">
                              <a href="http://demo.magentech.com/themes/sm_love_fashion/mens/jema-rumi-mire.html" title="Jema rumi mire" class="product-imgs"><img
                                src="http://demo.magentech.com/themes/sm_love_fashion/media/catalog/product/cache/1/small_image/84x84/9df78eab33525d08d6e5fb8d27136e95/2/9/29_1_2.png"
                                alt="Jema rumi mire"> </a>
                            </div>
                            <div class="item-box-content">
                              <h2 class="product-name">
                                <a href="http://demo.magentech.com/themes/sm_love_fashion/mens/jema-rumi-mire.html" title="Jema rumi mire"> Jema rumi mire </a>
                              </h2>
                              <div class="price-wrapper">
                                <div class="price-block">
                                  <div class="price-box">
                                    <span class="regular-price" id="product-price-896_bugsleft"> <span class="price">$415.00</span>
                                    </span>
                                  </div>
                                </div>
                              </div>
                              <div class="item-review">
                                <div class="ratings">
                                  <div class="rating-box">
                                    <div class="rating" style="width: 60%"></div>
                                  </div>
                                  <span class="amount"><a href="#"
                                    onclick="var t = opener ? opener.window : window; t.location.href='http://demo.magentech.com/themes/sm_love_fashion/review/product/list/id/896/category/134/'; return false;">1
                                      Review(s)</a></span> <span class="separator">|</span> <a class="link-add-review"
                                    href="http://demo.magentech.com/themes/sm_love_fashion/review/product/list/id/896/category/134/#review-form">Add Review</a>
                                </div>
                              </div>
                            </div>
                            <div style="clear: both;"></div>
                          </div>
                        </div>
                        <div class="item  odd">
                          <div class="item-inner">
                            <div class="product-image">
                              <a href="http://demo.magentech.com/themes/sm_love_fashion/catalog/product/view/id/909/s/kera-more-poza/category/134/" title="Kera more poza " class="product-imgs"><img
                                src="http://demo.magentech.com/themes/sm_love_fashion/media/catalog/product/cache/1/small_image/84x84/9df78eab33525d08d6e5fb8d27136e95/6/_/6_1.png"
                                alt="Kera more poza "> </a>
                            </div>
                            <div class="item-box-content">
                              <h2 class="product-name">
                                <a href="http://demo.magentech.com/themes/sm_love_fashion/catalog/product/view/id/909/s/kera-more-poza/category/134/" title="Kera more poza "> Kera more poza </a>
                              </h2>
                              <div class="price-wrapper">
                                <div class="price-block">
                                  <div class="price-box">
                                    <p class="old-price">
                                      <span class="price-label">Regular Price:</span> <span class="price" id="old-price-909_bugsleft"> $565.00 </span>
                                    </p>
                                    <p class="special-price">
                                      <span class="price-label">Special Price</span> <span class="price" id="product-price-909_bugsleft"> $500.00 </span>
                                    </p>
                                  </div>
                                </div>
                              </div>
                              <div class="item-review">
                                <div class="ratings">
                                  <div class="rating-box">
                                    <div class="rating" style="width: 87%"></div>
                                  </div>
                                  <span class="amount"><a href="#"
                                    onclick="var t = opener ? opener.window : window; t.location.href='http://demo.magentech.com/themes/sm_love_fashion/review/product/list/id/909/category/134/'; return false;">2
                                      Review(s)</a></span> <span class="separator">|</span> <a class="link-add-review"
                                    href="http://demo.magentech.com/themes/sm_love_fashion/review/product/list/id/909/category/134/#review-form">Add Review</a>
                                </div>
                              </div>
                            </div>
                            <div style="clear: both;"></div>
                          </div>
                        </div>
                        <div class="item  ">
                          <div class="item-inner">
                            <div class="product-image">
                              <a href="http://demo.magentech.com/themes/sm_love_fashion/catalog/product/view/id/902/s/kesa-mirem-pikam/category/134/" title="Kesa mirem pikam " class="product-imgs"><img
                                src="http://demo.magentech.com/themes/sm_love_fashion/media/catalog/product/cache/1/small_image/84x84/9df78eab33525d08d6e5fb8d27136e95/1/1/11_3.png"
                                alt="Kesa mirem pikam "> </a>
                            </div>
                            <div class="item-box-content">
                              <h2 class="product-name">
                                <a href="http://demo.magentech.com/themes/sm_love_fashion/catalog/product/view/id/902/s/kesa-mirem-pikam/category/134/" title="Kesa mirem pikam "> Kesa mirem pikam
                                </a>
                              </h2>
                              <div class="price-wrapper">
                                <div class="price-block">
                                  <div class="price-box">
                                    <p class="old-price">
                                      <span class="price-label">Regular Price:</span> <span class="price" id="old-price-902_bugsleft"> $550.00 </span>
                                    </p>
                                    <p class="special-price">
                                      <span class="price-label">Special Price</span> <span class="price" id="product-price-902_bugsleft"> $500.00 </span>
                                    </p>
                                  </div>
                                </div>
                              </div>
                              <div class="item-review">
                                <div class="ratings">
                                  <div class="rating-box">
                                    <div class="rating" style="width: 87%"></div>
                                  </div>
                                  <span class="amount"><a href="#"
                                    onclick="var t = opener ? opener.window : window; t.location.href='http://demo.magentech.com/themes/sm_love_fashion/review/product/list/id/902/category/134/'; return false;">1
                                      Review(s)</a></span> <span class="separator">|</span> <a class="link-add-review"
                                    href="http://demo.magentech.com/themes/sm_love_fashion/review/product/list/id/902/category/134/#review-form">Add Review</a>
                                </div>
                              </div>
                            </div>
                            <div style="clear: both;"></div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <p></p>
              </div>
            </div>
            <div id="yt_main" class="yt-main-right yt-main col-main col-lg-9 col-md-9 col-sm-8 col-xs-12">
              <div class="yt_main_inner">
                <noscript>&lt;div class="global-site-notice noscript"&gt; &lt;div class="notice-inner"&gt; &lt;p&gt; &lt;strong&gt;JavaScript seems to be disabled in your
                  browser.&lt;/strong&gt;&lt;br /&gt; You must have JavaScript enabled in your browser to utilize the functionality of this website. &lt;/p&gt; &lt;/div&gt; &lt;/div&gt;</noscript>
                <div class="global-site-notice demo-notice">
                  <div class="notice-inner">
                    <p>This is a demo store. Any orders placed through this store will not be honored or fulfilled.</p>
                  </div>
                </div>
                <div class="page-title category-title title-r title-visible">
                  <h1>Mens</h1>
                </div>
                <div id="ajax-errors" style="display: none;">
                  <ul class="messages">
                    <li class="error-msg">
                      <ul>
                        <li><span>An error occurred, please try again later.</span></li>
                      </ul>
                    </li>
                  </ul>
                </div>
                <div id="loading" style="margin-bottom: 10px; text-align: center; display: none;">
                  <img class="v-middle" alt="" src="http://demo.magentech.com/themes/sm_love_fashion/skin/frontend/sm_lovefashion/default/images/loader-shopby.gif"> Loading, please wait...
                </div>
                <c:if test="${empty list}">
                  <p>${message}</p>
                </c:if>
                <c:if test="${not empty list}">
                  <div id="catalog-listing">
                    <div class="category-products">
                      <div class="toolbar-top">
                        <div class="toolbar">
                          <div class="toolbar-inner">
                            <div class="sorter">
                              <div class="view-mode-wrap">
                                <p class="view-mode">
                                  <strong title="Grid" class="grid">Grid</strong>&nbsp; <a
                                    href="http://demo.magentech.com/themes/sm_love_fashion/mens//cat/clothing/manufacturer/duresta.html?mode=list" title="List" class="list">List</a>&nbsp;
                                </p>
                              </div>
                              <div class="limiter-wrap">
                                <div class="limiter">
                                  <label>Show</label>
                                  <div class="select-new">
                                    <div class="select-inner">
                                      <select onchange="">
                                        <option value="http://demo.magentech.com/themes/sm_love_fashion/mens//cat/clothing/manufacturer/duresta.html?limit=12" selected="selected">12</option>
                                        <option value="http://demo.magentech.com/themes/sm_love_fashion/mens//cat/clothing/manufacturer/duresta.html?limit=18">18</option>
                                        <option value="http://demo.magentech.com/themes/sm_love_fashion/mens//cat/clothing/manufacturer/duresta.html?limit=24">24</option>
                                      </select>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="sort-by-wrap">
                                <div class="sort-by">
                                  <label>Sort By</label>
                                  <div class="select-new">
                                    <div class="select-inner">
                                      <select onchange="">
                                        <option value="http://demo.magentech.com/themes/sm_love_fashion/mens//cat/clothing/manufacturer/duresta.html?dir=asc&amp;order=position" selected="selected">
                                          Position</option>
                                        <option value="http://demo.magentech.com/themes/sm_love_fashion/mens//cat/clothing/manufacturer/duresta.html?dir=asc&amp;order=name">Name</option>
                                        <option value="http://demo.magentech.com/themes/sm_love_fashion/mens//cat/clothing/manufacturer/duresta.html?dir=asc&amp;order=price">Price</option>
                                      </select>
                                    </div>
                                  </div>
                                  <a class="btn-sortby set-desc arrow-down"
                                    href="http://demo.magentech.com/themes/sm_love_fashion/mens//cat/clothing/manufacturer/duresta.html?dir=desc&amp;order=position" title="Set Descending Direction">Desc</a>
                                </div>
                              </div>
                              <div class="pagination-wrap">
                                <div class="pagination">
                                  <div class="pages">
                                    <ol>
                                      <c:if test="${currentPage != 1}">
                                        <li><a class="previous i-previous" href="${url}&page=${currentPage - 1}" title="Previous">Prev</a></li>
                                      </c:if>
                                      <c:forEach var="item" begin="1" end="${totalPage}">
                                        <c:if test="${currentPage == item}">
                                          <li class="current"><a href="#" onclick="javascript:void(0);">${item}</a></li>
                                        </c:if>
                                        <c:if test="${currentPage != item}">
                                          <li class=""><a href="${url}&page=${item}">${item}</a></li>
                                        </c:if>
                                      </c:forEach>
                                      <c:if test="${currentPage != page}">
                                        <li><a class="next" href="${url}&page=${currentPage + 1}" title="Previous">Next</a></li>
                                      </c:if>
                                    </ol>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="products-grid">
                        <div class="row">
                          <c:set value="<%=new java.util.Date()%>" var="now"></c:set>
                          <c:forEach var="item" items="${list}">
                            <div class="item col-lg-4 col-md-4 col-sm-6 col-xs-6 respl-item">
                              <div class="item-inner">
                                <div class="w-image-box">
                                  <div class="item-image">
                                    <div class="img-wrapper">
                                      <a class="rspl-image" href="/detail/${item.entityId}" title="Kaze dama pisa "> <c:if test="${item.image.size() == 1}">
                                          <img class="first_image" src="/resources/uploads/${item.image[0]}" height="270" width="270">
                                          <img class="last_image" src="/resources/uploads/${item.image[0]}" height="270" width="270">
                                        </c:if> <c:if test="${item.image.size() > 1}">
                                          <img class="first_image" src="/resources/uploads/${item.image[0]}" height="270" width="270">
                                          <img class="last_image" src="/resources/uploads/${item.image[1]}" height="270" width="270">
                                        </c:if>

                                      </a>
                                    </div>
                                    <a class="sm_quickview_handler" title="Quick View" href="#">Quick View</a>
                                  </div>
                                  <c:if test="${item.sale == 1}">
                                    <c:if
                                      test="${now.getTime() - item.specialToDate.getTime() <= 0
                                                && now.getTime() - item.specialFromDate.getTime() >= 0}">
                                      <div class="sale-item">Sale</div>
                                    </c:if>
                                  </c:if>
                                  <c:if test="${item.isNew == 1}">
                                    <c:if test="${now.getTime() - item.newsToDate.getTime() <= 0
                                                && item.newsFromDate.getTime() - now.getTime() <= 0}">
                                      <div class="new-product">New</div>
                                    </c:if>
                                  </c:if>
                                </div>
                                <div class="item-info">
                                  <div class="item-title ">
                                    <a href="/detail/${item.entityId}">${item.name}</a>
                                  </div>
                                  <div class="item-price special-box">
                                    <div class="price-box">
                                      <p class="special-price">
                                        <span class="price-label">Regular Price:</span> <span class="price" id="old-price-912"> $<fmt:formatNumber type="number" pattern="0.000"
                                            value="${item.price}" />
                                        </span>
                                      </p>
                                      <c:if test="${item.sale == 1}">
                                        <c:if
                                          test="${now.getTime() - item.specialToDate.getTime() <= 0
                                                && item.specialFromDate.getTime() - now.getTime() <= 0}">
                                          <p class="old-price">
                                            <span class="price-label">Special Price</span> <span class="price" id="product-price-912">$<fmt:formatNumber type="number" pattern="0.000"
                                                value="${item.specialPrice}" /></span>
                                          </p>
                                        </c:if>
                                      </c:if>
                                    </div>
                                  </div>
                                  <div class="item-addto-wrap">
                                    <div class="button-action item-addcart">
                                      <a class="button btn-cart" title="Add to Cart" href="javascript:void(0);"> Add to Cart </a> <a class="link-compare" href="#" title="Add to Compare"> Add to
                                        Compare </a> <a class="link-wishlist" href="#">Add to Wishlist</a> <input type="hidden" value="${item.sku}">
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </c:forEach>
                        </div>
                      </div>
                      <div class="toolbar-bottom">
                        <div class="toolbar">
                          <div class="toolbar-inner">
                            <div class="sorter">
                              <div class="view-mode-wrap">
                                <p class="view-mode">
                                  <!--<label>View as:</label>-->
                                  <strong title="Grid" class="grid">Grid</strong>&nbsp; <a
                                    href="http://demo.magentech.com/themes/sm_love_fashion/mens//cat/clothing/manufacturer/duresta.html?mode=list" title="List" class="list">List</a>&nbsp;
                                </p>
                              </div>
                              <div class="limiter-wrap">
                                <div class="limiter">
                                  <label>Show</label>
                                  <div class="select-new">
                                    <div class="select-inner">
                                      <select onchange="">
                                        <option value="http://demo.magentech.com/themes/sm_love_fashion/mens//cat/clothing/manufacturer/duresta.html?limit=12" selected="selected">12</option>
                                        <option value="http://demo.magentech.com/themes/sm_love_fashion/mens//cat/clothing/manufacturer/duresta.html?limit=18">18</option>
                                        <option value="http://demo.magentech.com/themes/sm_love_fashion/mens//cat/clothing/manufacturer/duresta.html?limit=24">24</option>
                                      </select>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="sort-by-wrap">
                                <div class="sort-by">
                                  <label>Sort By</label>
                                  <div class="select-new">
                                    <div class="select-inner">
                                      <select onchange="">
                                        <option value="http://demo.magentech.com/themes/sm_love_fashion/mens//cat/clothing/manufacturer/duresta.html?dir=asc&amp;order=position" selected="selected">
                                          Position</option>
                                        <option value="http://demo.magentech.com/themes/sm_love_fashion/mens//cat/clothing/manufacturer/duresta.html?dir=asc&amp;order=name">Name</option>
                                        <option value="http://demo.magentech.com/themes/sm_love_fashion/mens//cat/clothing/manufacturer/duresta.html?dir=asc&amp;order=price">Price</option>
                                      </select>
                                    </div>
                                  </div>
                                  <a class="btn-sortby set-desc arrow-down"
                                    href="http://demo.magentech.com/themes/sm_love_fashion/mens//cat/clothing/manufacturer/duresta.html?dir=desc&amp;order=position" title="Set Descending Direction">Desc</a>
                                </div>
                              </div>
                              <div class="pagination-wrap">
                                <div class="pagination">
                                  <div class="pages">
                                    <ol>
                                      <c:if test="${currentPage != 1}">
                                        <li><a class="previous i-previous" href="${url}&page=${currentPage - 1}" title="Previous">Prev</a></li>
                                      </c:if>
                                      <c:forEach var="item" begin="1" end="${totalPage}">
                                        <c:if test="${currentPage == item}">
                                          <li class="current"><a href="#" onclick="javascript:void(0);">${item}</a></li>
                                        </c:if>
                                        <c:if test="${currentPage != item}">
                                          <li class=""><a href="${url}&page=${item}">${item}</a></li>
                                        </c:if>
                                      </c:forEach>
                                      <c:if test="${currentPage != page}">
                                        <li><a class="next" href="${url}&page=${currentPage + 1}" title="Previous">Next</a></li>
                                      </c:if>
                                    </ol>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </c:if>
                <div id="map-popup" class="map-popup" style="display: none;">
                  <a href="#" class="map-popup-close" id="map-popup-close">x</a>
                  <div class="map-popup-arrow"></div>
                  <div class="map-popup-heading">
                    <h2 id="map-popup-heading"></h2>
                  </div>
                  <div class="map-popup-content" id="map-popup-content">
                    <div class="map-popup-checkout">
                      <form action="" method="POST" id="product_addtocart_form_from_popup">
                        <input type="hidden" name="product" class="product_id" value="" id="map-popup-product-id">
                        <div class="additional-addtocart-box"></div>
                        <button type="button" title="Add to Cart" class="button btn-cart" id="map-popup-button">
                          <span><span>Add to Cart</span></span>
                        </button>
                      </form>
                    </div>
                    <div class="map-popup-msrp" id="map-popup-msrp-box">
                      <strong>Price:</strong> <span style="text-decoration: line-through;" id="map-popup-msrp"></span>
                    </div>
                    <div class="map-popup-price" id="map-popup-price-box">
                      <strong>Actual Price:</strong> <span id="map-popup-price"></span>
                    </div>
                  </div>
                  <div class="map-popup-text" id="map-popup-text">
                    Our price is lower than the manufacturer's "minimum advertised price." As a result, we cannot show you the price in catalog or the product page. <br> <br> You have no
                    obligation to purchase the product once you know the price. You can simply remove the item from your cart.
                  </div>
                  <div class="map-popup-text" id="map-popup-text-what-this">
                    Our price is lower than the manufacturer's "minimum advertised price." As a result, we cannot show you the price in catalog or the product page. <br> <br> You have no
                    obligation to purchase the product once you know the price. You can simply remove the item from your cart.
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
</body>
</html>