<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<div id="yt_header" class="yt-header wrap">
  <div class="header-style-3 ">
    <div class="container">
      <div class="row">
        <div class="logo-wrapper-hd3 col-md-12">
          <h1>
            <strong> <a title="SM Love Fashion- Magento Online Store" href="#"> <img src='<c:url value="/resources/images/logo_hd3.png"></c:url>'
                alt="SM Love Fashion- Magento Online Store" />
            </a>
            </strong>
          </h1>
        </div>
      </div>
    </div>
    <div class="yt-header-under">
      <div class="container">
        <div class="row">
          <div class="nav-cur-lang col-md-12">
            <div id="yt-responsivemenu" class="yt-responsivemenu">
              <div class="mobile-menu-wrapper">
                <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"></button>
                <div id="yt_resmenu_collapse" style="height: 0;" class="nav-collapse collapse">
                  <script type="text/javascript">
                       $jsmart(document).ready(function($) {
                    	    $('#yt_resmenu_collapse .nav-menu > li.parent').each(function() {
                    	        $(this).find('> ul').wrap('<div class="res-wrapnav">');
                    	        $(this).append('<span class="menuress-toggle"></span>');
                    	    });

                    	    $(".mobile-menu-wrapper .btn").click(function() {
                    	    	   $(this).toggleClass('active_btn');
                    	    });
                       });

                       $jsmart(window).load(function() {
                    	    $jsmart('#yt_resmenu_collapse .parent .menuress-toggle')
                                .css('height',$jsmart('#yt_resmenu_collapse .parent > a').outerHeight());

                    	    $jsmart('#yt_resmenu_collapse .parent > .res-wrapnav').each(function() {
                    	    	   if ($jsmart(this).parent().hasClass('open')) {
                    	    		    $jsmart(this).css('height',$jsmart(this).children('ul').height());
                    	    	   }
                            });

                    	    $jsmart('#yt_resmenu_collapse .parent .menuress-toggle').click(function() {
                    	        if ($jsmart(this).parent().hasClass('open')) {
                    	            $jsmart(this).parent().removeClass('open');
                    	            $jsmart(this).parent().children('.res-wrapnav').css('height','0px');
                    	        } else {
                    	            $jsmart(this).parent().addClass('open');
                    	            $jsmart(this).parent().children('.res-wrapnav')
                                        .css('height',$jsmart(this).parent().children('.res-wrapnav').children('ul').height());
                    	        }
                    	    });
                       });
                  </script>
                </div>
              </div>
            </div>
            <div class="megamenu-hd3">
              <div class="yt-header-under-wrap">
                <div class="yt-main-menu">
                  <div class="yt-menu">
                    <div class="yt-menu-container-home">
                      <div class="yt-menu-nav">
                      </div>
                      <script type="text/javascript">
                         var categories = JSON.parse('${sessionScope.categories}');
                         var parentCats = JSON.parse('${sessionScope.parent_cats}');
                         function buildCategory(parentId, level, level1, nav) {
                        	    var menu = "";
                        	    if (typeof parentCats[parentId] != 'undefined') {
                        	        if(nav == true){
                        	            menu = menu + "<ul id = 'nav' class='clearfix level" + level1 + "'>";
                        	        } else{
                        	            menu = menu + "<ul class='level" + level1 + "'>";
                        	        }
                        	        for(var i = 0; i < parentCats[parentId].length; i++) {
                        	            if (typeof parentCats[parentCats[parentId][i].id] == 'undefined') {
                        	                menu = menu + "<li class='level" + level + "'> <a href='#'><span>" + categories[parentCats[parentId][i].id].name + "</span></a></li>";
                        	            }
                        	            if (typeof parentCats[parentCats[parentId][i].id] != 'undefined') {
                        	                menu = menu + "<li class='level" + level + " parent'> <a href='#'><span>" + categories[parentCats[parentId][i].id].name + "</span></a> \n";
                        	                menu = menu + buildCategory(parentCats[parentId][i].id, level + 1, level, false);
                        	                menu = menu + "</li>";
                        	            }
                        	        }
                        	        menu = menu + "</ul>";
                        	    }
                        	    return menu;
                        }
                        var menu = buildCategory(1, 0, 0, true);
                        jQuery('.yt-menu-nav').append(menu);
                        jQuery('#yt_resmenu_collapse').append(menu);
                        jQuery('#yt_resmenu_collapse > ul').addClass("nav-menu");
                        jQuery('#yt_resmenu_collapse > ul').removeAttr('id');
                   </script>
                   </div>
                   <script>
                        $jsmart(document).ready(function($) {
                        	  $('#nav li ul li').has('ul').append('<span class="narrow"></span>');
                        });
                   </script>
                  </div>
                </div>
              </div>
            </div>
            <div class="cur-lang-hd3">
              <div class="cur-lang-block">
                <div title="Language" class="language-switcher">
                  <select id="select-language" class="flag" onchange="window.location.href=this.value">
                    <option title="English" class="language-0"
                      style="background-image: url('http://demo.magentech.com/themes/sm_love_fashion/skin/frontend/sm_lovefashion/default/images/flags/flag-english.jpg');"
                      value="http://demo.magentech.com/themes/sm_love_fashion/?___store=english&amp;___from_store=jamaica" selected="selected">English</option>
                    <option title="Viet Nam" class="language-11"
                      style="background-image: url('http://demo.magentech.com/themes/sm_love_fashion/skin/frontend/sm_lovefashion/default/images/flags/flag-vietnam.jpg');"
                      value="http://demo.magentech.com/themes/sm_love_fashion/?___store=vietnam&amp;___from_store=jamaica">Viet Nam</option>
                  </select>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="header-bottom-hd3">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="block-hd3-h block-cart-hd3">
              <div class="block mini-cartpro sm-cartpro">
                <div class="block-title">
                  <div href="javascript:void(0)" class="btn-toggle show-cart-button">
                    <div class="btn-cart-hd3">
                      <span class="price">$165.00</span>
                    </div>
                    <div class="cart-icon">
                      <span class="amount-i">1</span>
                    </div>
                    <div class="detail-minicart">
                      <h2 class="title-cart">My Cart</h2>
                      <div class="bottom-cart">
                        <span class="txt-item">item</span> - <span class="price">$165.00</span>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="block-content" style="display: none;">
                  <div class="block-inner">
                    <form action="http://demo.magentech.com/themes/sm_love_fashion/checkout/cart/updatePost/" method="post" id="minicart-form_uq5689ee0656dc9">
                      <input type="hidden" name="form_key" value="9u0I8xxUr5WdhoFP" />
                      <ol id="minicart-sidebar" class="mini-products-list">
                        <li class="item">
                          <div class="product-details ">
                            <p class="product-name">
                              <a title="Ires mite rima" href="http://demo.magentech.com/themes/sm_love_fashion/ires-mite-rima.html">Ires mite rima</a> <a
                                href="http://demo.magentech.com/themes/sm_love_fashion/checkout/cart/configure/id/2892/" title="Edit item" class="btn-edit">Edit</a> <a
                                href="http://demo.magentech.com/themes/sm_love_fashion/checkout/cart/delete/id/2892/uenc/aHR0cDovL2RlbW8ubWFnZW50ZWNoLmNvbS90aGVtZXMvc21fbG92ZV9mYXNoaW9uLw,,/"
                                title="Remove This Item" onclick="return confirm('Are you sure you would like to remove this item from the shopping cart?');" class="btn-remove">Remove</a>
                            </p>
                            <div class="product-details-bottom clearfix">
                              <p></p>
                            </div>
                            <div class="rating-container">
                              <span class="title-desc"></span>
                              <p class="no-rating">
                                <a href="http://demo.magentech.com/themes/sm_love_fashion/review/product/list/id/895/#review-form">Be the first to review this product</a>
                              </p>
                            </div>
                            <span class="price">$165.00</span> <span class="qty-w"> <span class="label-qty">Qty: </span><span class="qty-b">1</span>
                            </span>
                          </div>
                        </li>
                      </ol>
                    </form>
                    <div class="bottom-action actions">
                      <div class="price-total">
                        <span class="label-price-total">Cart subtotal: </span> <span class="price-total-w"><span class="price">$165.00</span></span>
                      </div>
                      <div class="button-wrapper">
                        <button class="button btn-gotocart" type="button" title="Go to cart" onclick="setLocation('http://demo.magentech.com/themes/sm_love_fashion/checkout/cart/')">
                          <span> <span>Go to Cart</span>
                          </span>
                        </button>
                        <button class="button btn-checkout" type="button" title="Checkout" onclick="setLocation('http://demo.magentech.com/themes/sm_love_fashion/checkout/onepage/')">
                          <span> <span>Checkout</span>
                          </span>
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="block-hd3-h block-search-hd3">
              <div id="sm_serachbox_pro18361430571451879942" class="sm-serachbox-pro">
                <div class="sm-searbox-content">
                  <form id="search_mini_form" action="http://demo.magentech.com/themes/sm_love_fashion/catalogsearch/result/" method="get">
                    <div class="form-search">
                      <div class="cat-wrapper">
                        <select id="cat" name="cat">
                          <option value="">All Categories</option>
                          <option value="2">Default Category</option>
                        </select>
                      </div>
                      <div class="input-search">
                        <input size="30" id="search" type="text" name="q" class="input-text" onfocus="if(this.value=='Enter your keyword...') this.value='';"
                          onblur="if(this.value=='') this.value='Enter your keyword...';" value="Enter your keyword..." />
                      </div>
                      <button type="submit" title="Search" class="button form-button">
                        <span><span>Search</span></span>
                      </button>
                      <div id="search_autocomplete" class="search-autocomplete"></div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
            <div class="block-hd3-h block-wisht-compare-hd3">
              <div class="wishlist-compare">
                <ul class="links">
                  <li class="first last"><a href="http://demo.magentech.com/themes/sm_love_fashion/wishlist/"
                    title="<span class='hd-mobile'>My Wishlist</span> <span><span class='hidden-n'>(</span><span class='c-item'>0</span><span class='hidden-n'>)</span></span>"><span
                      class='hd-mobile'>My Wishlist</span> <span><span class='hidden-n'>(</span><span class='c-item'>0</span><span class='hidden-n'>)</span></span></a></li>
                </ul>
                <a class="block-compare no-item-compare"><span class="hd-mobile">My Compare</span><span> <span class='hidden-n'>(</span><span class="c-item">0</span><span class='hidden-n'>)</span></span></a>
              </div>
            </div>
            <div class="block-hd3-h block-account-hd3">
              <div class="header-top">
                <div class="toplinks-header">
                  <ul class="links-account">
                    <li class="account-link"><a href="http://demo.magentech.com/themes/sm_love_fashion/customer/account/" title="My Account">My Account</a>
                      <div class="dropdown-link">
                        <ul>
                          <li class="item"><a href="http://demo.magentech.com/themes/sm_love_fashion/customer/account/login/" title="Login">Login</a></li>
                        </ul>
                        <ul>
                          <li><a href="#" title="Account info">Account info</a></li>
                          <li><a href="#" title="Watch list">Watch list</a></li>
                          <li><a href="#" title="Favorites">Favorites</a></li>
                          <li><a href="#" title="Purchase history">Purchase history</a></li>
                          <li><a href="#" title="My collections">My collections</a></li>
                          <li><a href="#" title="Followed searches">Followed searches</a></li>
                          <li><a href="#" title="Messages">Messages</a></li>
                        </ul>
                      </div></li>
                  </ul>
                  <ul class="links">
                    <li class="first last"><a href="http://demo.magentech.com/themes/sm_love_fashion/checkout/" title="Checkout" class="top-link-checkout">Checkout</a></li>
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
