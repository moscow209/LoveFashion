package com.example.entity;
// Generated Jan 4, 2016 1:12:11 AM by Hibernate Tools 4.3.1

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * WishlistItem generated by hbm2java
 */
@Entity
@Table(name = "wishlist_item", catalog = "lovefashion1")
public class WishlistItem implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer wishlistItemId;
	private ProductEntity productEntity;
	private Wishlist wishlist;
	private Date addedAt;
	private String description;

	public WishlistItem() {
	}

	public WishlistItem(ProductEntity productEntity, Wishlist wishlist) {
		this.productEntity = productEntity;
		this.wishlist = wishlist;
	}

	public WishlistItem(ProductEntity productEntity, Wishlist wishlist, Date addedAt, String description) {
		this.productEntity = productEntity;
		this.wishlist = wishlist;
		this.addedAt = addedAt;
		this.description = description;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "wishlist_item_id", unique = true, nullable = false)
	public Integer getWishlistItemId() {
		return this.wishlistItemId;
	}

	public void setWishlistItemId(Integer wishlistItemId) {
		this.wishlistItemId = wishlistItemId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "product_id", nullable = false)
	public ProductEntity getProductEntity() {
		return this.productEntity;
	}

	public void setProductEntity(ProductEntity productEntity) {
		this.productEntity = productEntity;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "wishlist_id", nullable = false)
	public Wishlist getWishlist() {
		return this.wishlist;
	}

	public void setWishlist(Wishlist wishlist) {
		this.wishlist = wishlist;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "added_at", length = 19)
	public Date getAddedAt() {
		return this.addedAt;
	}

	public void setAddedAt(Date addedAt) {
		this.addedAt = addedAt;
	}

	@Column(name = "description", length = 65535)
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
