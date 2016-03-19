<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib uri='http://www.springframework.org/tags' prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="format-detection" content="telephone=no">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Address new</title>
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
                    <strong><span><spring:message code="customer.address.title.e5"></spring:message></span>
                    </strong>
                  </div>
                  <div class="block-content">
                    <ul>
                      <li><a href="/customer/account/"><spring:message code="customer.dashboard.title.e8"></spring:message></a></li>
                      <li><a href="/customer/account/edit"><spring:message code="customer.dashboard.title.e9"></spring:message></a></li>
                      <li class="current"><strong><spring:message code="customer.dashboard.title.e10"></spring:message></strong></li>
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
                  <div class="page-title block-title title-create-address">
                    <h1><spring:message code="customer.address.add.title.e1"></spring:message></h1>
                  </div>
                  <form:form action="/customer/account/address/new" method="post" id="form-validate" commandName="address">
                    <div class="fieldset">
                      <h2 class="legend"><spring:message code="customer.address.add.title.e2"></spring:message></h2>
                      <ul class="form-list edit-address-form">
                        <li class="fields">
                          <div class="customer-name-middlename row">
                            <div class="field name-firstname col-md-6">
                              <label for="firstname" class="required"><em>*</em><spring:message code="common.fristname"></spring:message></label>
                              <div class="input-box">
                                <form:input path="firstname" value="${firstname}" title="First Name" maxlength="255" class="input-text required-entry" />
                                <div class="validation-advice">
                                  <form:errors path="firstname" />
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="customer-name-middlename row">
                            <div class="field name-firstname col-md-6">
                              <label for="lastname" class="required"><em>*</em><spring:message code="common.lastname"></spring:message></label>
                              <div class="input-box">
                                <form:input path="lastname" value="${lastname}" title="Last Name" maxlength="255" class="input-text required-entry" />
                                <div class="validation-advice">
                                  <form:errors path="lastname" />
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="customer-name-middlename row">
                            <div class="field name-firstname col-md-6">
                              <label for="telephone" class="required"><em>*</em><spring:message code="common.telephone"></spring:message></label>
                              <div class="input-box">
                                <form:input path="phone" title="Telephone" class="input-text required-entry" value="${phone}"/>
                                <div class="validation-advice">
                                  <form:errors path="phone" />
                                </div>
                              </div>
                            </div>
                          </div>
                        </li>
                      </ul>
                    </div>
                    <div class="fieldset">
                      <h2 class="legend"><spring:message code="customer.address.add.title.e3"></spring:message></h2>
                      <ul class="form-list edit-address-form">
                        <li class="wide"><label for="street_1" class="required"><em>*</em><spring:message code="common.street"></spring:message></label>
                          <div class="input-box">
                            <form:input path="street" title="Street" class="input-text required-entry" value="${street}"/>
                            <div class="validation-advice">
                              <form:errors path="street" />
                            </div>
                          </div></li>
                        <li class="fields">
                          <div class="row">
                            <div class="field col-md-6">
                              <label for="region_id" class="required"><em>*</em><spring:message code="common.region"></spring:message></label>
                              <div class="input-box">
                                <form:select path="regionId" class="validate-select jqtransformdone required-entry" id="region_id" itemValue="${regionId}" itemLabel="${region}">
                                  <form:option value=""><spring:message code="customer.address.default.region"></spring:message></form:option>
                                </form:select>
                                <div class="validation-advice">
                                  <form:errors path="regionId" />
                                </div>
                                <form:input path="region" value="" title="State/Province" class="input-text" style="" />
                              </div>
                            </div>
                            <div class="field col-md-6">
                              <label for="country" class="required"><em>*</em><spring:message code="common.country"></spring:message></label>
                              <div class="input-box">
                                <form:select path="countryId" class="validate-select jqtransformdone required-entry" defaultvalue="0" id="country_id" itemValue="${countryId}" itemLabel="${country}">
                                  <form:option value="VN">Vietnam</form:option>
                                </form:select>
                                <div class="validation-advice">
                                  <form:errors path="countryId" />
                                </div>
                                <form:input path="country" value="" title="Country" class="input-text" style="display: none;" />
                              </div>
                            </div>
                          </div>
                        </li>
                        <li class="fields">
                          <div class="row">
                            <c:if test="${not empty defaultBilling && defaultBilling == address.entityId}">
                                <li>
                                    <spring:message code="customer.address.add.billing"></spring:message>
                                </li>
                            </c:if>
                            <c:if test="${empty defaultBilling || defaultBilling != address.entityId}">
                                <li class="control"><form:checkbox path="defaultBillingAddress" title="Use as My Default Billing Address" class="checkbox" /> <label for="primary_billing">
                                <spring:message code="customer.address.add.billing"></spring:message></label></li>
                            </c:if>
                            <c:if test="${not empty defaultBilling && defaultShipping == address.entityId}">
                                <li>
                                    <spring:message code="customer.address.add.shipping"></spring:message>
                                </li>
                            </c:if>
                            <c:if test="${empty defaultShipping || defaultShipping != address.entityId}">
                                <li class="control"><form:checkbox path="defaultShippingAddress" title="Use as My Default Shipping Address" class="checkbox" /> <label for="primary_shipping">
                                <spring:message code="customer.address.add.shipping"></spring:message></label></li>
                            </c:if>
                          </div>
                        </li>
                      </ul>
                    </div>
                    <div class="buttons-set">
                      <p class="required">* Required Fields</p>
                      <p class="back-link">
                        <a href="/customer/account/address"><small>« </small><spring:message code="common.back"></spring:message></a>
                      </p>
                      <button type="submit" title="Save Address" class="button">
                        <span><span><spring:message code="customer.address.add.button.save"></spring:message></span></span>
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
        new RegionUpdater('country_id', 'region', 'region_id', {"config":{"show_all_regions":true,"regions_required":["AT","CA","EE","FI","FR","DE","LV","LT","RO","ES","CH","US"]},"VN":{"1":{"code":"An Giang","name":"An Giang"},"2":{"code":"Bà Rịa - Vũng Tàu","name":"Bà Rịa - Vũng Tàu"},"3":{"code":"Bạc Liêu","name":"Bạc Liêu"},"4":{"code":"Bắc Kạn","name":"Bắc Kạn"},"5":{"code":"Bắc Giang","name":"Bắc Giang"},"6":{"code":"Bắc Ninh","name":"Bắc Ninh"},"7":{"code":"Bến Tre","name":"Bến Tre"},"8":{"code":"Bình Dương","name":"Bình Dương"},"9":{"code":"Bình Định","name":"Bình Định"},"10":{"code":"Bình Phước","name":"Bình Phước"},"11":{"code":"Bình Thuận","name":"Bình Thuận"},"12":{"code":"Cà Mau","name":"Cà Mau"},"13":{"code":"Cao Bằng","name":"Cao Bằng"},"14":{"code":"Cần Thơ","name":"Cần Thơ"},"15":{"code":"Đà Nẵng","name":"Đà Nẵng"},"16":{"code":"Đắk Lắk","name":"Đắk Lắk"},"17":{"code":"Đắk Nông","name":"Đắk Nông"},"18":{"code":"Đồng Nai","name":"Đồng Nai"},"19":{"code":"Đồng Tháp","name":"Đồng Tháp"},"20":{"code":"Điện Biên","name":"Điện Biên"},"21":{"code":"Gia Lai","name":"Gia Lai"},"22":{"code":"Hà Giang","name":"Hà Giang"},"23":{"code":"Hà Nam","name":"Hà Nam"},"24":{"code":"Hà Nội","name":"Hà Nội"},"25":{"code":"Hà Tĩnh","name":"Hà Tĩnh"},"26":{"code":"Hải Dương","name":"Hải Dương"},"27":{"code":"Hải Phòng","name":"Hải Phòng"},"28":{"code":"Hòa Bình","name":"Hòa Bình"},"29":{"code":"Hậu Giang","name":"Hậu Giang"},"30":{"code":"Hưng Yên","name":"Hưng Yên"},"31":{"code":"TP. Hồ Chí Minh","name":"TP. Hồ Chí Minh"},"32":{"code":"Khánh Hòa","name":"Khánh Hòa"},"33":{"code":"Kiên Giang","name":"Kiên Giang"},"34":{"code":"Kon Tum","name":"Kon Tum"},"35":{"code":"Lai Châu","name":"Lai Châu"},"36":{"code":"Lào Cai","name":"Lào Cai"},"37":{"code":"Lạng Sơn","name":"Lạng Sơn"},"38":{"code":"Lâm Đồng","name":"Lâm Đồng"},"39":{"code":"Long An","name":"Long An"},"40":{"code":"Nam Định","name":"Nam Định"},"41":{"code":"Nghệ An","name":"Nghệ An"},"42":{"code":"Ninh Bình","name":"Ninh Bình"},"43":{"code":"Ninh Thuận","name":"Ninh Thuận"},"44":{"code":"Phú Thọ","name":"Phú Thọ"},"45":{"code":"Phú Yên","name":"Phú Yên"},"46":{"code":"Quảng Bình","name":"Quảng Bình"},"47":{"code":"Quảng Nam","name":"Quảng Nam"},"48":{"code":"Quảng Ngãi","name":"Quảng Ngãi"},"49":{"code":"Quảng Ninh","name":"Quảng Ninh"},"50":{"code":"Quảng Trị","name":"Quảng Trị"},"51":{"code":"Sóc Trăng","name":"Sóc Trăng"},"52":{"code":"Sơn La","name":"Sơn La"},"53":{"code":"Tây Ninh","name":"Tây Ninh"},"54":{"code":"Thái Bình","name":"Thái Bình"},"55":{"code":"Thái Nguyên","name":"Thái Nguyên"},"56":{"code":"Thanh Hóa","name":"Thanh Hóa"},"57":{"code":"Thừa Thiên - Huế","name":"Thừa Thiên - Huế"},"58":{"code":"Tiền Giang","name":"Tiền Giang"},"59":{"code":"Trà Vinh","name":"Trà Vinh"},"60":{"code":"Tuyên Quang","name":"Tuyên Quang"},"61":{"code":"Vĩnh Long","name":"Vĩnh Long"},"62":{"code":"Vĩnh Phúc","name":"Vĩnh Phúc"},"63":{"code":"Yên Bái","name":"Yên Bái"}}}, undefined, 'zip');
        jQuery('#region_id').change(function(){
            jQuery('#region').val(jQuery('#region_id :selected').text());
            jQuery('#country').val(jQuery('#country_id :selected').text());
        });

        </script>
</body>
</html>