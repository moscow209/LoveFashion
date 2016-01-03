<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="format-detection" content="telephone=no">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Search</title>
<meta name="description" content="Page description" />
<meta name="keywords" content="Page keywords" />
<meta name="robots" content="INDEX,FOLLOW" />
<link rel="icon" href="resources/images/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="resources/images/favicon.ico" type="image/x-icon" />
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
<link rel="stylesheet" type="text/css" href="/resources/css/quickview/style.css" media="all">
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
<!-- Login -->
<script type="text/javascript">
    //<![CDATA[
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
    //]]>
</script>
<!-- Search -->
<script type="text/javascript">
    //<![CDATA[
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
    //]]>
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
                <div id="layered-navigation">
                  <div class="block block-layered-nav">
                    <div class="block-title">
                      <strong><span>Shop By</span></strong>
                    </div>
                    <!-- <div class="currently">
                      <p class="block-subtitle">Currently Shopping by:</p>
                      <ol>
                        <li>
                          <span class="value">Dresses</span> <a class="btn-remove icon-remove"
                          href="http://demo.magentech.com/themes/sm_love_fashion/womens.html" title="Remove This Item"></a>
                        </li>
                      </ol>
                      <div class="actions">
                        <a href="http://demo.magentech.com/themes/sm_love_fashion/womens.html">Clear All</a>
                      </div>
                    </div> -->
                    <div class="block-content">
                      <dl id="narrow-by-list">
                        <dt class="Price even">Price</dt>
                        <dd class="even">
                          <div class="price-wrapper-shopby">
                            <div class="title-price">
                              <h2>By Price</h2>
                            </div>
                            <div id="price-filter" class="price_filter">
                              <span id="price-filter-min" class="price-from selected" title="Minimum value" style="left: 0px;"></span> <span id="price-filter-max" class="price-to"
                                title="Maximum value" style="left: 236px;"></span>
                            </div>
                            <ul>
                              <li><span class="sp-left"><span>$</span><span id="price-filter-min-display">
                                <c:if test="${not empty min }">
                                    ${min}
                                </c:if>
                                <c:if test="${empty min }">
                                    0
                                </c:if>
                              </span></span> <span class="sp-right"><span>$</span><span
                                  id="price-filter-max-display">
                                  <c:if test="${not empty max }">
                                    ${max}
                                </c:if>
                                <c:if test="${empty max }">
                                    200
                                </c:if>
                              </span></span></li>
                            </ul>
                            <script type="text/javascript">
                            function priceEvent(val) {
                                if (val) {
                                    var temp = "&price=" + min + "-" + max;
                                    var url = window.location.href;
                                    if(url.indexOf("price") != -1)
                                        url = url.replace(temp, "&price=" + val);
                                    else{
                                        if(url.indexOf("?") != -1){
                                            url = url + "&price=" + val;
                                        } else {
                                            url = url + "?&price=" + val;
                                        }
                                    }
                                    window.location.href = url;
                                }
                            }
                            
                            maxPrice = 200;
                            minPrice = 0;
                            timerSlider = null;
                            min = 0;
                            max = 200;
                            <c:if test="${not empty min}">
                               min = ${min};
                            </c:if>
                            <c:if test="${not empty max}">
                               max = ${max};
                            </c:if>
                            new Control.Slider([$('price-filter-min'), $('price-filter-max') ], 'price-filter',{
                                range : $R(minPrice, maxPrice),
                                sliderValue : [min,max],
                                values : $R(minPrice, maxPrice),
                                restricted : true,
                                onChange : function(val) {
                                    if (val[0] != 125 || val[1] != 5568) {
                                        if (timerSlider) {
                                            clearTimeout(timerSlider);
                                        }
                                        timerSlider = setTimeout(priceEvent, 1000, val.join('-'));
                                       
                                    }
                                },
                                onSlide : function(val) {
                                    $('price-filter-max-display').innerHTML = val[1];
                                    $('price-filter-min-display').innerHTML = val[0];
                                }
                            });
                            </script>
                          </div>
                        </dd>
                        <dt class="Size odd">Size</dt>
                        <dd class="odd">
                          <ol>
                            <li title="size"><a <c:if test="${not empty listSize['XS']}">class="checked"</c:if> href="#">XS</a></li>
                            <li title="size"><a <c:if test="${not empty listSize['S']}">class="checked"</c:if> href="#">S</a></li>
                            <li title="size"><a <c:if test="${not empty listSize['M']}">class="checked"</c:if> href="#">M</a></li>
                            <li title="size"><a <c:if test="${not empty listSize['L']}">class="checked"</c:if> href="#">L</a></li>
                            <li title="size"><a <c:if test="${not empty listSize['XL']}">class="checked"</c:if> href="#">XL</a></li>
                          </ol>
                        </dd>
                        <dt class="Color last even">Color</dt>
                        <dd class="last even">
                          <ol>
                            <li class="Black" title="color"><a <c:if test="${not empty listColor['Black']}">class="checked"</c:if> href="javascript:void(0)">Black</a></li>
                            <li class="Blue" title="color"><a <c:if test="${not empty listColor['Blue']}">class="checked"</c:if> href="javascript:void(0)">Blue</a></li>
                            <li class="Red" title="color"><a <c:if test="${not empty listColor['Red']}">class="checked"</c:if> href="javascript:void(0)">Red</a></li>
                            <li class="Yellow" title="color"><a <c:if test="${not empty listColor['Yellow']}">class="checked"</c:if> href="javascript:void(0)">Yellow</a></li>
                            <li class="Orange" title="color"><a <c:if test="${not empty listColor['Orange']}">class="checked"</c:if> href="javascript:void(0)">Orange</a></li>
                            <li class="Gray" title="color"><a <c:if test="${not empty listColor['Gray']}">class="checked"</c:if> href="javascript:void(0)">Gray</a></li>
                            <li class="Green" title="color"><a <c:if test="${not empty listColor['Green']}">class="checked"</c:if> href="javascript:void(0)">Green</a></li>
                            <li class="Purple" title="color"><a <c:if test="${not empty listColor['Purple']}">class="checked"</c:if> href="javascript:void(0)">Purple</a></li>
                          </ol>

                          <script>
                          jQuery(document).ready(function($) {
                                $("#narrow-by-list ol li a").click(function() {
                                    var url = window.location.href;
                                    $(this).toggleClass('checked');
                                    var q = $(this).parent().attr("title");
                                    var k = $(this).text();
                                    if($(this).hasClass("checked")){
                                          if(url.indexOf("?") == -1){
                                              url = url + "?" + q + "=" + k;
                                          } else{
                                              url = url + "&" + q + "=" + k;
                                          }                                   
                                    } else {
                                        var temp = "&" + q + "=" + k;
                                        url = url.replace(temp, "");
                                    }
                                    window.location.href = url;
                                });
                          });
                          </script>
                        </dd>
                      </dl>
                    </div>
                  </div>
                </div>
                <div class="block left-image">
                  <div class="block-content">
                    <a title="Left Static Image" href="#"><img src="http://demo.magentech.com/themes/sm_love_fashion/media/wysiwyg/left-static-image.png" alt="Left Static Image"></a>
                  </div>
                </div>
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
                  <h1>Lists</h1>
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
                <div id="loading" style="display: none; margin-bottom: 10px; text-align: center;">
                  <img class="v-middle" alt="" src="http://demo.magentech.com/themes/sm_love_fashion/skin/frontend/sm_lovefashion/default/images/loader-shopby.gif"> Loading, please wait...
                </div>
                <c:if test="${empty lists}">
                    <p>${message}<p>
                </c:if>
                <c:if test="${not empty lists}">
                <div id="catalog-listing">
                  <div class="category-products">
                    <div class="toolbar-top">
                      <div class="toolbar">
                        <div class="toolbar-inner">
                          <div class="sorter">
                            <div class="view-mode-wrap">
                              <p class="view-mode">
                                <!--<label>View as:</label>-->
                                <strong title="Grid" class="grid">Grid</strong>&nbsp; <a href="http://demo.magentech.com/themes/sm_love_fashion/womens.html?mode=list" title="List" class="list">List</a>&nbsp;
                              </p>
                            </div>
                            <div class="limiter-wrap">
                              <div class="limiter">
                                <label>Show</label>
                                <div class="select-new">
                                  <div class="select-inner">
                                    <div class="selector" style="width: 89px;">
                                      <span style="width: 74px; -webkit-user-select: none;"> 12 </span><select onchange="" class="jqtransformdone">
                                        <option value="#" selected="selected">12</option>
                                        <option value="#">18</option>
                                        <option value="#">24</option>
                                      </select>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <div class="sort-by-wrap">
                              <div class="sort-by">
                                <label>Sort By</label>
                                <div class="select-new">
                                  <div class="select-inner">
                                    <div class="selector" style="width: 135px;">
                                      <span style="width: 120px; -webkit-user-select: none;"> Position </span><select onchange="" class="jqtransformdone">
                                        <option value="#" selected="selected">Position</option>
                                        <option value="#">Name</option>
                                        <option value="#">Price</option>
                                      </select>
                                    </div>
                                  </div>
                                </div>
                                <a class="btn-sortby set-desc arrow-down" href="#"
                                  title="Set Descending Direction">Desc</a>
                              </div>
                            </div>
                            <div class="pagination-wrap">
                              <div class="pagination">
                                <div class="pages">
                                  <ol>
                                    <c:if test="${currentPage != 1}">
                                        <li><a class="previous i-previous" href="${url}&page=${currentPage - 1}" title="Previous">Prev</a></li>
                                    </c:if>
                                    <c:forEach var="item" begin="1" end="${page}">
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
                        <c:forEach var="item" items="${lists}" begin="${(currentPage - 1)*12}" end="${currentPage*12 - 1}">
                          <div class="item col-lg-4 col-md-4 col-sm-6 col-xs-6 respl-item">
                            <div class="item-inner">
                              <div class="w-image-box">
                                <div class="item-image">
                                  <div class="img-wrapper">
                                    <a class="rspl-image" href="/detail/${item.id}" title="Kaze dama pisa "> <img class="first_image" src="/resources/images/products/${item.listImage[0]}" height="270" width="270">
                                      <img class="last_image" src="/resources/images/products/${item.listImage[1]}" height="270" width="270">
                                    </a>
                                  </div>
                                  <a class="sm_quickview_handler" title="Quick View" href="#">Quick View</a>
                                </div>
                                <c:if test="${item.sale}">
                                  <div class="sale-item">Sale</div>
                                </c:if>
                                <c:if test="${item.news}">
                                  <div class="new-product">New</div>
                                </c:if>
                              </div>
                              <div class="item-info">
                                <div class="item-title ">
                                  <a href="/detail/${item.id}">${item.name}</a>
                                </div>
                                <div class="item-price special-box">
                                  <div class="price-box">
                                    <p class="special-price">
                                      <span class="price-label">Regular Price:</span> <span class="price" id="old-price-912"> $<fmt:formatNumber type="number"
                                          pattern="0.000" value="${item.price}" />
                                      </span>
                                    </p>
                                    <c:if test="${item.sale}">
                                      <p class="old-price">
                                        <span class="price-label">Special Price</span> <span class="price" id="product-price-912">$<fmt:formatNumber type="number"
                                          pattern="0.000" value="${item.specialPrice}" /></span>
                                      </p>
                                    </c:if>
                                  </div>
                                </div>
                                <div class="item-addto-wrap">
                                  <div class="button-action item-addcart">
                                    <a class="button btn-cart" title="Add to Cart" href="javascript:void(0);"> Add to Cart </a> 
                                    <a class="link-compare" href="#" title="Add to Compare"> Add to Compare </a>
                                    <a class="link-wishlist" href="#">Add to Wishlist</a>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </c:forEach>
                      </div>
                    </div>
                  </div>
                  <div class="toolbar-bottom">
                    <div class="toolbar">
                      <div class="toolbar-inner">
                        <div class="sorter">
                          <div class="view-mode-wrap">
                            <p class="view-mode">
                              <!--<label>View as:</label>-->
                              <strong title="Grid" class="grid">Grid</strong>&nbsp; <a href="http://demo.magentech.com/themes/sm_love_fashion/womens.html?mode=list" title="List" class="list">List</a>&nbsp;
                            </p>
                          </div>
                          <div class="limiter-wrap">
                            <div class="limiter">
                              <label>Show</label>
                              <div class="select-new">
                                <div class="select-inner">
                                  <div class="selector" style="width: 89px;">
                                    <span style="width: 74px; -webkit-user-select: none;"> 12 </span><select onchange="" class="jqtransformdone">
                                      <option value="#" selected="selected">12</option>
                                      <option value="#">18</option>
                                      <option value="#">24</option>
                                    </select>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="sort-by-wrap">
                            <div class="sort-by">
                              <label>Sort By</label>
                              <div class="select-new">
                                <div class="select-inner">
                                  <div class="selector" style="width: 135px;">
                                    <span style="width: 120px; -webkit-user-select: none;"> Position </span><select onchange="" class="jqtransformdone">
                                      <option value="#">Position</option>
                                      <option value="#">Name</option>
                                      <option value="#">Price</option>
                                    </select>
                                  </div>
                                </div>
                              </div>
                              <a class="btn-sortby set-desc arrow-down" href="#" title="Set Descending Direction">Desc</a>
                            </div>
                          </div>
                          <div class="pagination-wrap">
                            <div class="pagination">
                              <div class="pages">
                                <ol>
                                  <c:if test="${currentPage != 1}">
                                        <li><a class="previous i-previous" href="${url}&page=${currentPage - 1}" title="Previous">Prev</a></li>
                                    </c:if>
                                    <c:forEach var="item" begin="1" end="${page}">
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
                </c:if>
              </div>
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
  <script type="text/javascript">
      var iprocess='<div id="loadmask"><p class="loader">' + 
         '<img alt="Loading..." src="http://demo.magentech.com/themes/sm_love_fashion/skin/frontend/sm_lovefashion/default/sm/cartpro/images/ajax-loader-tr.gif"><br>Please wait...</p></div>';
  
      $jsmart(document).ready(function($) {
          $('.btn-cart').click(function(){
              /*  $("#fancybox-wrap-clone").css("display", "none");
               $("#process").html(iprocess);
               $("#process").css("display", "block");
               $("#options").css("display", "block");
               fixcenter(); */
               var sku = $(this).parent().find("input").val();
               var jsonp = '{"sku": "' + sku + '"}'; 
               $.ajax({
                   type : "POST",
                   contentType : "application/json",
                   url : "/cartpro/index/add",
                   data : jsonp,
                   dataType : 'json',
                   timeout : 10000,
                   success : function(data) {
                       console.log("SUCCESS: ", data);
                       updateCartView(data);
                       alert("Added product in cart");
                   },
                   error : function(e) {
                       console.log("ERROR: ", e);
                   },
                   done : function(e) {
                       console.log("DONE");
                   }
               });
           });
          
          function updateCartView(data){
               if(data.index != -1){
                   $('.bottom-cart .price').text("$" + data.total + ",000");
                   $('.price-total-w .price').text("$" + data.total + ",000");
                   $('#minicart-sidebar li:eq(' + data.index + ') .qty-w .qty-b').text(data.qty);
               } else{
                   var item = $('#minicart-sidebar li').size();
                   var isOdd = false;
                   if(item % 2 == 0){
                       isOdd = true;
                   }
                   var html = "<li class='item last";
                   if(isOdd){
                       html = html + " odd'>";
                   } else {
                       html = html + " even'>";
                   }
                   var n = $('#minicart-sidebar li').length;
                   html = html + '<div class="product-details" style="margin-bottom: 20px;"><p class="product-name">';
                   html = html + '<a title="' + data.name + '" href="#">' + data.name + '</a>';
                   html = html + '<a href="javascript:void(0)" title="Remove  This  Item" onclick="showClick(' + n + ')" class="btn-remove">Remove</a></p></div>';
                   html = html + '<span class="price">$' + data.price + ',000</span>' + '<span class="qty-w"> <span class="label-qty">Qty: </span><span class="qty-b">';
                   html = html + data.qty + '</span></span></li>';
                   $('#minicart-sidebar').append(html);
                   $('.cart-icon .amount-i').text(data.item);
                   $('.bottom-cart .price').text("$" + data.total + ",000");
                   $('.price-total-w .price').text("$" + data.total + ",000");
                   n = $('#minicart-sidebar li').length;
                   if (n > 0) {
                       $('.mini-cartpro  .block-title').addClass('hv_btnCart');
                   }
               }
           };
      });


      function showClick(index){
          var result = confirm("Are  you  sure  you  would  like  to  remove  this  item  from  the  shopping  cart?");
          if(result){
              jQuery('#minicart-sidebar li:eq(' + index + ')').remove();
              jQuery.ajax({
                  type : "POST",
                  url : "/cartpro/index/delete/" + index,
                  timeout : 10000,
                  success : function(data) {
                      if(data.indexOf("-") != -1){
                          var splits = data.split("-");
                          jQuery('.cart-icon .amount-i').text(splits[1]);
                          var format = splits[0].split(".");
                          jQuery('.bottom-cart .price').text("$" + format[0] + ",000");
                          jQuery('.price-total-w .price').text("$" + format[0] + ",000");
                          var n = jQuery('#minicart-sidebar li').length;
                          if (n <= 0) {
                              jQuery('.mini-cartpro  .block-title').removeClass('hv_btnCart');
                          }
                      }
                  },
                  error : function(e) {
                      console.log("ERROR: ", e);
                  },
                  done : function(e) {
                      console.log("DONE");
                  }
              });
          } else{
              return false;
          }
      };

  </script>
</body>
</html>