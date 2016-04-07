<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div id="catalog-listing">
  <div class="category-products">
    <div class="toolbar-top">
      <div class="toolbar">
        <div class="toolbar-inner">
          <div class="sorter">
            <div class="view-mode-wrap">
              <p class="view-mode">
                <strong title="Grid" class="grid">Grid</strong>&nbsp; <a href="http://demo.magentech.com/themes/sm_love_fashion/mens//cat/clothing/manufacturer/duresta.html?mode=list" title="List"
                  class="list">List</a>&nbsp;
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
                      <option value="http://demo.magentech.com/themes/sm_love_fashion/mens//cat/clothing/manufacturer/duresta.html?dir=asc&amp;order=position" selected="selected">Position</option>
                      <option value="http://demo.magentech.com/themes/sm_love_fashion/mens//cat/clothing/manufacturer/duresta.html?dir=asc&amp;order=name">Name</option>
                      <option value="http://demo.magentech.com/themes/sm_love_fashion/mens//cat/clothing/manufacturer/duresta.html?dir=asc&amp;order=price">Price</option>
                    </select>
                  </div>
                </div>
                <a class="btn-sortby set-desc arrow-down" href="http://demo.magentech.com/themes/sm_love_fashion/mens//cat/clothing/manufacturer/duresta.html?dir=desc&amp;order=position"
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
                  <c:if test="${now.getTime() - item.specialToDate.getTime() <= 0
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
                      <span class="price-label">Regular Price:</span> <span class="price" id="old-price-912"> $<fmt:formatNumber type="number" pattern="0.000" value="${item.price}" />
                      </span>
                    </p>
                    <c:if test="${item.sale == 1}">
                      <c:if test="${now.getTime() - item.specialToDate.getTime() <= 0
                                                && item.specialFromDate.getTime() - now.getTime() <= 0}">
                        <p class="old-price">
                          <span class="price-label">Special Price</span> <span class="price" id="product-price-912">$<fmt:formatNumber type="number" pattern="0.000" value="${item.specialPrice}" /></span>
                        </p>
                      </c:if>
                    </c:if>
                  </div>
                </div>
                <div class="item-addto-wrap">
                  <div class="button-action item-addcart">
                    <a class="button btn-cart" title="Add to Cart" href="javascript:void(0);"> Add to Cart </a> <a class="link-compare" href="#" title="Add to Compare"> Add to Compare </a> <a
                      class="link-wishlist" href="#">Add to Wishlist</a> <input type="hidden" value="${item.sku}">
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
                <strong title="Grid" class="grid">Grid</strong>&nbsp; <a href="http://demo.magentech.com/themes/sm_love_fashion/mens//cat/clothing/manufacturer/duresta.html?mode=list" title="List"
                  class="list">List</a>&nbsp;
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
                      <option value="http://demo.magentech.com/themes/sm_love_fashion/mens//cat/clothing/manufacturer/duresta.html?dir=asc&amp;order=position" selected="selected">Position</option>
                      <option value="http://demo.magentech.com/themes/sm_love_fashion/mens//cat/clothing/manufacturer/duresta.html?dir=asc&amp;order=name">Name</option>
                      <option value="http://demo.magentech.com/themes/sm_love_fashion/mens//cat/clothing/manufacturer/duresta.html?dir=asc&amp;order=price">Price</option>
                    </select>
                  </div>
                </div>
                <a class="btn-sortby set-desc arrow-down" href="http://demo.magentech.com/themes/sm_love_fashion/mens//cat/clothing/manufacturer/duresta.html?dir=desc&amp;order=position"
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