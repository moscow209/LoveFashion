<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div id="yt_header" class="yt-header  wrap">
  <div class="header-style-default">
    <div class="header-top">
      <div class="container">
        <div class="row">
          <div class="col-md-8  col-sm-5  top-curlang"></div>
          <div class="col-md-4  col-sm-7  toplinks-header">
            <ul class="links-account">
              <li class="account-link"><a href="#" title="My  Account">My Account</a>
                <ul class="dropdown-link">
                  <li><a href="/customer/account/" title="Account  info">Account info</a></li>
                  <li><a href="#" title="Watch  list">Watch list</a></li>
                  <li><a href="#" title="Favorites">Favorites</a></li>
                  <li><a href="#" title="Purchase  history">Purchase history</a></li>
                </ul></li>
              <li class="register-link-help"><a href="#" title="Help">Help</a>
                <ul class="dropdown-link">
                  <li><a href="#" title="Shipping  &  Delivery">Shipping & Delivery</a></li>
                  <li><a href="#" title="Returns  &  Refunds">Returns & Refunds</a></li>
                  <li><a href="#" title="Managing  Your  Account">Managing Your Account</a></li>
                  <li><a href="#" title="Payment,  Pricing  &  Promotions">Payment, Pricing & Promotions</a></li>
                  <li><a href="#" title="Ordering">Ordering</a></li>
                  <li><a href="#" title="Need  More  Help?">Need More Help?</a></li>
                </ul></li>
            </ul>
            <ul class="links">
              <li class="first  last"><a href="#" title="Checkout" class="top-link-checkout">Checkout</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="wrap-header-top">
      <div class="yt-header-top">
        <div class="container">
          <div class="row">
            <div class="logo-wrapper  col-md-3">
              <h1>
                <strong> <a title="SM  Love  Fashion-  Magento  Online  Store" href="#"> <img src="/resources/images/violet/logo_violet.png" alt="SM  Love  Fashion-  Magento  Online  Store" />
                </a>
                </strong>
              </h1>
            </div>
            <div class="right-content-header  col-md-9">
              <div class="search-minicart">
                <div class="block  mini-cartpro  sm-cartpro">
                  <div class="block-title">
                    <div href="javascript:void(0)" class="btn-toggle  show-cart-button">
                      <div class="btn-cart-hd3">
                        <span class="price">$500.00</span>
                      </div>
                      <div class="cart-icon">
                        <c:if test="${not empty sessionScope.cart}">
                          <span class="amount-i">${sessionScope.cart.list.size()}</span>
                        </c:if>
                        <c:if test="${empty sessionScope.cart}">
                          <span class="amount-i">0</span>
                        </c:if>

                      </div>
                      <div class="detail-minicart">
                        <h2 class="title-cart">My Cart</h2>
                        <div class="bottom-cart">
                          <c:if test="${not empty sessionScope.cart}">
                            <span class="price">$<fmt:formatNumber type="number" pattern="0.000" value="${sessionScope.cart.subtotal}" /></span>
                          </c:if>
                          <c:if test="${empty sessionScope.cart}">
                            <span class="price">$0,000</span>
                          </c:if>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!--  Show  cart  when  hover  -->
                  <div class="block-content" style="display: none;">
                    <div class="block-inner">
                       <ol id="minicart-sidebar" class="mini-products-list">
                          <c:if test="${not empty sessionScope.cart}">
                            <c:set value="${sessionScope.cart.list.size() - 1}" var="length"></c:set>
                            <c:forEach var="item" items="${sessionScope.cart.list}" varStatus="status">
                              <li class='item <c:if test="${status.index % 2 == 0}"> odd</c:if><c:if test="${status.index == length}"> last</c:if>'>
                                <div class="product-details" style="margin-bottom: 20px;">
                                  <p class="product-name">
                                    <a title="${item.name}" href="#">${item.name}</a> <a href="javascript:void(0)" onclick="showClick(${status.index})" title="Remove  This  Item" class="btn-remove">Remove</a>
                                  </p>
                                </div> <span class="price">$<fmt:formatNumber type="number" pattern="0.000" value="${item.price}" /></span> <span class="qty-w"> <span class="label-qty">Qty: </span><span
                                  class="qty-b">${item.qty}</span>
                              </span>
                              </li>
                            </c:forEach>
                          </c:if>
                        </ol>
                      <div class="bottom-action  actions">
                        <div class="price-total">
                          <span class="label-price-total">Cart subtotal: </span> <span class="price-total-w"> <c:if test="${not empty sessionScope.cart}">
                              <span class="price">$<fmt:formatNumber type="number" pattern="0.000" value="${sessionScope.cart.subtotal}" /></span>
                            </c:if> <c:if test="${empty sessionScope.cart}">
                              <span class="price">$0.000</span>
                            </c:if>
                          </span>
                        </div>
                        <div class="button-wrapper">
                          <button class="button  btn-gotocart" type="button" title="Go  to  cart" onclick="setLocation('/cartpro/index')">
                            <span> <span>Go to Cart</span>
                            </span>
                          </button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="wishlist-compare">
                  <ul class="links">
                    <li class="first  last"><a href="#"
                      title="<span  class='hd-mobile'>My  Wishlist</span>  <span><span  class='hidden-n'>(</span><span  class='c-item'>0</span><span  class='hidden-n'>)</span></span>"><span
                        class='hd-mobile'>My Wishlist</span> <span><span class='hidden-n'>(</span><span class='c-item'>0</span><span class='hidden-n'>)</span></span></a></li>
                  </ul>
                  <a class="block-compare  no-item-compare"><span class="hd-mobile">My Compare</span><span> <span class='hidden-n'>(</span><span class="c-item">0</span><span
                      class='hidden-n'>)</span></span></a>
                </div>
                <div id="sm_serachbox_pro20534524061432413813" class="sm-serachbox-pro">
                  <div class="sm-searbox-content">
                    <form id="search_mini_form" action="/search" method="get">
                      <div class="form-search">
                        <div class="input-search" style="margin-left: 0px">
                          <input size="30" id="search" type="text" name="q" class="input-text" onfocus="if(this.value=='Name, sku...')  this.value='';"
                            onblur="if(this.value=='')  this.value='Name, sku..';" value="Name, sku..." />
                        </div>
                        <button type="submit" title="Search" class="button  form-button">
                          <span><span>Search</span></span>
                        </button>
                        <div id="search_autocomplete" class="search-autocomplete"></div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div style="clear: both;"></div>
    </div>
    <div class="yt-header-under">
      <div class="container">
        <div class="row  yt-header-under-wrap">
          <div class="col-md-12">
            <div class="yt-main-menu">
              <div class="yt-menu">
                <script type="text/javascript" src="/resources/js/sm-megamenu.js"></script>
                <div class="  sm_megamenu_wrapper_horizontal_menu  sambar" id="sm_megamenu_menu5560e6753315b" data-sam="3100718531432413813">
                  <div class="sambar-inner">
                    <a class="btn-sambar" data-sapi="collapse" href="#sm_megamenu_menu5560e6753315b"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                    </a>
                    <ul class="sm-megamenu-hover  sm_megamenu_menu  sm_megamenu_menu_black" data-jsapi="on">
                      <li class="other-toggle sm_megamenu_lv1 sm_megamenu_nodrop"><a class="sm_megamenu_head  sm_megamenu_nodrop  " href="#" id="sm_megamenu_250"> <span
                          class="sm_megamenu_icon  sm_megamenu_nodesc"> <span class="sm_megamenu_title">Home</span>
                        </span>
                      </a></li>

                      <c:forEach var="level1" items="${categories.subCategories}">
                        <li class="shop-item-parent other-toggle sm_megamenu_lv1  sm_megamenu_drop  parent"><a class="sm_megamenu_head  sm_megamenu_drop  " href="/categories/${level1.entityId}"> <span
                            class="sm_megamenu_icon  sm_megamenu_nodesc"> <span class="sm_megamenu_title">${level1.name}</span>
                          </span>
                        </a>
                          <div class="sm-megamenu-child  sm_megamenu_dropdown_4columns">
                            <div class="sm_megamenu_col_4  sm_megamenu_firstcolumn shop-item">
                              <div class="sm_megamenu_col_6  sm_megamenu_firstcolumn">
                                <div class="sm_megamenu_head_item  "></div>
                                <c:forEach var="level2" items="${level1.subCategories}" varStatus="lv2Status">
                                  <div class='sm_megamenu_col_3 sm_megamenu_firstcolumn'>
                                    <div class="sm_megamenu_head_item  ">
                                      <div class="sm_megamenu_title">
                                        <span class="sm_megamenu_title_lv3">${level2.name}</span>
                                      </div>
                                    </div>
                                    <div class="sm_megamenu_content">
                                      <ul class="list-cat">
                                        <c:forEach var="level3" items="${level2.subCategories}">
                                          <li><a href="/categories/${level3.entityId}" title="Cocktail">${level3.name}</a></li>
                                        </c:forEach>
                                      </ul>
                                    </div>
                                  </div>
                                </c:forEach>
                              </div>
                            </div>
                          </div>
                      </c:forEach>
                      <li class="other-toggle sm_megamenu_lv1 sm_megamenu_nodrop"><a class="sm_megamenu_head sm_megamenu_nodrop" href="#" id="sm_megamenu_225"> <span
                          class="sm_megamenu_icon sm_megamenu_nodesc"> <span class="sm_megamenu_title">About Us</span>
                        </span>
                      </a>
                      <li class="other-toggle sm_megamenu_lv1  sm_megamenu_nodrop"><a class="sm_megamenu_head  sm_megamenu_nodrop  " href="#" id="sm_megamenu_226"> <span
                          class="sm_megamenu_icon  sm_megamenu_nodesc"> <span class="sm_megamenu_title">Contact Us</span>
                        </span>
                      </a>
                    </ul>
                  </div>
                </div>
                <!--End  Module-->
                <!--  Login  -->
                <div class="quick-info">
                  <div class="inner">
                    <c:choose>
                      <c:when test="${not empty sessionScope.customer}">
                        <span class="item2"> <span><a title="Log Out" href="/customer/account/logout">Log Out</a></span>
                        </span>
                      </c:when>
                      <c:otherwise>
                        <span class="item1"> <a title="Register" href="/customer/account/register"> Join Free </a></span>
                        <span class="item2"> <span>Sign in</span>
                          <div class="login-quick">
                            <div class="block  block-login-top">
                              <form action="/customer/account/login" method="post">
                                <div class="wrap-top">
                                  <div class="wrap  wrap-user">
                                    <input type="text" name="login[username]" id="mini-login" class="inp-user  input-text" value="User  name" onFocus="if(this.value  !=  '')  {this.value  =  '';}"
                                      onBlur="if  (this.value  ==  '')  {this.value  =  'User  name';}" />
                                  </div>
                                  <div class="clr"></div>
                                  <div class="wrap  wrap-pass">
                                    <input type="password" name="login[password]" id="mini-password" class="  inp-pass  input-text" value="........."
                                      onFocus="if(this.value  !=  '')  {this.value  =  '';}" onBlur="if  (this.value  ==  '')  {this.value  =  '.........';}" />
                                  </div>
                                  <div class="actions">
                                    <button class="button" title="Search" type="submit">
                                      <span><span>Login</span></span>
                                    </button>
                                  </div>
                                </div>
                                <div class="more-actions">
                                  <a href="/customer/account/forgotpassword" class="link_fyp">Forgot Your Password</a>
                                </div>
                              </form>
                            </div>
                          </div>
                        </span>
                      </c:otherwise>
                    </c:choose>
                  </div>
                  <!---->
                </div>
              </div>
            </div>
            <!--  Menu  responsive  -->
            <div id="yt-responsivemenu" class="yt-responsivemenu">
              <div class="mobile-menu-wrapper">
                <button type="button" class="btn  btn-navbar" data-toggle="collapse" data-target=".nav-collapse"></button>
                <div id="yt_resmenu_collapse" style="height: 0;" class="nav-collapse  collapse">
                  <ul class="nav-menu  clearfix">
                    <li class="nav-home"><a class="nav-home" href="#" title="Home"><span>Home</span></a></li>
                    <c:forEach var="level1" items="${categories.subCategories}">
                      <li class="level0  nav-2  parent" onmouseover="toggleMenu(this,1)" onmouseout="toggleMenu(this,0)"><a href="/categories/${level1.entityId}"> <span>${level1.name}</span></a> <c:forEach
                          var="level2" items="${level1.subCategories}" varStatus="lv2Status">
                          <ul class="level0">
                            <li class="level1  nav-2-1  first  parent" onmouseover="toggleMenu(this,1)" onmouseout="toggleMenu(this,0)"><a href="/categories/${level2.entityId}"> <span>${level2.name}</span></a>
                              <ul class="level1">
                                <c:forEach var="level3" items="${level2.subCategories}">
                                  <li class="level2  nav-2-1-1  first"><a href="/categories/${level3.entityId}"> <span>${level3.name}</span>
                                  </a></li>
                                </c:forEach>
                              </ul></li>
                          </ul>
                        </c:forEach></li>
                    </c:forEach>
                    <li class="level0  nav-6"><a href="#"> <span>About Us</span>
                    </a></li>
                    <li class="level0  nav-7"><a href="h#"> <span>Contact Us</span>
                    </a></li>
                  </ul>
                </div>
              </div>
              <div class="block-mobile  search-mobile">
                <div class="w-mobile">
                  <a href="javascript:void(0);" class="btn-mobile-h  search-button-mobile"></a>
                </div>
              </div>
              <div class="block-mobile  account-links-mobile">
                <div class="w-mobile">
                  <a href="javascript:void(0);" class="btn-mobile-h  link-mobile-icon"></a>
                  <div class="show-content-mobile  link-mobile-wrapper">
                    <ul class="links-mobile">
                      <li><a class="" href="/customer/account/login" title="Login">Login</a></li>
                      <li><a class="register-link-header" href="/customer/account/register" title="Register">Register</a></li>
                      <li><a class="checkout-link-header" href="/checkout/onepage" title="Checkout">Checkout</a></li>
                    </ul>
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
<!--  END:  Header  -->
