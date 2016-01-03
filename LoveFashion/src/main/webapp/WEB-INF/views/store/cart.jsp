<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="format-detection" content="telephone=no">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Cart</title>
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
    <div id="yt_content" class="yt-content wrap">
      <div id="yt_main" class="yt-main col-main ">
        <div class="yt_main_inner yt-content-inner">
          <div class="container">
            <div class="row">
              <div class="">
                <div class="col-md-12">
                  <noscript>&amp;amp;lt;div class="global-site-notice noscript"&amp;amp;gt; &amp;amp;lt;div class="notice-inner"&amp;amp;gt; &amp;amp;lt;p&amp;amp;gt;
                    &amp;amp;lt;strong&amp;amp;gt;JavaScript seems to be disabled in your browser.&amp;amp;lt;/strong&amp;amp;gt;&amp;amp;lt;br /&amp;amp;gt; You must have JavaScript enabled in your
                    browser to utilize the functionality of this website. &amp;amp;lt;/p&amp;amp;gt; &amp;amp;lt;/div&amp;amp;gt; &amp;amp;lt;/div&amp;amp;gt;</noscript>
                  <div class="global-site-notice demo-notice">
                    <div class="notice-inner">
                      <p>This is a demo store. Any orders placed through this store will not be honored or fulfilled.</p>
                    </div>
                  </div>
                </div>
                <div class="col-md-12">
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
                  <div class="cart">
                    <div class="page-title title-buttons">
                      <h1>Shopping Cart</h1>
                    </div>
                    <c:if test="${not empty message}">
                        <p>${message}</p>
                    </c:if>
                    <c:if test="${empty message}">
                    <form action="http://demo.magentech.com/themes/sm_love_fashion/checkout/cart/updatePost/" method="post">
                      <input name="form_key" type="hidden" value="4TBu8NrqubdDBUhd">
                      <fieldset>
                        <table id="shopping-cart-table" class="data-table cart-table">
                          <thead>
                            <tr class="first last">
                              <th rowspan="1">&nbsp;</th>
                              <th rowspan="1"><span class="nobr">SKU</span></th>
                              <th rowspan="1"></th>
                              <th class="a-center" colspan="1"><span class="nobr">Unit Price</span></th>
                              <th rowspan="1" class="a-center">Qty</th>
                              <th rowspan="1" class="a-center">Color</th>
                              <th rowspan="1" class="a-center">Size</th>
                              <th class="a-center" colspan="1">Subtotal</th>
                              <th rowspan="1" class="a-center">&nbsp;</th>
                            </tr>
                          </thead>
                          <tfoot>
                            <tr class="first last">
                              <td colspan="50" class="a-right last">
                                <button type="button" title="Continue Shopping" class="button btn-continue" onclick="setLocation('/categories/2')">
                                  <span><span>Continue Shopping</span></span>
                                </button>
                              </td>
                            </tr>
                          </tfoot>
                          <tbody>
                            <c:set var="length" value="${sessionScope.cart.list.size() - 1}"></c:set>
                            <c:forEach var="item" items="${sessionScope.cart.list}" varStatus="status">
                              <tr
                                class='<c:if test="${status.index % 2 == 0}"> odd</c:if><c:if test="${status.index == length}"> last</c:if>
                                    <c:if test="${status.index % 2 != 0}"> even</c:if><c:if test="${status.index == 0}"> first</c:if>'>
                                <td class="a-center"><img src="/resources/images/products/${item.image}" width="125" height="83" /></td>
                                <td class="a-center">
                                  <h2 class="product-name">${item.sku}</h2>
                                </td>
                                <td class="a-center"><a href="javascript:void(0)" onclick="editCart(${status.index})" title="Edit item parameters">Edit</a></td>
                                <td class="a-center"><span class="cart-price"> <span class="price">$<fmt:formatNumber type="number" pattern="0.000" value="${item.price}" /></span></span></td>
                                <td class="a-center"><input name="cart-qty" value="${item.qty}" size="4" title="Qty" class="input-text qty a-center" maxlength="12"></td>
                                <td class="a-center"><select name="color" class="address-select">
                                    <c:forEach var="color" items="${item.listColors}">
                                      <option <c:if test="${item.color eq color.value}">selected</c:if> value="${color.value}"><c:out value="${color.value}" /></option>
                                    </c:forEach>
                                </select></td>
                                <td class="a-center"><select name="size" class="address-select" title="">
                                    <c:forEach var="size" items="${item.listSizes}">
                                      <option <c:if test="${item.size eq size.value}">selected</c:if> value="${size.value}"><c:out value="${size.value}" /></option>
                                    </c:forEach>
                                </select></td>
                                <td class="a-center"><span class="cart-price"> <span class="price">$<fmt:formatNumber type="number"
                                          pattern="0.000" value="${item.price * item.qty}" /></span></span></td>
                                <td class="a-center last"><a href="javascript:void(0)" onclick="showClick(${status.index})" title="Remove item" class="icon-remove btn-remove btn-remove2"></a></td>
                              </tr>
                            </c:forEach>
                          </tbody>
                        </table>
                    </form>
                    
                    <div class="cart-collaterals">
                      <div class="col2-set">
                        <div class="row">
                          <div class="col-1 col-lg-4 col-md-4 col-sm-6 col-xs-12">
                            <div class="shipping">
                              <h2>Estimate Shipping</h2>
                              <div class="shipping-form">
                                <form action="/checkout/onepage/method-shipping" method="post" id="shipping-zip-form">
                                  <p>Enter your destination to get a shipping estimate.</p>
                                  <ul class="form-list">
                                    <li>
                                      <div class="input-box">
                                        <select name="methodShipping" id="country" class="validate-select jqtransformdone" title="Country">
                                          <option value="Free Shipping">Free Shipping</option>
                                          <option value="Shipping for item">Shipping for item</option>
                                        </select>
                                        <input type="hidden" name="returnUrl" value="1"> 
                                      </div></li>
                                  </ul>
                                  <div class="buttons-set">
                                    <button type="submit" title="Get a Quote" class="button">
                                      <span><span>Update total</span></span>
                                    </button>
                                  </div>
                                </form>
                              </div>
                            </div>
                          </div>
                          <div class="col-2 col-lg-4 col-md-4 col-sm-6 col-xs-12">
                            <form id="discount-coupon-form" action="#" method="post">
                              <div class="discount">
                                <h2>Discount Codes</h2>
                                <div class="discount-form">
                                  <label for="coupon_code">Enter your coupon code if you have one.</label> <input type="hidden" name="remove" id="remove-coupone" value="0">
                                  <div class="input-box">
                                    <input class="input-text" id="coupon_code" name="coupon_code" value="">
                                  </div>
                                  <div class="buttons-set">
                                    <button type="button" title="Apply Coupon" class="button" onclick="discountForm.submit(false)" value="Apply Coupon">
                                      <span><span>Apply Coupon</span></span>
                                    </button>
                                  </div>
                                </div>
                              </div>
                            </form>
                          </div>
                          <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                            <div class="totals">
                              <table id="shopping-cart-totals-table">
                                <colgroup>
                                  <col>
                                  <col width="1">
                                </colgroup>
                                <tfoot>
                                  <tr>
                                    <td style="" class="a-right" colspan="1"><strong>Grand Total</strong></td>
                                    <td style="" class="a-right"><strong><span class="price">$<fmt:formatNumber type="number" pattern="0.000" value="${cart.grandtotal}"/></span></strong></td>
                                  </tr>
                                </tfoot>
                                <tbody>
                                  <tr>
                                    <td style="" class="a-right" colspan="1">Subtotal</td>
                                    <td style="" class="a-right"><span class="price">$<fmt:formatNumber type="number" pattern="0.000" value="${cart.subtotal}"/></span></td>
                                  </tr>
                                  <tr>
                                    <td style="" class="a-right" colspan="1">Tax</td>
                                    <td style="" class="a-right"><span class="price">$<fmt:formatNumber type="number" pattern="0.000" value="${cart.priceTax}"/></span></td>
                                  </tr>
                                  <tr>
                                    <td style="" class="a-right" colspan="1">Shipping & Handling</td>
                                    <td style="" class="a-right"><span class="price">$<fmt:formatNumber type="number" pattern="0.000" value="${cart.priceShipping}"/></span></td>
                                  </tr>
                                </tbody>
                              </table>
                              <ul class="checkout-types">
                                <li>
                                  <button type="button" title="Proceed to Checkout" class="button btn-proceed-checkout btn-checkout"
                                    onclick="window.location='/checkout/onepage';">
                                    <span><span>Proceed to Checkout</span></span>
                                  </button>
                                </li>
                              </ul>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    </c:if>
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
  function showClick(index){
      var result = confirm("Are  you  sure  you  would  like  to  remove  this  item  from  the  shopping  cart?");
      if(result){
          jQuery('#minicart-sidebar li:eq(' + index + ')').remove();
          var n = jQuery('#shopping-cart-table tbody tr').length;
          if(n == 1)
              jQuery('#shopping-cart-table').remove();
          else
              jQuery('#shopping-cart-table tbody tr:eq(' + index + ')').remove();
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

  function editCart(index){
	  var element = jQuery('#shopping-cart-table tbody tr:eq(' + index + ') td');
	  var qty = jQuery(element[4]).find("input").val();
	  var color = jQuery(element[5]).find("select").val();
	  var size = jQuery(element[6]).find("select").val();
	  var sku = jQuery(element[1]).find("h2").text();
	  var jsonp = '{"sku":"' + sku + '","qty":"' + qty + '","color":"' + color + '","size":"' + size + '"}';
      jQuery.ajax({
          type : "POST",
          contentType : "application/json",
          url : "/cartpro/index/edit/" + index,
          data : jsonp,
          dataType : 'json',
          timeout : 100000,
          success : function(data) {
              console.log("SUCCESS: ", data);
              jQuery(element[4]).find("input").val(data.qty);
              jQuery(element[5]).find("select").val(data.color);
              jQuery(element[6]).find("select").val(data.size);
              jQuery(element[1]).find("h2").text(data.sku);
          },
          error : function(e) {
              console.log("ERROR: ", e);
          },
          done : function(e) {
              console.log("DONE");
          }
      });
  };

  </script>
</body>
</html>