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
import javax.persistence.UniqueConstraint;

/**
 * VerificationToken generated by hbm2java
 */
@Entity
@Table(name = "verification_token", catalog = "lovefashion1", uniqueConstraints = @UniqueConstraint(columnNames = "token") )
public class VerificationToken implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer entityId;
	private AdminUser adminUser;
	private CustomerEntity customerEntity;
	private String type;
	private String token;
	private String verifier;
	private Date createdAt;
	private Date expiryDate;

	public VerificationToken() {
	}

	public VerificationToken(String type, String token, Date createdAt, Date expiryDate) {
		this.type = type;
		this.token = token;
		this.createdAt = createdAt;
		this.expiryDate = expiryDate;
	}

	public VerificationToken(AdminUser adminUser, CustomerEntity customerEntity, String type, String token,
			String verifier, Date createdAt, Date expiryDate) {
		this.adminUser = adminUser;
		this.customerEntity = customerEntity;
		this.type = type;
		this.token = token;
		this.verifier = verifier;
		this.createdAt = createdAt;
		this.expiryDate = expiryDate;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "entity_id", unique = true, nullable = false)
	public Integer getEntityId() {
		return this.entityId;
	}

	public void setEntityId(Integer entityId) {
		this.entityId = entityId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "admin_id")
	public AdminUser getAdminUser() {
		return this.adminUser;
	}

	public void setAdminUser(AdminUser adminUser) {
		this.adminUser = adminUser;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "customer_id")
	public CustomerEntity getCustomerEntity() {
		return this.customerEntity;
	}

	public void setCustomerEntity(CustomerEntity customerEntity) {
		this.customerEntity = customerEntity;
	}

	@Column(name = "type", nullable = false, length = 16)
	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Column(name = "token", unique = true, nullable = false)
	public String getToken() {
		return this.token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	@Column(name = "verifier", length = 32)
	public String getVerifier() {
		return this.verifier;
	}

	public void setVerifier(String verifier) {
		this.verifier = verifier;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "created_at", nullable = false, length = 19)
	public Date getCreatedAt() {
		return this.createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "expiry_date", nullable = false, length = 19)
	public Date getExpiryDate() {
		return this.expiryDate;
	}

	public void setExpiryDate(Date expiryDate) {
		this.expiryDate = expiryDate;
	}

}
