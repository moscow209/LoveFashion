<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="format-detection" content="telephone=no">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Details</title>
<meta name="description" content="Page description" />
<meta name="keywords" content="Page keywords" />
<meta name="robots" content="INDEX,FOLLOW" />
<link rel="icon" href="resources/images/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="resources/images/favicon.ico" type="image/x-icon" />
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
<link rel="stylesheet" type="text/css" href="/resources/css/swatches.css" media="print">
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
<style type="text/css">
.swatch-attribute-label {
    font-weight: bold;
    position: relative;
}

.swatch-attribute-label.required {
    padding-right: 10px;
}

.swatch-attribute-label[data-required="1"]:after {
    content: '*';
    color: red;
    position: absolute;
    right: -11px;
    top: -2px;
    font-weight: bold;
    font-size: 1em;
}

.swatch-option:HOVER {
    outline: 2px solid #FF5100;
    border: 1px solid #fff;
    color: #333;
}

.swatch-attribute-selected-option {
    color: #646464;
    padding-left: 17px;
}

.swatch-attribute-options {
    margin-top: 10px;
}

.swatch-option {
    /*width: 30px;*/
    padding: 1px 2px;
    min-width: 30px;
    max-width: 90px;
    height: 20px;
    float: left;
    margin: 0 10px 5px 0;
    text-align: center;
    cursor: pointer;
    position: relative;
    border: 1px solid rgb(218, 218, 218);
    overflow: hidden;
    text-overflow: ellipsis;
}

.swatch-option.text {
    background: #F2F2F2;
    color: #7F7F7F;
    font-size: 12px;
    font-weight: 700;
    line-height: 20px;
    /* padding: 4px 8px; */
    min-width: 30px;
    min-height: 25px;
    margin-right: 7px;
    /*background-color: #F2F2F2;*/
}

.swatch-option.selected {
    outline: 2px solid #FF5100;
    border: 1px solid #fff;
    color: #333;
}

.swatch-option.text.selected {
    background-color: #FFF !important;
}

