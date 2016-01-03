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
 * Sitemap generated by hbm2java
 */
@Entity
@Table(name = "sitemap", catalog = "lovefashion1")
public class Sitemap implements java.io.Serializable {

	private Integer sitemapId;
	private Store store;
	private String sitemapType;
	private String sitemapFilename;
	private String sitemapPath;
	private Date sitemapTime;

	public Sitemap() {
	}

	public Sitemap(Store store) {
		this.store = store;
	}

	public Sitemap(Store store, String sitemapType, String sitemapFilename, String sitemapPath, Date sitemapTime) {
		this.store = store;
		this.sitemapType = sitemapType;
		this.sitemapFilename = sitemapFilename;
		this.sitemapPath = sitemapPath;
		this.sitemapTime = sitemapTime;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "sitemap_id", unique = true, nullable = false)
	public Integer getSitemapId() {
		return this.sitemapId;
	}

	public void setSitemapId(Integer sitemapId) {
		this.sitemapId = sitemapId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "store_id", nullable = false)
	public Store getStore() {
		return this.store;
	}

	public void setStore(Store store) {
		this.store = store;
	}

	@Column(name = "sitemap_type", length = 32)
	public String getSitemapType() {
		return this.sitemapType;
	}

	public void setSitemapType(String sitemapType) {
		this.sitemapType = sitemapType;
	}

	@Column(name = "sitemap_filename", length = 32)
	public String getSitemapFilename() {
		return this.sitemapFilename;
	}

	public void setSitemapFilename(String sitemapFilename) {
		this.sitemapFilename = sitemapFilename;
	}

	@Column(name = "sitemap_path")
	public String getSitemapPath() {
		return this.sitemapPath;
	}

	public void setSitemapPath(String sitemapPath) {
		this.sitemapPath = sitemapPath;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "sitemap_time", length = 19)
	public Date getSitemapTime() {
		return this.sitemapTime;
	}

	public void setSitemapTime(Date sitemapTime) {
		this.sitemapTime = sitemapTime;
	}

}