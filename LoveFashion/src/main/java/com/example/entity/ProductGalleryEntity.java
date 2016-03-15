package com.example.entity;
// Generated Jan 4, 2016 1:12:11 AM by Hibernate Tools 4.3.1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * ProductGalleryEntity generated by hbm2java
 */
@Entity
@Table(name = "product_gallery_entity", catalog = "lovefashion1")
public class ProductGalleryEntity implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer valueId;
	private GeneralEntity generalEntity;
	private int position;
	private String value;
	private Integer width;
	private Integer height;

	public ProductGalleryEntity() {
	}

	public ProductGalleryEntity(GeneralEntity generalEntity, int position, String value) {
		this.generalEntity = generalEntity;
		this.position = position;
		this.value = value;
	}

	public ProductGalleryEntity(GeneralEntity generalEntity, int position, String value, Integer width,
			Integer height) {
		this.generalEntity = generalEntity;
		this.position = position;
		this.value = value;
		this.width = width;
		this.height = height;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "value_id", unique = true, nullable = false)
	public Integer getValueId() {
		return this.valueId;
	}

	public void setValueId(Integer valueId) {
		this.valueId = valueId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "entity_id", nullable = false)
	public GeneralEntity getGeneralEntity() {
		return this.generalEntity;
	}

	public void setGeneralEntity(GeneralEntity generalEntity) {
		this.generalEntity = generalEntity;
	}

	@Column(name = "position", nullable = false)
	public int getPosition() {
		return this.position;
	}

	public void setPosition(int position) {
		this.position = position;
	}

	@Column(name = "value", nullable = false)
	public String getValue() {
		return this.value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	@Column(name = "width")
	public Integer getWidth() {
		return this.width;
	}

	public void setWidth(Integer width) {
		this.width = width;
	}

	@Column(name = "height")
	public Integer getHeight() {
		return this.height;
	}

	public void setHeight(Integer height) {
		this.height = height;
	}

}