</style>
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
    <!-- BEGIN: content -->
    <div id="yt_content" class="yt-content wrap">
      <div id="yt_main" class="yt-main col-main ">
        <div class="yt_main_inner yt-content-inner">
          <div class="container">
            <div class="row">
              <div class="">
                <div class="col-md-12">
                  <div id="messages_product_view"></div>
                  <div class="yt-product-detail">
                    <div class="yt-product-detail-inner">
                      <div class="product-essential">
                        <div class="row">
                          <div class="col-md-9">
                            <form action="#" method="post" id="product_addtocart_form">
                              <div class="row">
                                <div class="yt-detail-left col-md-4-view col-md-6 col-sm-6">
                                  <div class="product-img-box">
                                    <div class="yt-detail-image zoom-wrapper-detail">
                                      <div class="product-image product-image-zoom">
                                        <div class="product-image-zoom">
                                          <div id="wrap" style="top: 0px; z-index: 9999; position: relative;">
                                            <a id="yt_cloudzoom" class="cloud-zoom" rel="zoomWidth:300, zoomHeight:300, adjustX: 20, adjustY: -3" title="Viel pharetra luctus"
                                              href="/resources/images/products/${product.image}" style="position: relative; display: block;"> <img id="image"
                                              src="/resources/images/products/${product.image}" alt="Viel pharetra luctus" title="Viel pharetra luctus" style="display: block;">
                                            </a>
                                            <div class="mousetrap"
                                              style="z-index: 999; position: absolute; width: 370px; height: 370px; left: 0px; top: 0px; cursor: move;"></div>
                                          </div>
                                          <div class="popup-btn  hidden-phone product-image-gallery">
                                            <c:forEach var="item" items="${product.listImages}" varStatus="status">
                                              <c:if test="${status.index != 0}">
                                                <a style="display: none;" class="fancybox-button fancybox-image-hidden " data-fancybox-group="button" href="/resources/images/products/${item}"> </a>
                                              </c:if>
                                              <c:if test="${status.index == 0 }">
                                                <a id="yt_popup" class="fancybox-button" data-fancybox-group="button" href="/resources/images/products/${item}"> Zoom </a>
                                              </c:if>
                                            </c:forEach>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="more-views slide-gallery">
                                      <div class="more-images">
                                        <div class="jCarouselLite" style="visibility: visible; overflow: hidden; position: relative; z-index: 2; left: 0px; width: 376px;">
                                          <ul style="margin: 0px; padding: 0px; position: relative; list-style-type: none; z-index: 1; width: 1316px; left: -376px;">
                                            <c:forEach var="item" items="${product.listImages}">
                                              <li style="width: 85px; height: 85px; overflow: hidden; float: left;"><a
                                                onclick="$$('.cloud-zoom-gallery').each(function(e,i){e.removeClassName('actived');});this.addClassName('actived')" class="cloud-zoom-gallery"
                                                rel="useZoom: 'yt_cloudzoom', smallImage: '/resources/images/products/${item}'" href="/resources/images/products/${item}" title=""> <img
                                                  src="/resources/images/products/${item}" style="width: 85px; height: 85px">
                                              </a></li>
                                            </c:forEach>
                                          </ul>
                                        </div>
                                        <c:if test="${product.listImages.size() > 4}">
                                          <span class="next"></span>
                                          <span class="prev"></span>
                                        </c:if>
                                      </div>
                                    </div>
                                    <script type="text/javascript">
                                    function init() {
                                        device = $jsmart.fn.detectDevice();
                                        number_visible = 4;
                                        if (device == "mobile" || device == "tablet"
                                                || device == "normal") {
                                            number_visible = 3;
                                        }

                                        $jsmart(".jCarouselLite").jCarouselLite({
                                        	   btnNext : ".more-views .next",
                                        	    btnPrev : ".more-views .prev",
                                        	    visible : number_visible,
                                        	    start : 0,
                                        	    circular : true,
                                        	    speed : 300,
                                            });
                                    }
                                    init();
									</script>

                                    <script type="text/javascript">
                                    $jsmart(document).ready(function($) {
                                        function init() {
                                            $('.cloud-zoom, .cloud-zoom-gallery').CloudZoom();
                                            $('.fancybox-image-hidden').each(function() {
                                                attr = $(this).attr('href');
                                                href_current = $('a#yt_popup').attr('href');
                                                if (attr == href_current) {
                                                    $(this).removeClass("fancybox-button");
                                                }
                                            });

                                            $('a.cloud-zoom-gallery').bind('click',function() {
                                                $('a#yt_popup').attr('href',$(this).attr('href'));
                                            $('.fancybox-image-hidden').addClass("fancybox-button");
                                            $('.fancybox-image-hidden').each(function() {
                                                attr = $(this).attr('href');
                                                href_current = $('a#yt_popup').attr('href');
                                                if (attr == href_current) {
                                                    $(this).removeClass("fancybox-button");
                                                }
                                                });
                                            });

                                            $(".fancybox-button").fancybox({
                                                padding : 0,
                                                prevEffect : 'none',
                                                nextEffect : 'none',
                                                closeBtn : true,
                                                closeClick : true,
                                                nextClick : true,
                                                mouseWheel : false,
                                                helpers : {
                                                    title : true,
                                                    buttons : {}
                                                },
                                                afterLoad : function() {
                                                    this.title = 'Image ' + (this.index + 1) + ' of ' + this.group.length + (this.title ? ' - '+ this.title: '');
                                                }
                                            });

                                        }
                                        e = $(".yt-detail-image"),
                                        ehtml = e.html(),
                                        id = '',
                                        init();
                                        $(window).resize(function() {
                                            if (id)
                                                clearTimeout(id);
                                            id = setTimeout(function() {
                                                e.children().empty().remove();
                                                e.html(ehtml);
                                                init();
                                            },300);
                                        });
                                        $('.jCarouselLite ul li a').each(function() {
                                            if ($(this).hasClass('actived')) {
                                                $(this).parent().addClass('selected');
                                            }
                                        });

                                        $('.jCarouselLite ul li a').click(function() {
                                            $this = $(this);
                                            $('.jCarouselLite ul li a').parent().removeClass('selected');
                                            if ($this.hasClass('actived')) {
                                                $this.parent().addClass('selected');
                                            }
                                        }); 
                                    });
                                    </script>
                                  </div>
                                </div>
                                <div class="yt-detail-right col-md-5-view col-md-6 col-sm-6">
                                  <div class="product-shop">
                                    <h1 class="product-name">${product.name}</h1>
                                    <div class="price-box">
                                      <span class="regular-price" id="product-price-894"> <span class="price">$<fmt:formatNumber type="number"
                                          pattern="0.000" value="${product.price}" /></span>
                                      </span>
                                    </div>
                                    <p class="availability in-stock">Availability: 
                                        <c:if test="${product.status}">
                                            <span>In stock</span>
                                        </c:if>
                                        <c:if test="${!product.status}">
                                            <span>Out stock</span>
                                        </c:if>
                                    </p>
                                    <div class="short-description">Fusce porttitor at ante eu egestas. Morbi vulputate diam at nibh imperdiet pretium. Nulla euismod, nibh nec tincidunt maximus,
                                      elit sem ornare nunc, et dictum elit dui sed justo. Donec scelerisque, erat vel pharetra luctus, nibh tortor efficitur nibh, non euismod leo diam ut risus.</div>
                                    <fieldset class="no-display">
                                      <input type="hidden" name="id" value="${product.id}" />
                                      <input type="hidden" name="name" value="${product.name}" />
                                      <input type="hidden" name="color" />
                                      <input type="hidden" name="size" />
                                      <input type="hidden" name="sku" value="${product.sku}" />
                                    </fieldset>
                                    <div class="product-options-wrapper" id = "product-options-wrapper">
                                        <div class="fieldset" tabindex="0">
                                            <div class="swatch-opt">
                                                <div class="swatch-attribute color" attribute-code="color" attribute-id="90" option-selected="58">
                                                    <span class="swatch-attribute-label">Color</span>
                                                    <span class="swatch-attribute-selected-option color-value"></span>
                                                    <div class="swatch-attribute-options clearfix">
                                                    <c:forEach var="item" items="${product.color}" varStatus="status">
                                                        <div class="swatch-option color" option-type="1" option-id="${item.key}" option-label="${item.value}" option-tooltip-thumb="" 
                                                            option-tooltip-value="#53a828" "=""style="background: ${item.value} no-repeat center; background-size: initial;"></div>
                                                    </c:forEach>
                                                    </div>
                                                    <input class="swatch-input" name="super_attribute[90]" value="" data-validate="{required:true}" aria-required="true" aria-invalid="true" style="visibility: hidden; position:absolute; left:-1000px"></div>
                                                    <div class="swatch-attribute size" attribute-code="size" attribute-id="137">
                                                       <span class="swatch-attribute-label">Size</span>
                                                       <span class="swatch-attribute-selected-option size-value"></span>
                                                       <div class="swatch-attribute-options clearfix">
                                                         <c:forEach var="item" items="${product.size}" varStatus="status">
                                                            <div class="swatch-option text" option-type="0" option-id="${item.key}" option-label="${item.value}" option-tooltip-thumb="" option-tooltip-value="XS">${item.value}</div>
                                                         </c:forEach>
                                                        </div>
                                                        <input class="swatch-input" name="super_attribute[137]" value="" data-validate="{required:true}" aria-required="true" aria-invalid="true" style="visibility: hidden; position:absolute; left:-1000px">
                                                    </div>
                                             </div>
                                        </div>
                                    </div>
                                    <div class="add-to-box">
                                      <div class="wrap-qty">
                                        <div class="qty-title">
                                          <span>Qty:</span>
                                        </div>
                                        <div class="qty-set">
                                          <span class="quantity-box"> <input type="hidden" name="proId" id="proId" value="894" /> <input type="text" name="qty" id="qty" maxlength="12"
                                            value="1" title="Qty" class="quantity-input qty" /> <input type="hidden" id="qty_stock" name="qty_stock" value="4" /> <input type="hidden"
                                            id="max_qty_stock" name="max_qty_stock" value="10000" /> <input type="hidden" id="min_qty_stock" name="min_qty_stock" value="1" />
                                          </span>
                                        </div>
                                      </div>
                                      <div class="add-to-cart">
                                        <button type="button" title="Add to Cart" class="button btn-cart btn-cart-single">
                                          <span><span>Add to Cart</span></span>
                                        </button>
                                      </div>
                                      <a
                                        href="#" class="link-compare" title="Add to Compare">Add to Compare</a> <a
                                        href="#" onclick="productAddToCartForm.submitLight(this, this.href); return false;" class="link-wishlist" title="Add to Wishlist">Add to Wishlist</a>
                                    </div>
                                    
                                  </div>
                                  <div class="clearer"></div>
                                </div>
                              </div>
                            </form>
                            <div class="row">
                              <div id="yt_tab_products" class="col-md-12 tab-product-detail">
                                <ul class="yt-tab-navi clearfix">
                                  <li class="first"><a href="javascript:void(0)">Description</a></li>
                                  <li class="active"><a href="javascript:void(0)">More Information</a></li>
                                  <li class="last"><a href="javascript:void(0)">Comments</a></li>
                                </ul>
                                <div class="yt-tab-content">
                                  <div id="yt_tab_decription" style="display: none;">
                                    <!-- h2></h2-->
                                    <div class="std">
                                      <p>${product.description}</p>
                                    </div>
                                  </div>
                                  <div id="yt_tab_more" style="display: block;">
                                        <p>This is CMS Block.</p>
                                    <p>
                                      To add this Custom Tab, please go to <strong>CMS</strong> -&gt; <strong>Static Blocks,</strong> create new Block with this information:
                                    </p>
                                    <p>+ Block Title: Custom Tab</p>
                                    <p>
                                      +&nbsp;Identifier:&nbsp;<strong>custom-tab</strong>
                                    </p>
                                    <p>+ Status: Enable</p>
                                    <p>
                                      +&nbsp;<span>Content : Enter your description</span>
                                    </p>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="categories-view col-md-3">
                            <div class="list-categories">
                              <script type="text/javascript">
                              $jsmart(document).ready(function($) {
                                  $('#yt_sidenav li.level0 > a').addClass('subhead');
                                  $('#yt_sidenav li.level0 > a').after('<a href="#" title="" class="toggle">&nbsp;</a>'); //header 
                                  var speed = 200;
                                  $('#yt_sidenav li ul li').has('ul').append('<span class="touch-item">open</span>');
                                  $('.touch-item').click(function() {
                                      $(this).prev().slideToggle(speed);
                                      $(this).toggleClass('change');
                                      $(this).prev().prev().toggleClass('parentNote');
                                  });
                                  // second simple accordion with special markup
                                  $jsmart('#yt_sidenav').accordion({
                                      active : '.active',
                                      header : '.toggle', // same header above
                                      navigation : true,
                                      event : 'click',
                                      fillSpace : false,
                                      autoheight : false,
                                      alwaysOpen : false,
                                      animated : 'easeslide',
                                      collapsible : false
                                  });

                                  //check if headerId is set, if so activate that id
                                  if ($jsmart("#yt_sidenav .level2 .current").parents('.parent').length) {
                                      var header_element = $jsmart("#yt_sidenav .level2 .current").parents('.parent').children('a.toggle');
                                      $jsmart('#yt_sidenav').accordion('activate',header_element);
                                  }

                              });
                              </script>
                              <div class="block block-right-nav block-yt-layered-nav">
                                <div class="block-layered-nav-inner">
                                  <div class="block-title">
                                    <strong> <span>Categories</span>
                                    </strong>
                                  </div>
                                  <div class="block-content clearfix">
                                    <ul id="yt_sidenav" class="dropdow-nav">
                                      <li class="level0 nav-1"><a href="#"> <span>Home</span>
                                      </a></li>
                                      <c:forEach var="level1" items="${categories.subCategories}">
                                          <li class="level0 nav-2 parent" onmouseover="toggleMenu(this,1)" onmouseout="toggleMenu(this,0)"><a
                                              href="/categories/${level1.entityId}"> <span>${level1.name}</span>
                                          </a>
                                          <ul class="level0">
                                          <c:forEach var="level2" items="${level1.subCategories}" varStatus="lv2Status">
                                                <li class="level1 nav-2-1 first parent" onmouseover="toggleMenu(this,1)" onmouseout="toggleMenu(this,0)"><a
                                                    href="/categories/${level2.entityId}"> <span>${level2.name}</span>
                                                    </a>
                                                    <ul class="level1">
                                                        <c:forEach var="level3" items="${level2.subCategories}">
                                                            <li class="level2 nav-2-1-1 first"><a href="/categories/${level3.entityId}" title="Cocktail">${level3.name}</a></li>
                                                        </c:forEach>
                                                    </ul>
                                                </li>
                                          </c:forEach>
                                         </ul>
                                       </li>
                                      </c:forEach>     
                                      <li class="level0 nav-6"><a href="#"> <span>About Us</span>
                                      </a></li>
                                      <li class="level0 nav-7"><a href="#"> <span>Contact Us</span>
                                      </a></li>
                                    </ul>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <div id="myCarousel" class="block block-related carousel slide" data-interval="0">
                                <div class="related-header">
                                    <div class="block-title">
                                        <strong><span>Related Products</span></strong>
                                    </div>
                                    <ul class="related-page carousel-indicators">
                                        <c:if test="${product.relatives.size() != 0}">
                                            <c:forEach var="item" begin="0" end="${product.numPageRelative - 1}">
                                                <li data-target="#myCarousel" data-slide-to="${item}" <c:if test="${item == 0}">class="active" </c:if>></li>
                                            </c:forEach>
                                        </c:if>
                                    </ul>
                                </div>  
                            <div class="left-product-base block-content">
                            <div class="list-items">
                                <div class="products-grid mini-products-list carousel-inner" id="block-related">
                                    <c:if test="${product.relatives.size() != 0}">
                                    <c:forEach var="item" begin="0" end="${product.numPageRelative - 1}">
                                        <div class='item<c:if test="${item == 0}"> active</c:if>'>
                                            <c:forEach var="relative" items="${product.relatives}" begin="${item * 3}" end="${(item + 1)*3 -1}">
                                                <div class="item-inner sub-item" style="height: 84px">
                                                    <div class="product-image">
                                                        <a href="/detail/${relative.id}" title="Xemi irem masen ">
                                                            <img style="width: 84px; height: 84px" src="/resources/images/products/${relative.image}" alt="Xemi irem masen "> 
                                                        </a>
                                                    </div>
                                                    <div class="item-box-content">
                                                        <div class="product-name">
                                                            <a href="/detail/${relative.id}" title="Xemi irem masen "> ${relative.name} </a>
                                                        </div>
                                                        <div class="price-wrapper">
                                                            <div class="price-block">
                                                                <div class="price-box">
                                                                    <c:if test="${relative.sale == 1}">
                                                                        <p class="old-price">
                                                                            <span class="price-label">Regular Price:</span>
                                                                            <span class="price" id="old-price-901">$<fmt:formatNumber type="number" pattern="0.000" value="${relative.price}"/></span>
                                                                        </p>
                                                                        <p class="special-price">
                                                                            <span class="price-label">Special Price</span>
                                                                            <span class="price" id="product-price-901">$<fmt:formatNumber type="number" pattern="0.000" value="${relative.specialPrice}"/></span>
                                                                        </p>
                                                                    </c:if>
                                                                    <c:if test="${relative.sale != 1}">
                                                                        <p class="special-price">
                                                                            <span class="price-label">Special Price</span>
                                                                            <span class="price" id="product-price-901">$<fmt:formatNumber type="number" pattern="0.000" value="${relative.price}"/></span>
                                                                        </p>
                                                                    </c:if>
                                                                    
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>  
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </c:forEach>
                                    </c:if>
                                    <script type="text/javascript">
                                    //<![CDATA[
                                    $$('.related-checkbox').each(function(elem){
                                        Event.observe(elem, 'click', addRelatedToProduct)
                                    });

                                    var relatedProductsCheckFlag = false;
                                    function selectAllRelated(txt){
                                        if (relatedProductsCheckFlag == false) {
                                            $$('.related-checkbox').each(function(elem){
                                                elem.checked = true;
                                            });
                                            relatedProductsCheckFlag = true;
                                            txt.innerHTML="unselect all";
                                        } else {
                                            $$('.related-checkbox').each(function(elem){
                                                elem.checked = false;
                                            });
                                            relatedProductsCheckFlag = false;
                                            txt.innerHTML="select all";
                                        }
                                        addRelatedToProduct();
                                    }

                                    function addRelatedToProduct(){
                                        var checkboxes = $$('.related-checkbox');
                                        var values = [];
                                        for(var i=0;i<checkboxes.length;i++){
                                            if(checkboxes[i].checked) values.push(checkboxes[i].value);
                                        }
                                        if($('related-products-field')){
                                            $('related-products-field').value = values.join(',');
                                        }
                                    }
                                    //]]>
                                    </script>
                                </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
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
                          <input type="hidden" name="product" class="product_id" value="" id="map-popup-product-id" />
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
                      Our price is lower than the manufacturer's &quot;minimum advertised price.&quot; As a result, we cannot show you the price in catalog or the product page. <br /> <br /> You
                      have no obligation to purchase the product once you know the price. You can simply remove the item from your cart.
                    </div>
                    <div class="map-popup-text" id="map-popup-text-what-this">
                      Our price is lower than the manufacturer's &quot;minimum advertised price.&quot; As a result, we cannot show you the price in catalog or the product page. <br /> <br /> You
                      have no obligation to purchase the product once you know the price. You can simply remove the item from your cart.
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- END: content -->

    <!-- BEGIN: footer -->
    <jsp:include page="footer.jsp"></jsp:include>
    <!-- END: footer -->
  </div>
  <script type="text/javascript">
      var iprocess='<div id="loadmask"><p class="loader">' + 
         '<img alt="Loading..." src="http://demo.magentech.com/themes/sm_love_fashion/skin/frontend/sm_lovefashion/default/sm/cartpro/images/ajax-loader-tr.gif"><br>Please wait...</p></div>';
  
      $jsmart(document).ready(function($) {
    	  $.fn.serializeObject = function()
          {
              var o = {};
              var a = this.serializeArray();
              $.each(a, function() {
                  if (o[this.name] !== undefined) {
                      if (!o[this.name].push) {
                          o[this.name] = [o[this.name]];
                      }
                      o[this.name].push(this.value || '');
                  } else {
                      o[this.name] = this.value || '';
                  }
              });
              return o;
          };
          
    	  $('.swatch-option.color').click(function(){
    		    $this = $(this);
    		    $(".swatch-option.color" ).each(function() {
    		    	$(this).removeClass('selected');
    		    });
    		    $this.addClass('selected');
    		    $('.color-value').text($this.attr('option-label'));
    		    $('input:hidden[name="color"]').val($this.attr('option-label'));
    		    $('#advice-required').remove();
          });

    	  $('.swatch-option.text').click(function(){
              $this = $(this);
              $(".swatch-option.text" ).each(function() {
                  $(this).removeClass('selected');
              });
              $this.addClass('selected');
              $('.size-value').text($this.attr('option-label'));
              $('input:hidden[name="size"]').val($this.attr('option-label'));
              $('#advice-required').remove();
          });

          $('.yt-tab-navi li').click(function(){
              $this = $(this);
              $(".yt-tab-navi li.active" ).removeClass('active');
              var index = $this.index();
              $this.addClass('active');
              $(".yt-tab-content > div").each(function(){
                  $(this).css("display", "none");
              });
              var element = $(".yt-tab-content > div");
              $(element[index]).css("display", "block");
          });

          $('.btn-cart').click(function(){
              /*  $("#fancybox-wrap-clone").css("display", "none");
               $("#process").html(iprocess);
               $("#process").css("display", "block");
               $("#options").css("display", "block");
               fixcenter(); */
               var required = '<div class="validation-advice" id="advice-required">* This is a required field.</div>';
               if($('input:hidden[name="color"]').val() == ''){
            	   $('.swatch-attribute.color').append(required);
            	   return false;
               }
               if($('input:hidden[name="size"]').val() == ''){
                   $('.swatch-attribute.size').append(required);
                   return false;
               }
               var jsonp = JSON.stringify($('#product_addtocart_form').serializeObject());
               $.ajax({
                   type : "POST",
                   contentType : "application/json",
                   url : "/cartpro/index/add",
                   data : jsonp,
                   dataType : 'json',
                   timeout : 100000,
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
