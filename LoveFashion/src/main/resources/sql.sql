DROP DATABASE IF EXISTS lovefashion1;

create database lovefashion1;

use lovefashion1;

CREATE TABLE `admin_user` (
    `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'User ID',
    `firstname` varchar(32) DEFAULT NULL COMMENT 'User First Name',
    `lastname` varchar(32) DEFAULT NULL COMMENT 'User Last Name',
    `email` varchar(128) DEFAULT NULL COMMENT 'User Email',
    `username` varchar(40) DEFAULT NULL COMMENT 'User Login',
    `password` varchar(255) DEFAULT NULL COMMENT 'User Password',
    `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'User Created Time',
    `logdate` timestamp NULL DEFAULT NULL COMMENT 'User Last Login Time',
    `lognum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'User Login Number',
    `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'User Is Active',
    PRIMARY KEY (`user_id`),
    UNIQUE KEY `UNQ_ADMIN_USER_USERNAME` (`username`, `email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Admin';


CREATE TABLE `admin_role` (
    `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Role ID',
    `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Role ID',
    `tree_level` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Tree Level',
    `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Sort Order',
    `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID',
    `role_name` varchar(50) DEFAULT NULL COMMENT 'Role Name',
    PRIMARY KEY (`role_id`),
    KEY `IDX_ADMIN_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`),
    CONSTRAINT `FK_ADMIN_RULE_ROLE_ID_ADMIN_ROLE_ADMIN_USER` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Admin Role Table';


CREATE TABLE `admin_rule` (
    `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule ID',
    `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Role ID',
    `resource_id` varchar(255) NOT NULL COMMENT 'Resource ID',
    `privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
    `permission` varchar(10) DEFAULT NULL COMMENT 'Permission',
    PRIMARY KEY (`rule_id`),
    CONSTRAINT `FK_ADMIN_RULE_ROLE_ID_ADMIN_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Admin Rule Table';


CREATE TABLE `customer_group` (
    `customer_group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Customer Group Id',
    `customer_group_code` varchar(32) NOT NULL COMMENT 'Customer Group Code',
    `limit_score` int(10) unsigned  DEFAULT NULL  COMMENT 'Accumulate Score',
    PRIMARY KEY (`customer_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Customer Group';


CREATE TABLE `customer_entity` (
    `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
    `firstname` varchar(32) DEFAULT NULL COMMENT 'User First Name',
    `lastname` varchar(32) DEFAULT NULL COMMENT 'User Last Name',
    `gender` smallint(5) unsigned DEFAULT NULL COMMENT 'Gender',
    `email` varchar(128) DEFAULT NULL COMMENT 'User Email',
    `password` varchar(60) DEFAULT NULL COMMENT 'User Password',
    `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group Id',
    `score` int(10) unsigned  DEFAULT NULL  COMMENT 'Accumulate Score',
    `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
    `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At',
    `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active',
    `logdate` timestamp NULL DEFAULT NULL COMMENT 'User Last Login Time',
    `lognum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'User Login Number',
    `default_billing` int(10) unsigned DEFAULT NULL COMMENT 'Billing Address Id',
    `default_shipping` int(10) unsigned DEFAULT NULL COMMENT 'Billing Shipping Id',
    PRIMARY KEY (`entity_id`),
    KEY `IDX_CUSTOMER_ENTITY_EMAIL` (`email`),
    KEY `IDX_CUSTOMER_ENTITY_CUSTOMER_GROUP` (`group_id`),
    CONSTRAINT `FK_CUSTOMER_ENTITY_ID_CUSTOMER_GROUP` FOREIGN KEY (`group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity';


CREATE TABLE `customer_address_entity` (
    `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
    `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
    `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
    `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At',
    `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active',
    `street` varchar(100) DEFAULT NULL COMMENT 'Street',
    `city` varchar(100) DEFAULT NULL COMMENT 'City',
    `region` varchar(100) DEFAULT NULL COMMENT 'Region',
    `region_id` varchar(20) DEFAULT NULL COMMENT 'Region Id',
    `country` varchar(100) DEFAULT NULL COMMENT 'Country',
    `country_id` varchar(20) DEFAULT NULL COMMENT 'Country Id',
    `zip_code` varchar(10) DEFAULT NULL COMMENT 'zip_code',
    `firstname` varchar(100) DEFAULT NULL COMMENT 'First name',
    `lastname` varchar(100) DEFAULT NULL COMMENT 'Last name',
    `phone` varchar(20) DEFAULT NULL COMMENT 'Phone',
    PRIMARY KEY (`entity_id`),
    KEY `IDX_CUSTOMER_ADDRESS_ENTITY_PARENT_ID` (`parent_id`),
    CONSTRAINT `FK_CUSTOMER_ADDRESS_ENTITY_PARENT_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Customer Address Entity';


CREATE TABLE `verification_token` (
    `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
    `admin_id` int(10) unsigned DEFAULT NULL COMMENT 'Admin user ID',
    `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer user ID',
    `type` varchar(16) NOT NULL COMMENT 'Token Type',
    `token` varchar(255) NOT NULL COMMENT 'Token',
    `verifier` varchar(32) DEFAULT NULL COMMENT 'Token Verifier',
    `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Token creation timestamp',
    `expiry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Expiry token timestamp',
    PRIMARY KEY (`entity_id`),
    UNIQUE KEY `UNQ_OAUTH_TOKEN_TOKEN` (`token`),
    KEY `FK_OAUTH_TOKEN_ADMIN_ID_ADMIN_USER_USER_ID` (`admin_id`),
    KEY `FK_OAUTH_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` (`customer_id`),
    CONSTRAINT `FK_OAUTH_TOKEN_ADMIN_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`admin_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `FK_OAUTH_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Tokens';



CREATE TABLE `store` (
    `store_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Store Id',
    `name` varchar(255) NOT NULL COMMENT 'Store Name',
    `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Sort Order',
    `is_active` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Activity',
    PRIMARY KEY (`store_id`),
    KEY `IDX_CORE_STORE_IS_ACTIVE_SORT_ORDER` (`is_active`,`sort_order`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Stores';


CREATE TABLE `sitemap` (
    `sitemap_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Sitemap Id',
    `sitemap_type` varchar(32) DEFAULT NULL COMMENT 'Sitemap Type',
    `sitemap_filename` varchar(32) DEFAULT NULL COMMENT 'Sitemap Filename',
    `sitemap_path` varchar(255) DEFAULT NULL COMMENT 'Sitemap Path',
    `sitemap_time` timestamp NULL DEFAULT NULL COMMENT 'Sitemap Time',
    `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
    PRIMARY KEY (`sitemap_id`),
    KEY `IDX_SITEMAP_STORE_ID` (`store_id`),
    CONSTRAINT `FK_SITEMAP_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Google Sitemap';


CREATE TABLE `category_entity` (
    `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
    `parent_id` int(10) unsigned NULL COMMENT 'parent_id',
    `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'created_at',
    `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'updated_at',
    `path` varchar(255) NOT NULL DEFAULT '' COMMENT 'path',
    `position` int(11) NOT NULL DEFAULT '0' COMMENT 'position',
    `level` int(11) NOT NULL DEFAULT '0' COMMENT 'level',
    `children_count` int(11) NOT NULL DEFAULT '0' COMMENT 'children_count',
    `description` text COMMENT 'Description',
    `image` varchar(255) DEFAULT NULL COMMENT 'Image',
    `include_in_menu` int(11) DEFAULT NULL COMMENT 'Include in Navigation Menu',
    `is_active` int(11) DEFAULT NULL COMMENT 'Is Active',
    `meta_description` text COMMENT 'Meta Description',
    `meta_keywords` text COMMENT 'Meta Keywords',
    `meta_title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
    `name` varchar(255) DEFAULT NULL COMMENT 'Name',
    `name_en` varchar(255) DEFAULT NULL COMMENT 'Name English',
    `thumbnail` varchar(255) DEFAULT NULL COMMENT 'Thumbnail Image',
    `url_key` varchar(255) DEFAULT NULL COMMENT 'Url Key',
    `url_path` varchar(255) DEFAULT NULL COMMENT 'Url Path',
    PRIMARY KEY (`entity_id`),
    KEY `IDX_CATALOG_CATEGORY_FLAT_PATH` (`path`),
    KEY `IDX_CATALOG_CATEGORY_FLAT_URL_KEY` (`url_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category';


CREATE TABLE `manufacturer` (
    `entity_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
    `manufacturer` varchar(255) DEFAULT NULL COMMENT 'manufacturer',
    `meta_description` varchar(255) DEFAULT NULL COMMENT 'meta_description',
    `url_key` varchar(255) DEFAULT NULL COMMENT 'url_key',
    `url_path` varchar(255) DEFAULT NULL COMMENT 'url_path',
    `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'created_at',
    PRIMARY KEY (`entity_id`)
)  ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Manufacturer';


CREATE TABLE `general_entity` (
    `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'entity_id',
    `tax_class_id` int(10) unsigned DEFAULT NULL COMMENT 'tax_class_id',
    `material` varchar(255) DEFAULT NULL COMMENT 'Material',
    `climate` varchar(255) DEFAULT NULL COMMENT 'Climate',
    `pattern` varchar(255) DEFAULT NULL COMMENT 'Pattern',
    `collar` varchar(255) DEFAULT NULL COMMENT 'Collar',
    `sleeve` varchar(255) DEFAULT NULL COMMENT 'Sleeve',
    `active` varchar(255) DEFAULT NULL COMMENT 'Active',
    `weight` double DEFAULT NULL COMMENT 'weight',
    `meta_description` varchar(255) DEFAULT NULL COMMENT 'meta_description',
    `meta_keyword` text COMMENT 'meta_keyword',
    `meta_title` varchar(255) DEFAULT NULL COMMENT 'meta_title',
    `description` text COMMENT 'description',
    `url_key` varchar(255) DEFAULT NULL COMMENT 'url_key',
    `url_path` varchar(255) DEFAULT NULL COMMENT 'url_path',
    `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'created_at',
    `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'updated_at',
    `is_new` smallint(5) DEFAULT NULL COMMENT 'is_new',
    `status` smallint(5) DEFAULT NULL COMMENT 'Status',
    `news_from_date` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'news_from_date',
    `news_to_date` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'news_to_date',
    `image` varchar(255) DEFAULT NULL COMMENT 'image',
    `sale` SMALLINT(5) NULL DEFAULT '0' COMMENT 'image_label',
    `special_price` double DEFAULT NULL COMMENT 'sale',
    `special_from_date` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'special_price',
    `special_to_date` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'special_from_date',
    PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='General Entity';


CREATE TABLE `product_entity` (
    `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'entity_id',
    `general_id` int(10) unsigned NOT NULL COMMENT 'general_id',
    `name` varchar(255) DEFAULT NULL COMMENT 'Name',
    `parentage` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'parentage',
    `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
    `parent_sku` varchar(64) DEFAULT NULL COMMENT 'parent_sku',
    `price` double DEFAULT NULL COMMENT 'price',
    `color` varchar(255) DEFAULT NULL COMMENT 'color_value',
    `size` varchar(255) DEFAULT NULL COMMENT 'size_value',
    `manufacturer` int(11) DEFAULT NULL COMMENT 'manufacturer',
    PRIMARY KEY (`entity_id`),
    KEY `IDX_CATALOG_PRODUCT_ENTITY_SKU` (`sku`),
    KEY `IDX_CATALOG_PRODUCT_FLAT_1_COLOR` (`color`),
    KEY `IDX_CATALOG_PRODUCT_FLAT_1_SIZE` (`size`),
    KEY `IDX_CATALOG_PRODUCT_FLAT_1_NAME` (`name`),
    KEY `IDX_CATALOG_PRODUCT_FLAT_1_NANU` (`manufacturer`),
    KEY `IDX_CATALOG_PRODUCT_FLAT_1_PRICE` (`price`),
    CONSTRAINT `FK_PRO_GENE_ENTT_ID` FOREIGN KEY (`general_id`) REFERENCES `general_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Entity';


CREATE TABLE `category_product` (
    `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
    `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
    PRIMARY KEY (`category_id`,`product_id`),
    CONSTRAINT `FK_CAT_CTGR_PRD_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `FK_CAT_CTGR_PRD_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Category Linkage Table';


CREATE TABLE `product_gallery_entity` (
    `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
    `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
    `position` int(11) NOT NULL COMMENT 'Position',
    `value` varchar(255) NOT NULL COMMENT 'Value',
    `width` int(11) NULL COMMENT 'width',
    `height` int(11) NULL COMMENT 'height',
    PRIMARY KEY (`value_id`),
    CONSTRAINT `FK_CAT_PRD_ENTT_GLR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `general_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
)  ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Gallery Attribute Backend Table';


CREATE TABLE `product_relation` (
    `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
    `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
    PRIMARY KEY (`parent_id`,`child_id`),
    KEY `IDX_CATALOG_PRODUCT_RELATION_CHILD_ID` (`child_id`),
    CONSTRAINT `FK_CAT_PRD_RELATION_CHILD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`child_id`) REFERENCES `product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `FK_CAT_PRD_RELATION_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Relation Table';


CREATE TABLE `inventory_stock` (
    `stock_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Stock Id',
    `stock_name` varchar(255) DEFAULT NULL COMMENT 'Stock Name',
    PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock';


CREATE TABLE `inventory_stock_item` (
    `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
    `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
    `stock_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Stock Id',
    `qty` int(10) NOT NULL DEFAULT '0' COMMENT 'Qty',
    `min_qty` int(10) NOT NULL DEFAULT '0' COMMENT 'Min Qty',
    `min_sale_qty` int(10) NOT NULL DEFAULT '0' COMMENT 'Min Sale Qty',
    `max_sale_qty` int(10) NOT NULL DEFAULT '0' COMMENT 'Max Sale Qty',
    `is_in_stock` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is In Stock',
    `notify_stock_qty` int(10) DEFAULT NULL COMMENT 'Notify Stock Qty',
    PRIMARY KEY (`item_id`),
    UNIQUE KEY `UNQ_CATALOGINVENTORY_STOCK_ITEM_PRODUCT_ID_STOCK_ID` (`product_id`,`stock_id`),
    KEY `IDX_CATALOGINVENTORY_STOCK_ITEM_PRODUCT_ID` (`product_id`),
    KEY `IDX_CATALOGINVENTORY_STOCK_ITEM_STOCK_ID` (`stock_id`),
    CONSTRAINT `FK_CATINV_STOCK_ITEM_STOCK_ID_CATINV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `inventory_stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `FK_CATINV_STOCK_ITEM_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Item';


CREATE TABLE `inventory_stock_status` (
    `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
    `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
    `qty` int(10) NOT NULL DEFAULT '0' COMMENT 'Qty',
    `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
    PRIMARY KEY (`product_id`,`stock_id`),
    KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_STOCK_ID` (`stock_id`),
    CONSTRAINT `FK_CATINV_STOCK_STS_STOCK_ID_CATINV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `inventory_stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `FK_CATINV_STOCK_STS_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status';


CREATE TABLE `wishlist` (
    `wishlist_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Wishlist ID',
    `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer ID',
    `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Last updated date',
    `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create date',
    PRIMARY KEY (`wishlist_id`),
    UNIQUE KEY `UNQ_WISHLIST_CUSTOMER_ID` (`customer_id`),
    CONSTRAINT `FK_WISHLIST_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist main Table';


CREATE TABLE `wishlist_item` (
    `wishlist_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Wishlist item ID',
    `wishlist_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Wishlist ID',
    `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
    `added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Add date and time',
    `description` text COMMENT 'Short description of wish list item',
    PRIMARY KEY (`wishlist_item_id`),
    KEY `IDX_WISHLIST_ITEM_WISHLIST_ID` (`wishlist_id`),
    KEY `IDX_WISHLIST_ITEM_PRODUCT_ID` (`product_id`),
    CONSTRAINT `FK_WISHLIST_ITEM_WISHLIST_ID_WISHLIST_WISHLIST_ID` FOREIGN KEY (`wishlist_id`) REFERENCES `wishlist` (`wishlist_id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `FK_WISHLIST_ITEM_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist items';


CREATE TABLE `tax_class` (
    `class_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Class Id',
    `class_name` varchar(255) NOT NULL COMMENT 'Class Name',
    PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Tax Class';


CREATE TABLE `tax_calculation_rate` (
    `tax_calculation_rate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Id',
    `zip_code` varchar(20) NOT NULL COMMENT 'Zip code',
    `tax_country_id` varchar(2) NOT NULL COMMENT 'Tax Country Id',
    `tax_region_id` int(11) NOT NULL COMMENT 'Tax Region Id',
    `code` varchar(255) NOT NULL COMMENT 'Code',
    `rate` double NOT NULL COMMENT 'Rate',
    PRIMARY KEY (`tax_calculation_rate_id`),
    KEY `IDX_TAX_CALC_RATE_TAX_COUNTRY_ID_TAX_REGION_ID_TAX_POSTCODE` (`tax_country_id`,`tax_region_id`),
    KEY `IDX_TAX_CALCULATION_RATE_CODE` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate';


CREATE TABLE `tax_calculation_rule` (
    `tax_calculation_rule_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rule Id',
    `code` varchar(255) NOT NULL COMMENT 'Code',
    `priority` int(11) NOT NULL COMMENT 'Priority',
    PRIMARY KEY (`tax_calculation_rule_id`),
    KEY `IDX_TAX_CALCULATION_RULE_CODE` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rule';


CREATE TABLE `tax_calculation` (
    `tax_calculation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Id',
    `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
    `tax_calculation_rule_id` int(11) NOT NULL COMMENT 'Tax Calculation Rule Id',
    `tax_class_id` smallint(6) NOT NULL COMMENT 'Tax Class Id',
    PRIMARY KEY (`tax_calculation_id`),
    KEY `IDX_TAX_CALCULATION_TAX_CALCULATION_RULE_ID` (`tax_calculation_rule_id`),
    KEY `IDX_TAX_CALCULATION_TAX_CALCULATION_RATE_ID` (`tax_calculation_rate_id`),
    KEY `IDX_TAX_CALCULATION_PRODUCT_TAX_CLASS_ID` (`tax_class_id`),
    CONSTRAINT `FK_TAX_CALCULATION_PRODUCT_TAX_CLASS_ID_TAX_CLASS_CLASS_ID` FOREIGN KEY (`tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `FK_TAX_CALC_TAX_CALC_RATE_ID_TAX_CALC_RATE_TAX_CALC_RATE_ID` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `FK_TAX_CALC_TAX_CALC_RULE_ID_TAX_CALC_RULE_TAX_CALC_RULE_ID` FOREIGN KEY (`tax_calculation_rule_id`) REFERENCES `tax_calculation_rule` (`tax_calculation_rule_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Tax Calculation';


CREATE TABLE `salesrule` (
    `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Id',
    `name` varchar(255) DEFAULT NULL COMMENT 'Name',
    `description` text COMMENT 'Description',
    `from_date` date DEFAULT NULL,
    `to_date` date DEFAULT NULL,
    `uses_per_customer` int(11) NOT NULL DEFAULT '0' COMMENT 'Uses Per Customer',
    `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
    `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
    `actions_serialized` mediumtext COMMENT 'Actions Serialized',
    `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
    `discount_amount` double NOT NULL DEFAULT '0' COMMENT 'Discount Amount',
    `discount_qty` int DEFAULT NULL COMMENT 'Discount Qty',
    `discount_step` int(10) unsigned NOT NULL COMMENT 'Discount Step',
    `simple_free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Simple Free Shipping',
    `apply_to_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Apply To Shipping',
    `coupon_type` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Coupon Type',
    PRIMARY KEY (`rule_id`),
    KEY `IDX_SALESRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`to_date`,`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule';


CREATE TABLE `salesrule_customer` (
    `rule_customer_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Customer Id',
    `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
    `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Id',
    `times_used` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
    PRIMARY KEY (`rule_customer_id`),
    KEY `IDX_SALESRULE_CUSTOMER_RULE_ID_CUSTOMER_ID` (`rule_id`,`customer_id`),
    CONSTRAINT `FK_SALESRULE_CUSTOMER_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `FK_SALESRULE_CUSTOMER_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Customer';


CREATE TABLE `salesrule_customer_group` (
    `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
    `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
    PRIMARY KEY (`rule_id`,`customer_group_id`),
    KEY `IDX_SALESRULE_CUSTOMER_GROUP_RULE_ID` (`rule_id`),
    KEY `IDX_SALESRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`),
    CONSTRAINT `FK_SALESRULE_CUSTOMER_GROUP_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `FK_SALESRULE_CSTR_GROUP_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Customer Groups Relations';


CREATE TABLE `salesrule_coupon` (
    `coupon_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Coupon Id',
    `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
    `code` varchar(255) DEFAULT NULL COMMENT 'Code',
    `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
    `expiration_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Expiration Date',
    `is_primary` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Primary',
    PRIMARY KEY (`coupon_id`),
    UNIQUE KEY `UNQ_SALESRULE_COUPON_CODE` (`code`),
    UNIQUE KEY `UNQ_SALESRULE_COUPON_RULE_ID_IS_PRIMARY` (`rule_id`,`is_primary`),
    KEY `IDX_SALESRULE_COUPON_RULE_ID` (`rule_id`),
    CONSTRAINT `FK_SALESRULE_COUPON_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon';


CREATE TABLE `salesrule_coupon_usage` (
    `coupon_id` int(10) unsigned NOT NULL COMMENT 'Coupon Id',
    `customer_id` int(10) unsigned NOT NULL COMMENT 'Customer Id',
    `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
    PRIMARY KEY (`coupon_id`,`customer_id`),
    KEY `IDX_SALESRULE_COUPON_USAGE_COUPON_ID` (`coupon_id`),
    KEY `IDX_SALESRULE_COUPON_USAGE_CUSTOMER_ID` (`customer_id`),
    CONSTRAINT `FK_SALESRULE_COUPON_USAGE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `FK_SALESRULE_COUPON_USAGE_COUPON_ID_SALESRULE_COUPON_COUPON_ID` FOREIGN KEY (`coupon_id`) REFERENCES `salesrule_coupon` (`coupon_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon Usage';


CREATE TABLE `sales_order` (
    `entity_id` varchar(60) NOT NULL COMMENT 'Entity Id',
    `status` varchar(32) DEFAULT NULL COMMENT 'Status',
    `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
    `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
    `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
    `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
    `customer_firstname` varchar(255) DEFAULT NULL COMMENT 'Customer Firstname',
    `customer_lastname` varchar(255) DEFAULT NULL COMMENT 'Customer Lastname',
    `total_weight` double DEFAULT NULL COMMENT 'Total Weight',
    `discount_amount` double DEFAULT NULL COMMENT 'Discount Amount',
    `discount_canceled` double DEFAULT NULL COMMENT 'Discount Canceled',
    `discount_invoiced` double DEFAULT NULL COMMENT 'Discount Invoiced',
    `discount_refunded` double DEFAULT NULL COMMENT 'Discount Refunded',
    `grand_total` double DEFAULT NULL COMMENT 'Grand Total',
    `shipping_amount` double DEFAULT NULL COMMENT 'Shipping Amount',
    `shipping_canceled` double DEFAULT NULL COMMENT 'Shipping Canceled',
    `shipping_invoiced` double DEFAULT NULL COMMENT 'Shipping Invoiced',
    `shipping_refunded` double DEFAULT NULL COMMENT 'Shipping Refunded',
    `subtotal` double DEFAULT NULL COMMENT 'Subtotal',
    `subtotal_canceled` double DEFAULT NULL COMMENT 'Subtotal Canceled',
    `subtotal_invoiced` double DEFAULT NULL COMMENT 'Subtotal Invoiced',
    `subtotal_refunded` double DEFAULT NULL COMMENT 'Subtotal Refunded',
    `tax_amount` double DEFAULT NULL COMMENT 'Tax Amount',
    `tax_canceled` double DEFAULT NULL COMMENT 'Tax Canceled',
    `tax_invoiced` double DEFAULT NULL COMMENT 'Tax Invoiced',
    `tax_refunded` double DEFAULT NULL COMMENT 'Tax Refunded',
    `total_canceled` double DEFAULT NULL COMMENT 'Total Canceled',
    `total_invoiced` double DEFAULT NULL COMMENT 'Total Invoiced',
    `total_offline_refunded` double DEFAULT NULL COMMENT 'Total Offline Refunded',
    `total_online_refunded` double DEFAULT NULL COMMENT 'Total Online Refunded',
    `total_paid` double DEFAULT NULL COMMENT 'Total Paid',
    `total_qty_ordered` double DEFAULT NULL COMMENT 'Total Qty Ordered',
    `total_refunded` double DEFAULT NULL COMMENT 'Total Refunded',
    `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
    `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
    `shipping_method` varchar(255) DEFAULT NULL COMMENT 'Shipping Method',
    `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
    `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At',
    `total_item_count` smallint(5) unsigned NOT NULL COMMENT 'Total Item Count',
    `tax_percent` double DEFAULT NULL COMMENT 'tax_percent',
    `tracking_numbers` int(10) NULL DEFAULT '0' COMMENT 'tracking_numbers',
    PRIMARY KEY (`entity_id`),
    KEY `IDX_SALES_FLAT_ORDER_STATUS` (`status`),
    KEY `IDX_SALES_FLAT_ORDER_STORE_ID` (`store_id`),
    KEY `IDX_SALES_FLAT_ORDER_CREATED_AT` (`created_at`),
    KEY `IDX_SALES_FLAT_ORDER_CUSTOMER_ID` (`customer_id`),
    KEY `IDX_SALES_FLAT_ORDER_UPDATED_AT` (`updated_at`),
    CONSTRAINT `FK_SALES_FLAT_ORDER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT `FK_SALES_FLAT_ORDER_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order';


CREATE TABLE `sales_order_item` (
    `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
    `order_id` varchar(60) NOT NULL DEFAULT '0' COMMENT 'Order Id',
    `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
    `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT 'Created At',
    `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At',
    `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
    `qty_invoiced` double DEFAULT '0.0000' COMMENT 'Qty Invoiced',
    `qty_ordered` double DEFAULT '0.0000' COMMENT 'Qty Ordered',
    `qty_refunded` double DEFAULT '0.0000' COMMENT 'Qty Refunded',
    `qty_shipped` double DEFAULT '0.0000' COMMENT 'Qty Shipped',
    `original_price` double DEFAULT NULL COMMENT 'Original Price',
    `tax_percent` double DEFAULT '0.0000' COMMENT 'Tax Percent',
    `tax_amount` double DEFAULT '0.0000' COMMENT 'Tax Amount',
    `discount_percent` double DEFAULT '0.0000' COMMENT 'Discount Percent',
    `discount_amount` double DEFAULT '0.0000' COMMENT 'Discount Amount',
    `discount_invoiced` double DEFAULT '0.0000' COMMENT 'Discount Invoiced',
    `amount_refunded` double DEFAULT '0.0000' COMMENT 'Amount Refunded',
    `row_total` double NULL DEFAULT '0.0000' COMMENT 'Row Total',
    PRIMARY KEY (`item_id`),
    KEY `IDX_SALES_FLAT_ORDER_ITEM_ORDER_ID` (`order_id`),
    KEY `IDX_SALES_FLAT_ORDER_ITEM_STORE_ID` (`store_id`),
    CONSTRAINT `FK_SALES_FLAT_ORDER_ITEM_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `FK_CATINV_STOCK_ITEM_PRD_ID_CAT_PRD_ENTT_ENTT_ID1` FOREIGN KEY (`product_id`) REFERENCES `product_entity` (`entity_id`),
    CONSTRAINT `FK_SALES_FLAT_ORDER_ITEM_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Item';


CREATE TABLE `sales_order_address` (
    `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
    `parent_id` varchar(60) DEFAULT NULL COMMENT 'Parent Id',
    `region_id` int(11) DEFAULT NULL COMMENT 'Region Id',
    `region` varchar(255) DEFAULT NULL COMMENT 'Region',
    `lastname` varchar(255) DEFAULT NULL COMMENT 'Lastname',
    `street` varchar(255) DEFAULT NULL COMMENT 'Street',
    `city` varchar(255) DEFAULT NULL COMMENT 'City',
    `telephone` varchar(255) DEFAULT NULL COMMENT 'Telephone',
    `country_id` varchar(20) DEFAULT NULL COMMENT 'Country Id',
    `firstname` varchar(255) DEFAULT NULL COMMENT 'Firstname',
    `address_type` varchar(255) DEFAULT NULL COMMENT 'Address Type',
    `country` varchar(255) DEFAULT NULL COMMENT 'Company',
    `zip_code` varchar(20) NOT NULL COMMENT 'zip_code',
    PRIMARY KEY (`entity_id`),
    CONSTRAINT `FK_SALES_FLAT_ORDER_ADDRESS_PARENT_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Address';


CREATE TABLE `sales_order_status_history` (
    `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
    `parent_id` varchar(60) NOT NULL COMMENT 'Parent Id',
    `comment` text COMMENT 'Comment',
    `status` varchar(32) DEFAULT NULL COMMENT 'Status',
    `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
    `entity_name` varchar(32) DEFAULT NULL COMMENT 'Shows what entity history is bind to.',
    PRIMARY KEY (`entity_id`),
    KEY `IDX_SALES_FLAT_ORDER_STATUS_HISTORY_PARENT_ID` (`parent_id`),
    KEY `IDX_SALES_FLAT_ORDER_STATUS_HISTORY_CREATED_AT` (`created_at`),
    CONSTRAINT `FK_CE7C71E74CB74DDACED337CEE6753D5E` FOREIGN KEY (`parent_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Status History';


CREATE TABLE `sales_order_payment` (
    `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
    `parent_id` varchar(60) NOT NULL COMMENT 'Parent Id',
    `amount_canceled` double DEFAULT NULL COMMENT 'Amount Canceled',
    `amount_paid` double DEFAULT NULL COMMENT 'Amount Paid',
    `amount_ordered` double DEFAULT NULL COMMENT 'Amount Ordered',
    `shipping_amount` double DEFAULT NULL COMMENT 'Shipping Amount',
    `base_amount_paid_online` double DEFAULT NULL COMMENT 'Base Amount Paid Online',
    `base_amount_refunded_online` double DEFAULT NULL COMMENT 'Base Amount Refunded Online',
    `shipping_refunded` double DEFAULT NULL COMMENT 'Shipping Refunded',
    `method` varchar(255) DEFAULT NULL COMMENT 'Method',
    PRIMARY KEY (`entity_id`),
    KEY `IDX_SALES_FLAT_ORDER_PAYMENT_PARENT_ID` (`parent_id`),
    CONSTRAINT `FK_SALES_FLAT_ORDER_PAYMENT_PARENT_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Payment';


CREATE TABLE `sales_payment_transaction` (
    `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Transaction Id',
    `payment_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
    `order_id` varchar(60) NOT NULL COMMENT 'Order Id',
    `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
    `txn_type` varchar(15) DEFAULT NULL COMMENT 'Txn Type',
    `st` varchar(255) NOT NULL COMMENT 'status',
    `additional_information` text COMMENT 'Additional Information',
    `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
    PRIMARY KEY (`transaction_id`),
    UNIQUE KEY `UNQ_SALES_PAYMENT_TRANSACTION_ORDER_ID_PAYMENT_ID_TXN_ID` (`order_id`,`txn_id`,`payment_id`),
    KEY `IDX_SALES_PAYMENT_TRANSACTION_ORDER_ID` (`order_id`),
    CONSTRAINT `FK_DA51A10B2405B64A4DAEF77A64F0DAAD` FOREIGN KEY (`payment_id`) REFERENCES `sales_order_payment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `FK_SALES_PAYMENT_TRANSACTION_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Payment Transaction';


CREATE TABLE `sales_invoice` (
    `entity_id` varchar(60) NOT NULL COMMENT 'Entity Id',
    `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
    `tax_amount` double DEFAULT NULL COMMENT 'Tax Amount',
    `discount_amount` double DEFAULT NULL COMMENT 'Base Discount Amount',
    `grand_total` double DEFAULT NULL COMMENT 'Grand Total',
    `shipping_amount` double DEFAULT NULL COMMENT 'Shipping Amount',
    `subtotal_incl_tax` double DEFAULT NULL COMMENT 'Subtotal Incl Tax',
    `total_qty` int(10) DEFAULT NULL COMMENT 'Total Qty',
    `subtotal` double DEFAULT NULL COMMENT 'Subtotal',
    `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
    `order_id` varchar(60) NOT NULL COMMENT 'Order Id',
    `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
    `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
    `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At',
    PRIMARY KEY (`entity_id`),
    KEY `IDX_SALES_FLAT_INVOICE_STORE_ID` (`store_id`),
    KEY `IDX_SALES_FLAT_INVOICE_ORDER_ID` (`order_id`),
    CONSTRAINT `FK_SALES_FLAT_INVOICE_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `FK_SALES_FLAT_INVOICE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice';


CREATE TABLE `sales_invoice_item` (
    `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
    `parent_id` varchar(60) NOT NULL COMMENT 'Parent Id',
    `tax_amount` double DEFAULT NULL COMMENT 'Tax Amount',
    `discount_amount` double DEFAULT NULL COMMENT 'Discount Amount',
    `row_total` double DEFAULT NULL COMMENT 'Row Total',
    `price_incl_tax` double DEFAULT NULL COMMENT 'Price Incl Tax',
    `qty` int(10) DEFAULT NULL COMMENT 'Qty',
    `price` double DEFAULT NULL COMMENT 'Price',
    `row_total_incl_tax` double DEFAULT NULL COMMENT 'Row Total Incl Tax',
    `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
    `name` varchar(255) DEFAULT NULL COMMENT 'Name',
    `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
    PRIMARY KEY (`entity_id`),
    KEY `IDX_SALES_FLAT_INVOICE_ITEM_PARENT_ID` (`parent_id`),
    CONSTRAINT `FK_SALES_FLAT_INVOICE_ITEM_PARENT_ID_SALES_FLAT_INVOICE_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Item';


CREATE TABLE `sales_shipment` (
    `entity_id` varchar(60) NOT NULL COMMENT 'Entity Id',
    `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
    `total_weight` double DEFAULT NULL COMMENT 'Total Weight',
    `total_qty` int(10) DEFAULT NULL COMMENT 'Total Qty',
    `order_id` varchar(60) NOT NULL COMMENT 'Order Id',
    `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
    `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
    `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
    `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
    `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At',
    PRIMARY KEY (`entity_id`),
    KEY `IDX_SALES_FLAT_SHIPMENT_STORE_ID` (`store_id`),
    KEY `IDX_SALES_FLAT_SHIPMENT_ORDER_ID` (`order_id`),
    CONSTRAINT `FK_SALES_FLAT_SHIPMENT_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `FK_SALES_FLAT_SHIPMENT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment';


CREATE TABLE `sales_shipment_item` (
    `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
    `parent_id` varchar(60) NOT NULL COMMENT 'Parent Id',
    `row_total` double DEFAULT NULL COMMENT 'Row Total',
    `price` double DEFAULT NULL COMMENT 'Price',
    `weight` double DEFAULT NULL COMMENT 'Weight',
    `qty` int(10) DEFAULT NULL COMMENT 'Qty',
    `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
    `name` varchar(255) DEFAULT NULL COMMENT 'Name',
    `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
    PRIMARY KEY (`entity_id`),
    KEY `IDX_SALES_FLAT_SHIPMENT_ITEM_PARENT_ID` (`parent_id`),
    CONSTRAINT `FK_3AECE5007D18F159231B87E8306FC02A` FOREIGN KEY (`parent_id`) REFERENCES `sales_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Item';


CREATE TABLE `sales_creditmemo` (
    `entity_id` varchar(60) NOT NULL COMMENT 'Entity Id',
    `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
    `grand_total` double DEFAULT NULL COMMENT 'Grand Total',
    `shipping_amount` double DEFAULT NULL COMMENT 'Shipping Amount',
    `subtotal_incl_tax` double DEFAULT NULL COMMENT 'Subtotal Incl Tax',
    `discount_amount` double DEFAULT NULL COMMENT 'Discount Amount',
    `subtotal` double DEFAULT NULL COMMENT 'Subtotal',
    `tax_amount` double DEFAULT NULL COMMENT 'Tax Amount',
    `order_id` varchar(60) NOT NULL COMMENT 'Order Id',
    `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
    `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
    `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
    `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At',
    PRIMARY KEY (`entity_id`),
    KEY `IDX_SALES_FLAT_CREDITMEMO_STORE_ID` (`store_id`),
    KEY `IDX_SALES_FLAT_CREDITMEMO_ORDER_ID` (`order_id`),
    CONSTRAINT `FK_SALES_FLAT_CREDITMEMO_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `FK_SALES_FLAT_CREDITMEMO_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo';


CREATE TABLE `sales_creditmemo_item` (
    `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
    `parent_id` varchar(60) NOT NULL COMMENT 'Parent Id',
    `tax_amount` double DEFAULT NULL COMMENT 'Tax Amount',
    `discount_amount` double DEFAULT NULL COMMENT 'Discount Amount',
    `row_total` double DEFAULT NULL COMMENT 'Row Total',
    `price_incl_tax` double DEFAULT NULL COMMENT 'Price Incl Tax',
    `qty` int(10) DEFAULT NULL COMMENT 'Qty',
    `price` double DEFAULT NULL COMMENT 'Price',
    `row_total_incl_tax` double DEFAULT NULL COMMENT 'Row Total Incl Tax',
    `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
    `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
    `name` varchar(255) DEFAULT NULL COMMENT 'Name',
    PRIMARY KEY (`entity_id`),
    KEY `IDX_SALES_FLAT_CREDITMEMO_ITEM_PARENT_ID` (`parent_id`),
    CONSTRAINT `FK_306DAC836C699F0B5E13BE486557AC8A` FOREIGN KEY (`parent_id`) REFERENCES `sales_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Item';


CREATE TABLE `cms_block` (
    `block_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Block ID',
    `title` varchar(255) NOT NULL COMMENT 'Block Title',
    `identifier` varchar(255) NOT NULL COMMENT 'Block String Identifier',
    `content` mediumtext COMMENT 'Block Content',
    `creation_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Block Creation Time',
    `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Block Modification Time',
    `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Block Active',
    PRIMARY KEY (`block_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='CMS Block Table';


CREATE TABLE `core_config_data` (
    `config_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Config Id',
    `scope` varchar(8) NOT NULL DEFAULT 'default' COMMENT 'Config Scope',
    `scope_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Config Scope Id',
    `path` varchar(255) NOT NULL DEFAULT 'general' COMMENT 'Config Path',
    `value` text COMMENT 'Config Value',
    PRIMARY KEY (`config_id`),
    UNIQUE KEY `UNQ_CORE_CONFIG_DATA_SCOPE_SCOPE_ID_PATH` (`scope`,`scope_id`,`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Config Data';


CREATE TABLE `log_customer` (
    `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
    `customer_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Customer ID',
    `login_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Login Time',
    `logout_at` timestamp NULL DEFAULT NULL COMMENT 'Logout Time',
    PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Customers Table';


CREATE TABLE `log_visitor` (
    `visitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Visitor ID',
    `customer_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Customer ID',
    `session_id` varchar(64) DEFAULT NULL COMMENT 'Session ID',
    `last_visit_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Last Visit Time',
    PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Visitors Table';


CREATE TABLE `sales_bestsellers_aggregated_daily` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
    `period` date DEFAULT NULL COMMENT 'Period',
    `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
    `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
    `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
    `product_price` double NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
    `qty_ordered` int(10) NOT NULL DEFAULT '0' COMMENT 'Qty Ordered',
    PRIMARY KEY (`id`),
    UNIQUE KEY `UNQ_SALES_BESTSELLERS_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
    KEY `IDX_SALES_BESTSELLERS_AGGREGATED_DAILY_STORE_ID` (`store_id`),
    KEY `IDX_SALES_BESTSELLERS_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`),
    CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_DAILY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_DAILY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Daily';


CREATE TABLE `sales_bestsellers_aggregated_monthly` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
    `period` date DEFAULT NULL COMMENT 'Period',
    `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
    `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
    `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
    `product_price` double NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
    `qty_ordered` int(10) NOT NULL DEFAULT '0' COMMENT 'Qty Ordered',
    PRIMARY KEY (`id`),
    UNIQUE KEY `UNQ_SALES_BESTSELLERS_AGGRED_MONTHLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
    KEY `IDX_SALES_BESTSELLERS_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
    KEY `IDX_SALES_BESTSELLERS_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`),
    CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_MONTHLY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_MONTHLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Monthly';


CREATE TABLE `sales_bestsellers_aggregated_yearly` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
    `period` date DEFAULT NULL COMMENT 'Period',
    `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
    `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
    `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
    `product_price` double NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
    `qty_ordered` int(10) NOT NULL DEFAULT '0' COMMENT 'Qty Ordered',
    PRIMARY KEY (`id`),
    UNIQUE KEY `UNQ_SALES_BESTSELLERS_AGGRED_YEARLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
    KEY `IDX_SALES_BESTSELLERS_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
    KEY `IDX_SALES_BESTSELLERS_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`),
    CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_YEARLY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_YEARLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Yearly';


CREATE TABLE `customer_bestbuy_aggregated_daily` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
    `period` date DEFAULT NULL COMMENT 'Period',
    `customer_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
    `address` varchar(255) DEFAULT NULL COMMENT 'Address',
    `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Price',
    `qty_order` int(10) NOT NULL DEFAULT '0' COMMENT 'Qty Ordered',
    `paid_order` double NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
    PRIMARY KEY (`id`),
    UNIQUE KEY `UNQ_SALES_BESTSELLERS_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID1` (`period`),
    CONSTRAINT `FK_SALES_BESTSELLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID1` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Daily';


CREATE TABLE `customer_bestbuy_aggregated_monthly` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
    `period` date DEFAULT NULL COMMENT 'Period',
    `customer_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
    `address` varchar(255) DEFAULT NULL COMMENT 'Address',
    `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Price',
    `qty_order` int(10) NOT NULL DEFAULT '0' COMMENT 'Qty Ordered',
    `paid_order` double NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
    PRIMARY KEY (`id`),
    UNIQUE KEY `UNQ_SALES_BESTSELLERS_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID2` (`period`),
    CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_DAILY_PRD_ID_CAT_PRD_ENTT_ENTT_ID2` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Daily';


CREATE TABLE `customer_bestbuy_aggregated_yearly` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
    `period` date DEFAULT NULL COMMENT 'Period',
    `customer_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
    `address` varchar(255) DEFAULT NULL COMMENT 'Address',
    `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Price',
    `qty_order` int(10) NOT NULL DEFAULT '0' COMMENT 'Qty Ordered',
    `paid_order` double NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
    PRIMARY KEY (`id`),
    UNIQUE KEY `UNQ_SALES_BESTSELLERS_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID3` (`period`),
    CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_DAILY_PRD_ID_CAT_PRD_ENTT_ENTT_ID3` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Daily';


CREATE TABLE `sales_revenuesellers_aggregated_daily` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
    `period` date DEFAULT NULL COMMENT 'Period',
    `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
    `qty_ordered` int(10) NOT NULL DEFAULT '0' COMMENT 'Qty Ordered',
    `paid_order` double NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
    PRIMARY KEY (`id`),
    UNIQUE KEY `UNQ_SALES_BESTSELLERS_AGGRED_MONTHLY_PERIOD_STORE_ID_PRD_ID4` (`period`,`store_id`),
    KEY `IDX_SALES_BESTSELLERS_AGGREGATED_MONTHLY_STORE_ID4` (`store_id`),
    CONSTRAINT `FK_SALES_BESTSEL_MOTHLY_STORE_ID_CORE_STORE_STORE_ID4` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Monthly';


CREATE TABLE `sales_revenuesellers_aggregated_monthly` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
    `period` date DEFAULT NULL COMMENT 'Period',
    `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
    `qty_ordered` int(10) NOT NULL DEFAULT '0' COMMENT 'Qty Ordered',
    `paid_order` double NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
    PRIMARY KEY (`id`),
    UNIQUE KEY `UNQ_SALES_BESTSELLERS_AGGRED_MONTHLY_PERIOD_STORE_ID_PRD_ID5` (`period`,`store_id`),
    KEY `IDX_SALES_BESTSELLERS_AGGREGATED_MONTHLY_STORE_IDd` (`store_id`),
    CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_MONTHLY_RE_ID_CORE_STORE_STORE_ID5` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Monthly';


CREATE TABLE `sales_revenuesellers_aggregated_yearly` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
    `period` date DEFAULT NULL COMMENT 'Period',
    `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
    `qty_ordered` int(10) NOT NULL DEFAULT '0' COMMENT 'Qty Ordered',
    `paid_order` double NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
    PRIMARY KEY (`id`),
    UNIQUE KEY `UNQ_SALES_BESTSELLERS_AGGRED_MONTHLY_PERIOD_STORE_ID_PRD_ID6` (`period`,`store_id`),
    KEY `IDX_SALES_BESTSELLERS_AGGREGATED_MONTHLY_STORE_ID6` (`store_id`),
    CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_MLY_STORE_ID_CORE_STORE_STORE_ID6` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Monthly';


CREATE TABLE `email_template` (
    `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template Id',
    `template_code` varchar(150) NOT NULL COMMENT 'Template Code',
    `template_text` text not null COMMENT 'Template Text',
    `template_type` int(10) unsigned NOT NULL COMMENT 'Template Type',
    `template_subject` varchar(200) NOT NULL COMMENT 'Template Subject',
    `template_sender_email` varchar(200) NOT NULL COMMENT 'Template Sender Email',
    `add_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Add at date',
    PRIMARY KEY (`template_id`),
    UNIQUE KEY `UNQ_EMAIL_TEMPLATE_TEMPLATE_CODE` (`template_code`),
    KEY `IDX_EMAIL_TEMPLATE_ADD_AT` (`add_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Email Template';



INSERT INTO `lovefashion1`.`customer_group` (`customer_group_id`, `customer_group_code`, `limit_score`) VALUES ('1', 'General', '0');
INSERT INTO `lovefashion1`.`customer_group` (`customer_group_id`, `customer_group_code`, `limit_score`) VALUES ('2', 'Wholesale', '100');
INSERT INTO `lovefashion1`.`customer_group` (`customer_group_id`, `customer_group_code`, `limit_score`) VALUES ('3', 'Retailer', '200');

INSERT INTO `lovefashion1`.`customer_entity` (`entity_id`, `firstname`, `lastname`, `gender`, `email`, `password`, `group_id`, `score`, `created_at`, `updated_at`, `is_active`, `logdate`, `lognum`, `default_billing`, `default_shipping`) VALUES ('1', 'Nguyen Nhat', 'Tien', '1', 'moskva209@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '0', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '1', '2015-12-23 21:48:21', '0', '0', '0');

INSERT INTO `lovefashion1`.`category_entity` (`entity_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`, `description`, `image`, `include_in_menu`, `is_active`, `meta_description`, `meta_keywords`, `meta_title`, `name`, `name_en`, `thumbnail`, `url_key`, `url_path`) VALUES ('1', null, '2015-12-23 21:48:21', '2015-12-23 21:48:21', '1', '0', '0', '0', '', '', '1', '1', '', '', '', 'Root Category', 'Root Category', '', '', '');
INSERT INTO `lovefashion1`.`category_entity` (`entity_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`, `description`, `image`, `include_in_menu`, `is_active`, `meta_description`, `meta_keywords`, `meta_title`, `name`, `name_en`, `thumbnail`, `url_key`, `url_path`) VALUES ('2', '1', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '1/2', '0', '1', '0', '', '', '1', '1', '', '', '', 'Women', 'Women', '', 'women', 'women.html');
INSERT INTO `lovefashion1`.`category_entity` (`entity_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`, `description`, `image`, `include_in_menu`, `is_active`, `meta_description`, `meta_keywords`, `meta_title`, `name`, `name_en`, `thumbnail`, `url_key`, `url_path`) VALUES ('3', '1', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '1/3', '1', '1', '0', '', '', '1', '1', '', '', '', 'Men', 'Men', '', 'men', 'men.html');
INSERT INTO `lovefashion1`.`category_entity` (`entity_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`, `description`, `image`, `include_in_menu`, `is_active`, `meta_description`, `meta_keywords`, `meta_title`, `name`, `name_en`, `thumbnail`, `url_key`, `url_path`) VALUES ('4', '2', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '1/2/4', '0', '2', '0', '', '', '1', '1', '', '', '', 'Tops', 'Tops', '', 'tops-women', 'women/tops-women.html');
INSERT INTO `lovefashion1`.`category_entity` (`entity_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`, `description`, `image`, `include_in_menu`, `is_active`, `meta_description`, `meta_keywords`, `meta_title`, `name`, `name_en`, `thumbnail`, `url_key`, `url_path`) VALUES ('5', '4', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '1/2/4/5', '0', '3', '0', '', '', '1', '1', '', '', '', 'Jackets', 'Jackets', '', 'jackets-women', 'women/tops-women/jackets-women.html');
INSERT INTO `lovefashion1`.`category_entity` (`entity_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`, `description`, `image`, `include_in_menu`, `is_active`, `meta_description`, `meta_keywords`, `meta_title`, `name`, `name_en`, `thumbnail`, `url_key`, `url_path`) VALUES ('6', '4', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '1/2/4/6', '1', '3', '0', '', '', '1', '1', '', '', '', 'Tees', 'Tees', '', 'tees-women', 'women/tops-women/tees-women.html');
INSERT INTO `lovefashion1`.`category_entity` (`entity_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`, `description`, `image`, `include_in_menu`, `is_active`, `meta_description`, `meta_keywords`, `meta_title`, `name`, `name_en`, `thumbnail`, `url_key`, `url_path`) VALUES ('7', '4', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '1/2/4/7', '2', '3', '0', '', '', '1', '1', '', '', '', 'Hoodies & Sweatshirts', 'Hoodies & Sweatshirts', '', 'hoodies-and-sweatshirts-women', 'women/tops-women/hoodies-and-sweatshirts-women.html');
INSERT INTO `lovefashion1`.`category_entity` (`entity_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`, `description`, `image`, `include_in_menu`, `is_active`, `meta_description`, `meta_keywords`, `meta_title`, `name`, `name_en`, `thumbnail`, `url_key`, `url_path`) VALUES ('8', '2', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '1/2/8', '1', '2', '0', '', '', '1', '1', '', '', '', 'Bottoms', 'Bottoms', '', 'bottoms-women', 'women/bottoms-women.html');
INSERT INTO `lovefashion1`.`category_entity` (`entity_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`, `description`, `image`, `include_in_menu`, `is_active`, `meta_description`, `meta_keywords`, `meta_title`, `name`, `name_en`, `thumbnail`, `url_key`, `url_path`) VALUES ('9', '8', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '1/2/8/9', '0', '3', '0', '', '', '1', '1', '', '', '', 'Pants', 'Pants', '', 'pants-women', 'women/bottoms-woment/pants-women.html');
INSERT INTO `lovefashion1`.`category_entity` (`entity_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`, `description`, `image`, `include_in_menu`, `is_active`, `meta_description`, `meta_keywords`, `meta_title`, `name`, `name_en`, `thumbnail`, `url_key`, `url_path`) VALUES ('10', '8', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '1/2/8/10', '1', '3', '0', '', '', '1', '1', '', '', '', 'Shorts', 'Shorts', '', 'shorts-women', 'women/bottoms-woment/shorts-women.html');
INSERT INTO `lovefashion1`.`category_entity` (`entity_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`, `description`, `image`, `include_in_menu`, `is_active`, `meta_description`, `meta_keywords`, `meta_title`, `name`, `name_en`, `thumbnail`, `url_key`, `url_path`) VALUES ('11', '3', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '1/3/11', '0', '2', '0', '', '', '1', '1', '', '', '', 'Tops', 'Tops', '', 'tops-men', 'men/tops-men.html');
INSERT INTO `lovefashion1`.`category_entity` (`entity_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`, `description`, `image`, `include_in_menu`, `is_active`, `meta_description`, `meta_keywords`, `meta_title`, `name`, `name_en`, `thumbnail`, `url_key`, `url_path`) VALUES ('12', '11', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '1/3/11/12', '0', '3', '0', '', '', '1', '1', '', '', '', 'Jackets', 'Jackets', '', 'jackets-men', 'men/tops-men/jackets-men.html');
INSERT INTO `lovefashion1`.`category_entity` (`entity_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`, `description`, `image`, `include_in_menu`, `is_active`, `meta_description`, `meta_keywords`, `meta_title`, `name`, `name_en`, `thumbnail`, `url_key`, `url_path`) VALUES ('13', '11', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '1/3/11/13', '1', '3', '0', '', '', '1', '1', '', '', '', 'Tees', 'Tees', '', 'tees-men', 'men/tops-men/tees-men.html');
INSERT INTO `lovefashion1`.`category_entity` (`entity_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`, `description`, `image`, `include_in_menu`, `is_active`, `meta_description`, `meta_keywords`, `meta_title`, `name`, `name_en`, `thumbnail`, `url_key`, `url_path`) VALUES ('14', '11', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '1/3/11/14', '2', '3', '0', '', '', '1', '1', '', '', '', 'Hoodies & Sweatshirts', 'Hoodies & Sweatshirts', '', 'hoodies-and-sweatshirts-men', 'men/tops-men/hoodies-and-sweatshirts-men.html');
INSERT INTO `lovefashion1`.`category_entity` (`entity_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`, `description`, `image`, `include_in_menu`, `is_active`, `meta_description`, `meta_keywords`, `meta_title`, `name`, `name_en`, `thumbnail`, `url_key`, `url_path`) VALUES ('15', '3', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '1/3/15', '1', '2', '0', '', '', '1', '1', '', '', '', 'Bottoms', 'Bottoms', '', 'bottoms-men', 'men/bottoms-men.html');
INSERT INTO `lovefashion1`.`category_entity` (`entity_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`, `description`, `image`, `include_in_menu`, `is_active`, `meta_description`, `meta_keywords`, `meta_title`, `name`, `name_en`, `thumbnail`, `url_key`, `url_path`) VALUES ('16', '15', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '1/3/15/16', '0', '3', '0', '', '', '1', '0', '', '', '', 'Pants', 'Pants', '', 'pants-men', 'men/bottoms-men/pants-men.html');
INSERT INTO `lovefashion1`.`category_entity` (`entity_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`, `description`, `image`, `include_in_menu`, `is_active`, `meta_description`, `meta_keywords`, `meta_title`, `name`, `name_en`, `thumbnail`, `url_key`, `url_path`) VALUES ('17', '15', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '1/3/15/17', '1', '3', '0', '', '', '1', '1', '', '', '', 'Shorts', 'Shorts', '', 'shorts-men', 'men/bottoms-men/shorts-men.html');

INSERT INTO `lovefashion1`.`tax_class` (`class_id`, `class_name`) VALUES ('1', 'Taxable Goods');


INSERT INTO `lovefashion1`.`tax_calculation_rate` (`tax_calculation_rate_id`, `tax_country_id`, `tax_region_id`, `code`, `zip_code`, `rate`) VALUES ('1', 'VN', '1', 'VN-CA-*-Rate 1', '700000', '5.0000');
INSERT INTO `lovefashion1`.`tax_calculation_rate` (`tax_calculation_rate_id`, `tax_country_id`, `tax_region_id`, `code`, `zip_code`, `rate`) VALUES ('2', 'VN', '2', 'VN-NY-*-Rate 1', '700000', '10.0000');
INSERT INTO `lovefashion1`.`tax_calculation_rate` (`tax_calculation_rate_id`, `tax_country_id`, `tax_region_id`, `code`, `zip_code`, `rate`) VALUES ('3', 'VN', '3', 'VN-MI-*-Rate 1', '700000', '20.0000');

INSERT INTO `lovefashion1`.`tax_calculation_rule` (`tax_calculation_rule_id`, `code`, `priority`) VALUES ('1', 'Rule1', '0');

INSERT INTO `lovefashion1`.`tax_calculation` (`tax_calculation_id`, `tax_calculation_rate_id`, `tax_calculation_rule_id`, `tax_class_id`) VALUES ('1', '2', '1', '1');

INSERT INTO `lovefashion1`.`store` (`store_id`, `name`, `sort_order`, `is_active`) VALUES ('1', 'STORE 1', '0', '1');
INSERT INTO `lovefashion1`.`store` (`store_id`, `name`, `sort_order`, `is_active`) VALUES ('2', 'STORE 2', '1', '1');

INSERT INTO `lovefashion1`.`manufacturer` (`entity_id`, `manufacturer`, `meta_description`, `url_key`, `url_path`, `created_at`) VALUES ('1', 'Dolce & Gabbana', '', 'dolce-and-gabbana', 'dolce-and-gabbana.html', '2015-12-23 21:48:21');
INSERT INTO `lovefashion1`.`manufacturer` (`entity_id`, `manufacturer`, `meta_description`, `url_key`, `url_path`, `created_at`) VALUES ('2', 'Armani', '', 'armani', 'armani.html', '2015-12-23 21:48:21');
INSERT INTO `lovefashion1`.`manufacturer` (`entity_id`, `manufacturer`, `meta_description`, `url_key`, `url_path`, `created_at`) VALUES ('3', 'Versace', '', 'versace', 'versace.html', '2015-12-23 21:48:21');
INSERT INTO `lovefashion1`.`manufacturer` (`entity_id`, `manufacturer`, `meta_description`, `url_key`, `url_path`, `created_at`) VALUES ('4', 'Gucci', '', 'gucci', 'gucci.html', '2015-12-23 21:48:21');
INSERT INTO `lovefashion1`.`manufacturer` (`entity_id`, `manufacturer`, `meta_description`, `url_key`, `url_path`, `created_at`) VALUES ('5', 'Chanel', '', 'chanel', 'chanel.html', '2015-12-23 21:48:21');

INSERT INTO `lovefashion1`.`general_entity` (`entity_id`, `tax_class_id`, `material`, `climate`, `pattern`, `collar`, `sleeve`, `active`, `weight`, `meta_description`, `meta_keyword`, `meta_title`, `description`, `url_key`, `url_path`, `created_at`, `updated_at`, `is_new`, `status`, `news_from_date`, `news_to_date`, `image`, `sale`, `special_price`, `special_from_date`, `special_to_date`) VALUES ('1', '1', 'Fleece, Wool', 'All-Weather, Mild, Spring, Windy', 'Solid', '', '', '', '200', '', '', '', 'Beat the heat and protect yourself from sunrays with the Stellar Solar Jacket. It\\\'s loaded with all the engineered features you need for an intense, safe outdoor workout: 100% UV protection, a breathable perforated construction, and advanced moisture-wicking technology.', 'stellar-solar-jacket', 'stellar-solar-jacket.html', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '0', '1', '2015-12-23 21:48:21', '2015-12-23 21:48:21', 'wj01-blue_main.jpg', '0', '0', '2015-12-23 21:48:21', '2015-12-23 21:48:21');
INSERT INTO `lovefashion1`.`general_entity` (`entity_id`, `tax_class_id`, `material`, `climate`, `pattern`, `collar`, `sleeve`, `active`, `weight`, `meta_description`, `meta_keyword`, `meta_title`, `description`, `url_key`, `url_path`, `created_at`, `updated_at`, `is_new`, `status`, `news_from_date`, `news_to_date`, `image`, `sale`, `special_price`, `special_from_date`, `special_to_date`) VALUES ('2', '1', 'Fleece, Wool', 'All-Weather, Mild, Spring, Windy', 'Solid', '', '', '', '200', '', '', '', 'Beat the heat and protect yourself from sunrays with the Stellar Solar Jacket. It\\\'s loaded with all the engineered features you need for an intense, safe outdoor workout: 100% UV protection, a breathable perforated construction, and advanced moisture-wicking technology.', 'juno-jacket', 'juno-jacket.html', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '0', '1', '2015-12-23 21:48:21', '2015-12-23 21:48:21', 'wj06-purple_main.jpg', '0', '0', '2015-12-23 21:48:21', '2015-12-23 21:48:21');
INSERT INTO `lovefashion1`.`general_entity` (`entity_id`, `tax_class_id`, `material`, `climate`, `pattern`, `collar`, `sleeve`, `active`, `weight`, `meta_description`, `meta_keyword`, `meta_title`, `description`, `url_key`, `url_path`, `created_at`, `updated_at`, `is_new`, `status`, `news_from_date`, `news_to_date`, `image`, `sale`, `special_price`, `special_from_date`, `special_to_date`) VALUES ('3', '1', 'Fleece, Wool', 'All-Weather, Mild, Spring, Windy', 'Solid', '', '', '', '200', '', '', '', 'Beat the heat and protect yourself from sunrays with the Stellar Solar Jacket. It\\\'s loaded with all the engineered features you need for an intense, safe outdoor workout: 100% UV protection, a breathable perforated construction, and advanced moisture-wicking technology.', 'inez-full-zip-jacket', 'inez-full-zip-jacket.html', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '0', '1', '2015-12-23 21:48:21', '2015-12-23 21:48:21', 'wj07-red_main.jpg', '0', '0', '2015-12-23 21:48:21', '2015-12-23 21:48:21');
INSERT INTO `lovefashion1`.`general_entity` (`entity_id`, `tax_class_id`, `material`, `climate`, `pattern`, `collar`, `sleeve`, `active`, `weight`, `meta_description`, `meta_keyword`, `meta_title`, `description`, `url_key`, `url_path`, `created_at`, `updated_at`, `is_new`, `status`, `news_from_date`, `news_to_date`, `image`, `sale`, `special_price`, `special_from_date`, `special_to_date`) VALUES ('4', '1', 'Fleece, Wool', 'All-Weather, Mild, Spring, Windy', 'Solid', '', '', '', '200', '', '', '', 'Beat the heat and protect yourself from sunrays with the Stellar Solar Jacket. It\\\'s loaded with all the engineered features you need for an intense, safe outdoor workout: 100% UV protection, a breathable perforated construction, and advanced moisture-wicking technology.', 'riona-full-zip-jacket', 'riona-full-zip-jacket.html', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '0', '1', '2015-12-23 21:48:21', '2015-12-23 21:48:21', 'wj05-brown_main.jpg', '0', '0', '2015-12-23 21:48:21', '2015-12-23 21:48:21');
INSERT INTO `lovefashion1`.`general_entity` (`entity_id`, `tax_class_id`, `material`, `climate`, `pattern`, `collar`, `sleeve`, `active`, `weight`, `meta_description`, `meta_keyword`, `meta_title`, `description`, `url_key`, `url_path`, `created_at`, `updated_at`, `is_new`, `status`, `news_from_date`, `news_to_date`, `image`, `sale`, `special_price`, `special_from_date`, `special_to_date`) VALUES ('5', '1', 'Fleece, Wool', 'All-Weather, Mild, Spring, Windy', 'Solid', '', '', '', '200', '', '', '', 'Beat the heat and protect yourself from sunrays with the Stellar Solar Jacket. It\\\'s loaded with all the engineered features you need for an intense, safe outdoor workout: 100% UV protection, a breathable perforated construction, and advanced moisture-wicking technology.', 'mona-pullover-hoodlie', 'mona-pullover-hoodlie.html', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '0', '1', '2015-12-23 21:48:21', '2015-12-23 21:48:21', 'wh01-green_main.jpg', '0', '0', '2015-12-23 21:48:21', '2015-12-23 21:48:21');
INSERT INTO `lovefashion1`.`general_entity` (`entity_id`, `tax_class_id`, `material`, `climate`, `pattern`, `collar`, `sleeve`, `active`, `weight`, `meta_description`, `meta_keyword`, `meta_title`, `description`, `url_key`, `url_path`, `created_at`, `updated_at`, `is_new`, `status`, `news_from_date`, `news_to_date`, `image`, `sale`, `special_price`, `special_from_date`, `special_to_date`) VALUES ('6', '1', 'Fleece, Wool', 'All-Weather, Mild, Spring, Windy', 'Solid', '', '', '', '200', '', '', '', 'Beat the heat and protect yourself from sunrays with the Stellar Solar Jacket. It\\\'s loaded with all the engineered features you need for an intense, safe outdoor workout: 100% UV protection, a breathable perforated construction, and advanced moisture-wicking technology.', 'ariel-roll-sleeve-sweatshirt', 'ariel-roll-sleeve-sweatshirt.html', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '0', '1', '2015-12-23 21:48:21', '2015-12-23 21:48:21', 'wh09-purple_main.jpg', '0', '0', '2015-12-23 21:48:21', '2015-12-23 21:48:21');
INSERT INTO `lovefashion1`.`general_entity` (`entity_id`, `tax_class_id`, `material`, `climate`, `pattern`, `collar`, `sleeve`, `active`, `weight`, `meta_description`, `meta_keyword`, `meta_title`, `description`, `url_key`, `url_path`, `created_at`, `updated_at`, `is_new`, `status`, `news_from_date`, `news_to_date`, `image`, `sale`, `special_price`, `special_from_date`, `special_to_date`) VALUES ('7', '1', 'Fleece, Wool', 'All-Weather, Mild, Spring, Windy', 'Solid', '', '', '', '200', '', '', '', 'Beat the heat and protect yourself from sunrays with the Stellar Solar Jacket. It\\\'s loaded with all the engineered features you need for an intense, safe outdoor workout: 100% UV protection, a breathable perforated construction, and advanced moisture-wicking technology.', 'selene-yoga-hoodie', 'selene-yoga-hoodie.html', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '0', '1', '2015-12-23 21:48:21', '2015-12-23 21:48:21', 'wh05-white_main.jpg', '0', '0', '2015-12-23 21:48:21', '2015-12-23 21:48:21');
INSERT INTO `lovefashion1`.`general_entity` (`entity_id`, `tax_class_id`, `material`, `climate`, `pattern`, `collar`, `sleeve`, `active`, `weight`, `meta_description`, `meta_keyword`, `meta_title`, `description`, `url_key`, `url_path`, `created_at`, `updated_at`, `is_new`, `status`, `news_from_date`, `news_to_date`, `image`, `sale`, `special_price`, `special_from_date`, `special_to_date`) VALUES ('8', '1', 'Fleece, Wool', 'All-Weather, Mild, Spring, Windy', 'Solid', '', '', '', '200', '', '', '', 'Beat the heat and protect yourself from sunrays with the Stellar Solar Jacket. It\\\'s loaded with all the engineered features you need for an intense, safe outdoor workout: 100% UV protection, a breathable perforated construction, and advanced moisture-wicking technology.', 'gabrielle-micro-sleeve-top', 'gabrielle-micro-sleeve-top.html', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '0', '1', '2015-12-23 21:48:21', '2015-12-23 21:48:21', 'ws02-green_main.jpg', '0', '0', '2015-12-23 21:48:21', '2015-12-23 21:48:21');
INSERT INTO `lovefashion1`.`general_entity` (`entity_id`, `tax_class_id`, `material`, `climate`, `pattern`, `collar`, `sleeve`, `active`, `weight`, `meta_description`, `meta_keyword`, `meta_title`, `description`, `url_key`, `url_path`, `created_at`, `updated_at`, `is_new`, `status`, `news_from_date`, `news_to_date`, `image`, `sale`, `special_price`, `special_from_date`, `special_to_date`) VALUES ('9', '1', 'Fleece, Wool', 'All-Weather, Mild, Spring, Windy', 'Solid', '', '', '', '200', '', '', '', 'Beat the heat and protect yourself from sunrays with the Stellar Solar Jacket. It\\\'s loaded with all the engineered features you need for an intense, safe outdoor workout: 100% UV protection, a breathable perforated construction, and advanced moisture-wicking technology.', 'elisa-evercool-trade-tee', 'elisa-evercool-trade-tee.html', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '0', '1', '2015-12-23 21:48:21', '2015-12-23 21:48:21', 'ws06-purple_main.jpg', '0', '0', '2015-12-23 21:48:21', '2015-12-23 21:48:21');
INSERT INTO `lovefashion1`.`general_entity` (`entity_id`, `tax_class_id`, `material`, `climate`, `pattern`, `collar`, `sleeve`, `active`, `weight`, `meta_description`, `meta_keyword`, `meta_title`, `description`, `url_key`, `url_path`, `created_at`, `updated_at`, `is_new`, `status`, `news_from_date`, `news_to_date`, `image`, `sale`, `special_price`, `special_from_date`, `special_to_date`) VALUES ('10', '1', 'Fleece, Wool', 'All-Weather, Mild, Spring, Windy', 'Solid', '', '', '', '200', '', '', '', 'Beat the heat and protect yourself from sunrays with the Stellar Solar Jacket. It\\\'s loaded with all the engineered features you need for an intense, safe outdoor workout: 100% UV protection, a breathable perforated construction, and advanced moisture-wicking technology.', 'diva-gym-tee', 'diva-gym-tee.html', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '0', '1', '2015-12-23 21:48:21', '2015-12-23 21:48:21', 'ws11-green_main.jpg', '0', '0', '2015-12-23 21:48:21', '2015-12-23 21:48:21');
INSERT INTO `lovefashion1`.`general_entity` (`entity_id`, `tax_class_id`, `material`, `climate`, `pattern`, `collar`, `sleeve`, `active`, `weight`, `meta_description`, `meta_keyword`, `meta_title`, `description`, `url_key`, `url_path`, `created_at`, `updated_at`, `is_new`, `status`, `news_from_date`, `news_to_date`, `image`, `sale`, `special_price`, `special_from_date`, `special_to_date`) VALUES ('11', '1', 'Fleece, Wool', 'All-Weather, Mild, Spring, Windy', 'Solid', '', '', '', '200', '', '', '', 'Beat the heat and protect yourself from sunrays with the Stellar Solar Jacket. It\\\'s loaded with all the engineered features you need for an intense, safe outdoor workout: 100% UV protection, a breathable perforated construction, and advanced moisture-wicking technology.', 'gwyn-endurance-tee', 'diva-gym-tee.html', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '0', '1', '2015-12-23 21:48:21', '2015-12-23 21:48:21', 'ws01-black_main.jpg', '0', '0', '2015-12-23 21:48:21', '2015-12-23 21:48:21');
INSERT INTO `lovefashion1`.`general_entity` (`entity_id`, `tax_class_id`, `material`, `climate`, `pattern`, `collar`, `sleeve`, `active`, `weight`, `meta_description`, `meta_keyword`, `meta_title`, `description`, `url_key`, `url_path`, `created_at`, `updated_at`, `is_new`, `status`, `news_from_date`, `news_to_date`, `image`, `sale`, `special_price`, `special_from_date`, `special_to_date`) VALUES ('12', '1', 'Fleece, Wool', 'All-Weather, Mild, Spring, Windy', 'Solid', '', '', '', '200', '', '', '', 'Beat the heat and protect yourself from sunrays with the Stellar Solar Jacket. It\\\'s loaded with all the engineered features you need for an intense, safe outdoor workout: 100% UV protection, a breathable perforated construction, and advanced moisture-wicking technology.', 'carina-basic-capri', 'carina-basic-capri.html', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '0', '1', '2015-12-23 21:48:21', '2015-12-23 21:48:21', 'wp09-black_main.jpg', '0', '0', '2015-12-23 21:48:21', '2015-12-23 21:48:21');
INSERT INTO `lovefashion1`.`general_entity` (`entity_id`, `tax_class_id`, `material`, `climate`, `pattern`, `collar`, `sleeve`, `active`, `weight`, `meta_description`, `meta_keyword`, `meta_title`, `description`, `url_key`, `url_path`, `created_at`, `updated_at`, `is_new`, `status`, `news_from_date`, `news_to_date`, `image`, `sale`, `special_price`, `special_from_date`, `special_to_date`) VALUES ('13', '1', 'Fleece, Wool', 'All-Weather, Mild, Spring, Windy', 'Solid', '', '', '', '200', '', '', '', 'Beat the heat and protect yourself from sunrays with the Stellar Solar Jacket. It\\\'s loaded with all the engineered features you need for an intense, safe outdoor workout: 100% UV protection, a breathable perforated construction, and advanced moisture-wicking technology.', 'bardot-capri', 'bardot-capri.html', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '0', '1', '2015-12-23 21:48:21', '2015-12-23 21:48:21', 'wp08-black_main.jpg', '0', '0', '2015-12-23 21:48:21', '2015-12-23 21:48:21');
INSERT INTO `lovefashion1`.`general_entity` (`entity_id`, `tax_class_id`, `material`, `climate`, `pattern`, `collar`, `sleeve`, `active`, `weight`, `meta_description`, `meta_keyword`, `meta_title`, `description`, `url_key`, `url_path`, `created_at`, `updated_at`, `is_new`, `status`, `news_from_date`, `news_to_date`, `image`, `sale`, `special_price`, `special_from_date`, `special_to_date`) VALUES ('14', '1', 'Fleece, Wool', 'All-Weather, Mild, Spring, Windy', 'Solid', '', '', '', '200', '', '', '', 'Beat the heat and protect yourself from sunrays with the Stellar Solar Jacket. It\\\'s loaded with all the engineered features you need for an intense, safe outdoor workout: 100% UV protection, a breathable perforated construction, and advanced moisture-wicking technology.', 'aeon-capri', 'aeon-capri.html', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '0', '1', '2015-12-23 21:48:21', '2015-12-23 21:48:21', 'wp07-black_main.jpg', '0', '0', '2015-12-23 21:48:21', '2015-12-23 21:48:21');
INSERT INTO `lovefashion1`.`general_entity` (`entity_id`, `tax_class_id`, `material`, `climate`, `pattern`, `collar`, `sleeve`, `active`, `weight`, `meta_description`, `meta_keyword`, `meta_title`, `description`, `url_key`, `url_path`, `created_at`, `updated_at`, `is_new`, `status`, `news_from_date`, `news_to_date`, `image`, `sale`, `special_price`, `special_from_date`, `special_to_date`) VALUES ('15', '1', 'Fleece, Wool', 'All-Weather, Mild, Spring, Windy', 'Solid', '', '', '', '200', '', '', '', 'Beat the heat and protect yourself from sunrays with the Stellar Solar Jacket. It\\\'s loaded with all the engineered features you need for an intense, safe outdoor workout: 100% UV protection, a breathable perforated construction, and advanced moisture-wicking technology.', 'diana-tights', 'diana-tights.html', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '0', '1', '2015-12-23 21:48:21', '2015-12-23 21:48:21', 'wp06-black_main.jpg', '0', '0', '2015-12-23 21:48:21', '2015-12-23 21:48:21');
INSERT INTO `lovefashion1`.`general_entity` (`entity_id`, `tax_class_id`, `material`, `climate`, `pattern`, `collar`, `sleeve`, `active`, `weight`, `meta_description`, `meta_keyword`, `meta_title`, `description`, `url_key`, `url_path`, `created_at`, `updated_at`, `is_new`, `status`, `news_from_date`, `news_to_date`, `image`, `sale`, `special_price`, `special_from_date`, `special_to_date`) VALUES ('16', '1', 'Fleece, Wool', 'All-Weather, Mild, Spring, Windy', 'Solid', '', '', '', '200', '', '', '', 'Beat the heat and protect yourself from sunrays with the Stellar Solar Jacket. It\\\'s loaded with all the engineered features you need for an intense, safe outdoor workout: 100% UV protection, a breathable perforated construction, and advanced moisture-wicking technology.', 'angel-light-running-short', 'angel-light-running-short.html', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '0', '1', '2015-12-23 21:48:21', '2015-12-23 21:48:21', 'wsh06-gray_main.jpg', '0', '0', '2015-12-23 21:48:21', '2015-12-23 21:48:21');
INSERT INTO `lovefashion1`.`general_entity` (`entity_id`, `tax_class_id`, `material`, `climate`, `pattern`, `collar`, `sleeve`, `active`, `weight`, `meta_description`, `meta_keyword`, `meta_title`, `description`, `url_key`, `url_path`, `created_at`, `updated_at`, `is_new`, `status`, `news_from_date`, `news_to_date`, `image`, `sale`, `special_price`, `special_from_date`, `special_to_date`) VALUES ('17', '1', 'Fleece, Wool', 'All-Weather, Mild, Spring, Windy', 'Solid', '', '', '', '200', '', '', '', 'Beat the heat and protect yourself from sunrays with the Stellar Solar Jacket. It\\\'s loaded with all the engineered features you need for an intense, safe outdoor workout: 100% UV protection, a breathable perforated construction, and advanced moisture-wicking technology.', 'mimi-all-purpose-short', 'mimi-all-purpose-short.html', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '0', '1', '2015-12-23 21:48:21', '2015-12-23 21:48:21', 'wsh09-gray_main.jpg', '0', '0', '2015-12-23 21:48:21', '2015-12-23 21:48:21');
INSERT INTO `lovefashion1`.`general_entity` (`entity_id`, `tax_class_id`, `material`, `climate`, `pattern`, `collar`, `sleeve`, `active`, `weight`, `meta_description`, `meta_keyword`, `meta_title`, `description`, `url_key`, `url_path`, `created_at`, `updated_at`, `is_new`, `status`, `news_from_date`, `news_to_date`, `image`, `sale`, `special_price`, `special_from_date`, `special_to_date`) VALUES ('18', '1', 'Fleece, Wool', 'All-Weather, Mild, Spring, Windy', 'Solid', '', '', '', '200', '', '', '', 'Beat the heat and protect yourself from sunrays with the Stellar Solar Jacket. It\\\'s loaded with all the engineered features you need for an intense, safe outdoor workout: 100% UV protection, a breathable perforated construction, and advanced moisture-wicking technology.', 'sybil-running-short', 'sybil-running-short.html', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '0', '1', '2015-12-23 21:48:21', '2015-12-23 21:48:21', 'wsh08-purple_main.jpg', '0', '0', '2015-12-23 21:48:21', '2015-12-23 21:48:21');
INSERT INTO `lovefashion1`.`general_entity` (`entity_id`, `tax_class_id`, `material`, `climate`, `pattern`, `collar`, `sleeve`, `active`, `weight`, `meta_description`, `meta_keyword`, `meta_title`, `description`, `url_key`, `url_path`, `created_at`, `updated_at`, `is_new`, `status`, `news_from_date`, `news_to_date`, `image`, `sale`, `special_price`, `special_from_date`, `special_to_date`) VALUES ('19', '1', 'Fleece, Wool', 'All-Weather, Mild, Spring, Windy', 'Solid', '', '', '', '200', '', '', '', 'Beat the heat and protect yourself from sunrays with the Stellar Solar Jacket. It\\\'s loaded with all the engineered features you need for an intense, safe outdoor workout: 100% UV protection, a breathable perforated construction, and advanced moisture-wicking technology.', 'artemis-running-short', 'artemis-running-short.html', '2015-12-23 21:48:21', '2015-12-23 21:48:21', '0', '1', '2015-12-23 21:48:21', '2015-12-23 21:48:21', 'wsh04-black_main.jpg', '0', '0', '2015-12-23 21:48:21', '2015-12-23 21:48:21');


INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) 
VALUES ('1', '1', 'Stellar Solar Jacket', 'parent', 'WJ01', '', '75', '', '', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) 
VALUES ('2', '1', 'Stellar Solar Jacket-S-Blue', 'childern', 'WJ01-S-Blue', 'WJ01', '75', 'Blue', 'S', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) 
VALUES ('3', '1', 'Stellar Solar Jacket-S-Red', 'childern', 'WJ01-S-Red', 'WJ01', '75', 'Red', 'S', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) 
VALUES ('4', '1', 'Stellar Solar Jacket-S-Yellow', 'childern', 'WJ01-S-Yellow', 'WJ01', '75', 'Yellow', 'S', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) 
VALUES ('5', '1', 'Stellar Solar Jacket-M-Blue', 'childern', 'WJ01-M-Blue', 'WJ01', '75', 'Blue', 'M', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) 
VALUES ('6', '1', 'Stellar Solar Jacket-M-Red', 'childern', 'WJ01-M-Red', 'WJ01', '75', 'Red', 'M', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) 
VALUES ('7', '1', 'Stellar Solar Jacket-M-Yellow', 'childern', 'WJ01-M-Yellow', 'WJ01', '75', 'Yellow', 'M', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) 
VALUES ('8', '1', 'Stellar Solar Jacket-L-Blue', 'childern', 'WJ01-L-Blue', 'WJ01', '75', 'Blue', 'L', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) 
VALUES ('9', '1', 'Stellar Solar Jacket-L-Red', 'childern', 'WJ01-L-Red', 'WJ01', '75', 'Red', 'L', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) 
VALUES ('10', '1', 'Stellar Solar Jacket-L-Yellow', 'childern', 'WJ01-L-Yellow', 'WJ01', '75', 'Yellow', 'L', '1');

INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('11', '2', 'Juno Jacket', 'parent', 'WJ06', '', '77', '', '', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('12', '2', 'Juno Jacket-XS-Purple', 'childern', 'WJ06-XS-Purple', 'WJ06', '77', 'Purple', 'XS', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('13', '2', 'Juno Jacket-XS-Green', 'childern', 'WJ06-XS-Green', 'WJ06', '77', 'Green', 'XS', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('14', '2', 'Juno Jacket-XS-Blue', 'childern', 'WJ06-XS-Blue', 'WJ06', '77', 'Blue', 'XS', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('15', '2', 'Juno Jacket-M-Purple', 'childern', 'WJ06-M-Purple', 'WJ06', '77', 'Purple', 'M', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('16', '2', 'Juno Jacket-M-Green', 'childern', 'WJ06-M-Green', 'WJ06', '77', 'Green', 'M', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('17', '2', 'Juno Jacket-M-Blue', 'childern', 'WJ06-M-Blue', 'WJ06', '77', 'Blue', 'M', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('18', '2', 'Juno Jacket-L-Purple', 'childern', 'WJ06-L-Purple', 'WJ06', '77', 'Purple', 'L', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('19', '2', 'Juno Jacket-L-Green', 'childern', 'WJ06-L-Green', 'WJ06', '77', 'Green', 'L', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('20', '2', 'Juno Jacket-L-Blue', 'childern', 'WJ06-L-Blue', 'WJ06', '77', 'Blue', 'L', '1');

INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('21', '3', 'Inez Full Zip Jacket', 'parent', 'WJ07', '', '59', '', '', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('22', '3', 'Inez Full Zip Jacket-XL-Orange', 'childern', 'WJ07-XL-Orange', 'WJ07', '59', 'Orange', 'XL', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('23', '3', 'Inez Full Zip Jacket-XL-Purple', 'childern', 'WJ07-XL-Purple', 'WJ07', '59', 'Purple', 'XL', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('24', '3', 'Inez Full Zip Jacket-XL-Red', 'childern', 'WJ07-XL-Red', 'WJ07', '59', 'Red', 'XL', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('25', '3', 'Inez Full Zip Jacket-L-Orange', 'childern', 'WJ07-L-Orange', 'WJ07', '59', 'Orange', 'L', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('26', '3', 'Inez Full Zip Jacket-L-Purple', 'childern', 'WJ07-L-Purple', 'WJ07', '59', 'Purple', 'L', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('27', '3', 'Inez Full Zip Jacket-L-Red', 'childern', 'WJ07-L-Red', 'WJ07', '59', 'Red', 'L', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('28', '3', 'Inez Full Zip Jacket-S-Orange', 'childern', 'WJ07-S-Orange', 'WJ07', '59', 'Orange', 'S', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('29', '3', 'Inez Full Zip Jacket-S-Purple', 'childern', 'WJ07-S-Purple', 'WJ07', '59', 'Purple', 'S', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('30', '3', 'Inez Full Zip Jacket-S-Red', 'childern', 'WJ07-S-Red', 'WJ07', '59', 'Red', 'S', '1');

INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('31', '4', 'Riona Full Zip Jacket', 'parent', 'WJ06', '', '60', '', '', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('32', '4', 'Riona Full Zip Jacket-XS-Brown', 'childern', 'WJ06-XS-Brown', 'WJ06', '60', 'Brown', 'XS', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('33', '4', 'Riona Full Zip Jacket-XS-Green', 'childern', 'WJ06-XS-Green', 'WJ06', '60', 'Green', 'XS', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('34', '4', 'Riona Full Zip Jacket-XS-Red', 'childern', 'WJ06-XS-Red', 'WJ06', '60', 'Red', 'XS', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('35', '4', 'Riona Full Zip Jacket-M-Brown', 'childern', 'WJ06-M-Brown', 'WJ06', '60', 'Brown', 'M', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('36', '4', 'Riona Full Zip Jacket-M-Green', 'childern', 'WJ06-M-Green', 'WJ06', '60', 'Green', 'M', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('37', '4', 'Riona Full Zip Jacket-M-Red', 'childern', 'Wj06-M-Red', 'WJ06', '60', 'Red', 'M', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('38', '4', 'Riona Full Zip Jacket-L-Brown', 'childern', 'WJ06-L-Brown', 'WJ06', '60', 'Brown', 'L', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('39', '4', 'Riona Full Zip Jacket-L-Green', 'childern', 'WJ06-L-Green', 'WJ06', '60', 'Green', 'L', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('40', '4', 'Riona Full Zip Jacket-L-Red', 'childern', 'WJ06-L-Red', 'WJ06', '60', 'Red', 'L', '1');

INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('41', '5', 'Mona Pullover Hoodlie', 'parent', 'WH01', '', '57', '', '', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('42', '5', 'Mona Pullover Hoodlie-S-Green', 'childern', 'WH01-S-Green', 'WH01', '57', 'Green', 'S', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('43', '5', 'Mona Pullover Hoodlie-S-Orange', 'childern', 'WH01-S-Orange', 'WH01', '57', 'Orange', 'S', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('44', '5', 'Mona Pullover Hoodlie-S-Purple', 'childern', 'WH01-S-Purple', 'WH01', '57', 'Purple', 'S', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('45', '5', 'Mona Pullover Hoodlie-M-Green', 'childern', 'WH01-M-Green', 'WH01', '57', 'Green', 'M', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('46', '5', 'Mona Pullover Hoodlie-M-Orange', 'childern', 'WH01-M-Orange', 'WH01', '57', 'Orange', 'M', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('47', '5', 'Mona Pullover Hoodlie-M-Purple', 'childern', 'WH01-M-Purple', 'WH01', '57', 'Purple', 'M', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('48', '5', 'Mona Pullover Hoodlie-L-Green', 'childern', 'WH01-L-Green', 'WH01', '57', 'Green', 'L', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('49', '5', 'Mona Pullover Hoodlie-L-Orange', 'childern', 'WH01-L-Orange', 'WH01', '57', 'Orange', 'L', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('50', '5', 'Mona Pullover Hoodlie-L-Purple', 'childern', 'WH01-L-Purple', 'WH01', '57', 'Purple', 'L', '1');

INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('51', '6', 'Ariel Roll Sleeve Sweatshirt', 'parent', 'WH09', '', '39', '', '', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('52', '6', 'Ariel Roll Sleeve Sweatshirt-M-Purple', 'childern', 'WH09-M-Purple', 'WH09', '39', 'Purple', 'M', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('53', '6', 'Ariel Roll Sleeve Sweatshirt-M-Green', 'childern', 'WH09-M-Green', 'WH09', '39', 'Green', 'M', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('54', '6', 'Ariel Roll Sleeve Sweatshirt-M-Red', 'childern', 'WH09-M-Red', 'WH09', '39', 'Red', 'M', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('55', '6', 'Ariel Roll Sleeve Sweatshirt-L-Purple', 'childern', 'WH09-L-Purple', 'WH09', '39', 'Purple', 'L', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('56', '6', 'Ariel Roll Sleeve Sweatshirt-L-Green', 'childern', 'WH09-L-Green', 'WH09', '39', 'Green', 'L', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('57', '6', 'Ariel Roll Sleeve Sweatshirt-L-Red', 'childern', 'WH09-L-Red', 'WH09', '39', 'Red', 'L', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('58', '6', 'Ariel Roll Sleeve Sweatshirt-XL-Purple', 'childern', 'WH09-XL-Purple', 'WH09', '39', 'Purple', 'XL', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('59', '6', 'Ariel Roll Sleeve Sweatshirt-XL-Green', 'childern', 'WH09-XL-Green', 'WH09', '39', 'Green', 'XL', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('60', '6', 'Ariel Roll Sleeve Sweatshirt-XL-Red', 'childern', 'WH09-XL-Red', 'WH09', '39', 'Red', 'XL', '1');

INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('61', '7', 'Selene Yoga Hoodie', 'parent', 'WH05', '', '42', '', '', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('62', '7', 'Selene Yoga Hoodie-XS-White', 'childern', 'WH05-XS-White', 'WH05', '42', 'White', 'XS', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('63', '7', 'Selene Yoga Hoodie-XS-Orange', 'childern', 'WH05-XS-Orange', 'WH05', '42', 'Orange', 'XS', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('64', '7', 'Selene Yoga Hoodie-XS-Purple', 'childern', 'WH05-XS-Purple', 'WH05', '42', 'Purple', 'XS', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('65', '7', 'Selene Yoga Hoodie-M-White', 'childern', 'WH05-M-White', 'WH05', '42', 'White', 'M', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('66', '7', 'Selene Yoga Hoodie-M-Orange', 'childern', 'WH05-M-Orange', 'WH05', '42', 'Orange', 'M', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('67', '7', 'Selene Yoga Hoodie-M-Purple', 'childern', 'WH05-M-Purple', 'WH05', '42', 'Purple', 'M', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('68', '7', 'Selene Yoga Hoodie-L-White', 'childern', 'WH05-L-White', 'WH05', '42', 'White', 'L', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('69', '7', 'Selene Yoga Hoodie-L-Orange', 'childern', 'WH05-L-Orange', 'WH05', '42', 'Orange', 'L', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('70', '7', 'Selene Yoga Hoodie-L-Purple', 'childern', 'WH05-L-Purple', 'WH05', '42', 'Purple', 'L', '1');

INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('71', '8', 'Gabrielle Micro Sleeve Top', 'parent', 'WS02', '', '28', '', '', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('72', '8', 'Gabrielle Micro Sleeve Top-S-Green', 'childern', 'WS02-S-Green', 'WS02', '28', 'Green', 'S', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('73', '8', 'Gabrielle Micro Sleeve Top-S-Blue', 'childern', 'WS02-S-Blue', 'WS02', '28', 'Blue', 'S', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('74', '8', 'Gabrielle Micro Sleeve Top-S-Red', 'childern', 'WS02-S-Red', 'WS02', '28', 'Red', 'S', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('75', '8', 'Gabrielle Micro Sleeve Top-M-Green', 'childern', 'WS02-M-Green', 'WS02', '28', 'Green', 'M', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('76', '8', 'Gabrielle Micro Sleeve Top-M-Blue', 'childern', 'WS02-M-Blue', 'WS02', '28', 'Blue', 'M', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('77', '8', 'Gabrielle Micro Sleeve Top-M-Red', 'childern', 'WS02-M-Red', 'WS02', '28', 'Red', 'M', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('78', '8', 'Gabrielle Micro Sleeve Top-L-Green', 'childern', 'WS02-L-Green', 'WS02', '28', 'Green', 'L', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('79', '8', 'Gabrielle Micro Sleeve Top-L-Blue', 'childern', 'WS02-L-Blue', 'WS02', '28', 'Blue', 'L', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('80', '8', 'Gabrielle Micro Sleeve Top-L-Red', 'childern', 'WS02-L-Red', 'WS02', '28', 'Red', 'L', '1');

INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('81', '9', 'Elisa EverCool™ Tee', 'parent', 'WS06', '', '29', '', '', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('82', '9', 'Elisa EverCool™ Tee-XS-Purple', 'childern', 'WS06-XS-Purple', 'WS06', '29', 'Purple', 'XS', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('83', '9', 'Elisa EverCool™ Tee-XS-Gray', 'childern', 'WS06-XS-Gray', 'WS06', '29', 'Gray', 'XS', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('84', '9', 'Elisa EverCool™ Tee-XS-Red', 'childern', 'WS06-XS-Red', 'WS06', '29', 'Red', 'XS', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('85', '9', 'Elisa EverCool™ Tee-M-Purple', 'childern', 'WS06-M-Purple', 'WS06', '29', 'Purple', 'M', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('86', '9', 'Elisa EverCool™ Tee-M-Gray', 'childern', 'WS06-M-Gray', 'WS06', '29', 'Gray', 'M', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('87', '9', 'Elisa EverCool™ Tee-M-Red', 'childern', 'WS06-M-Red', 'WS06', '29', 'Red', 'M', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('88', '9', 'Elisa EverCool™ Tee-L-Purple', 'childern', 'WS06-L-Purple', 'WS06', '29', 'Purple', 'L', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('89', '9', 'Elisa EverCool™ Tee-L-Gray', 'childern', 'WS06-L-Gray', 'WS06', '29', 'Gray', 'L', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('90', '9', 'Elisa EverCool™ Tee-L-Red', 'childern', 'WS06-L-Red', 'WS06', '29', 'Red', 'L', '1');


INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('91', '10', 'Diva Gym Tee', 'parent', 'WS11', '', '32', '', '', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('92', '10', 'Diva Gym Tee-XS-Green', 'childern', 'WS11-XS-Green', 'WS11', '32', 'Green', 'XS', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('93', '10', 'Diva Gym Tee-XS-Yellow', 'childern', 'WS11-XS-Yellow', 'WS11', '32', 'Yellow', 'XS', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('94', '10', 'Diva Gym Tee-XS-Orange', 'chidern', 'WS11-XS-Orange', 'WS11', '32', 'Orange', 'XS', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('95', '10', 'Diva Gym Tee-S-Green', 'childern', 'WS11-S-Green', 'WS11', '32', 'Green', 'S', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('96', '10', 'Diva Gym Tee-S-Yellow', 'childern', 'WS11-S-Yellow', 'WS11', '32', 'Yellow', 'S', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('97', '10', 'Diva Gym Tee-S-Orange', 'chidern', 'WS11-S-Orange', 'WS11', '32', 'Orange', 'S', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('98', '10', 'Diva Gym Tee-M-Green', 'childern', 'WS11-M-Green', 'WS11', '32', 'Green', 'M', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('99', '10', 'Diva Gym Tee-M-Yellow', 'childern', 'WS11-M-Yellow', 'WS11', '32', 'Yellow', 'M', '1');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('100', '10', 'Diva Gym Tee-M-Orange', 'chidern', 'WS11-M-Orange', 'WS11', '32', 'Orange', 'M', '1');


INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('101', '11', 'Gwyn Endurance Tee', 'parent', 'WS01', '', '26', '', '', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('102', '11', 'Gwyn Endurance Tee-S-Black', 'childern', 'WS01-S-Black', 'WS01', '26', 'Black', 'S', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('103', '11', 'Gwyn Endurance Tee-S-Green', 'childern', 'WS01-S-Green', 'WS01', '26', 'Green', 'S', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('104', '11', 'Gwyn Endurance Tee-S-Yellow', 'childern', 'WS01-S-Yellow', 'WS01', '26', 'Yellow', 'S', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('105', '11', 'Gwyn Endurance Tee-M-Black', 'childern', 'WS01-M-Black', 'WS01', '26', 'Black', 'M', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('106', '11', 'Gwyn Endurance Tee-M-Green', 'childern', 'WS01-M-Green', 'WS01', '26', 'Green', 'M', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('107', '11', 'Gwyn Endurance Tee-M-Yellow', 'childern', 'WS01-M-Yellow', 'WS01', '26', 'Yellow', 'M', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('108', '11', 'Gwyn Endurance Tee-L-Black', 'childern', 'WS01-L-Black', 'WS01', '26', 'Black', 'L', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('109', '11', 'Gwyn Endurance Tee-L-Green', 'childern', 'WS01-L-Green', 'WS01', '26', 'Green', 'L', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('110', '11', 'Gwyn Endurance Tee-L-Yellow', 'childern', 'WS01-L-Yellow', 'WS01', '26', 'Yellow', 'L', '2');

INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('111', '12', 'Carina Basic Capri', 'parent', 'WP09', '', '59', '', '', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('112', '12', 'Carina Basic Capri-28-Black', 'childern', 'WP09-28-Black', 'WP09', '59', 'Black', '28', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('113', '12', 'Carina Basic Capri-28-Blue', 'childern', 'WP09-28-Blue', 'WP09', '59', 'Blue', '28', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('114', '12', 'Carina Basic Capri-28-Purple', 'childern', 'WP09-28-Purple', 'WP09', '59', 'Purple', '28', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('115', '12', 'Carina Basic Capri-29-Black', 'childern', 'WP09-29-Black', 'WP09', '59', 'Black', '29', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('116', '12', 'Carina Basic Capri-29-Blue', 'childern', 'WP09-29-Blue', 'WP09', '59', 'Blue', '29', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('117', '12', 'Carina Basic Capri-29-Purple', 'childern', 'WP09-29-Purple', 'WP09', '59', 'Purple', '29', '2');

INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('118', '13', 'Bardot Capri', 'parent', 'WP08', '', '51', '', '', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('119', '13', 'Bardot Capri-28-Black', 'childern', 'WP08-28-Black', 'WP08', '51', 'Black', '28', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('120', '13', 'Bardot Capri-28-Blue', 'childern', 'WP08-28-Blue', 'WP08', '51', 'Blue', '28', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('121', '13', 'Bardot Capri-28-Red', 'childern', 'WP08-28-Red', 'WP08', '51', 'Red', '28', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('122', '13', 'Bardot Capri-29-Black', 'childern', 'WP08-29-Black', 'WP08', '51', 'Black', '29', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('123', '13', 'Bardot Capri-29-Blue', 'childern', 'WP08-29-Blue', 'WP08', '51', 'Blue', '29', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('124', '13', 'Bardot Capri-29-Red', 'childern', 'WP08-29-Red', 'WP08', '51', 'Red', '29', '2');

INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('125', '14', 'Aeon Capri', 'parent', 'WP07', '', '28', '', '', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('126', '14', 'Aeon Capri-28-Black', 'childern', 'WP07-28-Black', 'WP07', '28', 'Black', '28', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('127', '14', 'Aeon Capri-28-Blue', 'childern', 'WP07-28-Blue', 'WP07', '28', 'Blue', '28', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('128', '14', 'Aeon Capri-28-Orange', 'childern', 'WP07-28-Orange', 'WP07', '28', 'Orange', '28', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('129', '14', 'Aeon Capri-29-Black', 'childern', 'WP07-29-Black', 'WP07', '28', 'Black', '29', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('130', '14', 'Aeon Capri-29-Blue', 'childern', 'WP07-29-Blue', 'WP07', '28', 'Blue', '29', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('131', '14', 'Aeon Capri-29-Orange', 'childern', 'WP07-29-Orange', 'WP07', '28', 'Orange', '29', '2');

INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('132', '15', 'Diana Tights', 'parent', 'WP06', '', '28', '', '', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('133', '15', 'Diana Tights-28-Black', 'childern', 'WP06-28-Black', 'WP06', '28', 'Black', '28', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('134', '15', 'Diana Tights-28-Blue', 'childern', 'WP06-28-Blue', 'WP06', '28', 'Blue', '28', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('135', '15', 'Diana Tights-28-Orange', 'childern', 'WP06-28-Orange', 'WP06', '28', 'Orange', '28', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('136', '15', 'Diana Tights-29-Black', 'childern', 'WP06-29-Black', 'WP06', '28', 'Black', '29', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('137', '15', 'Diana Tights-29-Blue', 'childern', 'WP06-29-Blue', 'WP06', '28', 'Blue', '29', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('138', '15', 'Diana Tights-29-Orange', 'childern', 'WP06-29-Orange', 'WP06', '28', 'Orange', '29', '2');

INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('139', '16', 'Angel Light Running Short', 'parent', 'WSH06', '', '59', '', '', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('140', '16', 'Angel Light Running Short-28-Gray', 'childern', 'WSH06-28-Gray', 'WSH06', '59', 'Gray', '28', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('141', '16', 'Angel Light Running Short-28-Orange', 'childern', 'WSH06-28-Orange', 'WSH06', '59', 'Orange', '28', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('142', '16', 'Angel Light Running Short-28-Purple', 'childern', 'WSH06-28-Purple', 'WS06', '59', 'Purple', '28', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('143', '16', 'Angel Light Running Short-29-Gray', 'childern', 'WSH06-29-Gray', 'WSH06', '59', 'Gray', '29', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('144', '16', 'Angel Light Running Short-29-Orange', 'childern', 'WSH06-29-Orange', 'WSH06', '59', 'Orange', '29', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('145', '16', 'Angel Light Running Short-29-Purple', 'childern', 'WSH06-29-Purple', 'WS06', '59', 'Purple', '29', '2');

INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('146', '17', 'Mimi All-Purpose Short', 'parent', 'WSH09', '', '44', '', '', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('147', '17', 'Mimi All-Purpose Short-28-Gray', 'childern', 'WSH09-28-Gray', 'WSH09', '44', 'Gray', '28', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('148', '17', 'Mimi All-Purpose Short-28-Green', 'childern', 'WSH09-28-Green', 'WSH09', '44', 'Green', '28', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('149', '17', 'Mimi All-Purpose Short-28-White', 'childern', 'WSH09-28-White', 'WSH09', '44', 'White', '28', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('150', '17', 'Mimi All-Purpose Short-29-Gray', 'childern', 'WSH09-29-Gray', 'WSH09', '44', 'Gray', '29', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('151', '17', 'Mimi All-Purpose Short-29-Green', 'childern', 'WSH09-29-Green', 'WSH09', '44', 'Green', '29', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('152', '17', 'Mimi All-Purpose Short-29-White', 'childern', 'WSH09-29-White', 'WSH09', '44', 'White', '29', '2');

INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('153', '18', 'Sybil Running Short', 'parent', 'WSH08', '', '47', '', '', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('154', '18', 'Sybil Running Short-28-Purple', 'childern', 'WSH08-28-Purple', 'WSH08', '47', 'Purple', '28', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('155', '18', 'Sybil Running Short-29-Purple', 'childern', 'WSH08-29-Purple', 'WSH08', '47', 'Purple', '29', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('156', '18', 'Sybil Running Short-30-Purple', 'childern', 'WSH08-30-Purple', 'WSH08', '47', 'Purple', '30', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('157', '18', 'Sybil Running Short-31-Purple', 'childern', 'WSH08-31-Purple', 'WSH08', '47', 'Purple', '31', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('158', '18', 'Sybil Running Short-32-Purple', 'childern', 'WSH08-32-Purple', 'WSH08', '47', 'Purple', '32', '2');


INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('159', '19', 'Artemis Running Short', 'parent', 'WSH04', '', '44', '', '', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('160', '19', 'Artemis Running Short-28-Black', 'childern', 'WSH04-28-Black', 'WSH04', '44', 'Black', '28', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('161', '19', 'Artemis Running Short-28-Blue', 'childern', 'WSH04-28-Blue', 'WSH04', '44', 'Blue', '28', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('162', '19', 'Artemis Running Short-28-Orange', 'childern', 'WSH04-28-Orange', 'WSH04', '44', 'Orange', '28', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('163', '19', 'Artemis Running Short-29-Black', 'childern', 'WSH04-29-Black', 'WSH04', '44', 'Black', '29', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('164', '19', 'Artemis Running Short-29-Blue', 'childern', 'WSH04-29-Blue', 'WSH04', '44', 'Blue', '29', '2');
INSERT INTO `lovefashion1`.`product_entity` (`entity_id`, `general_id`, `name`, `parentage`, `sku`, `parent_sku`, `price`, `color`, `size`, `manufacturer`) VALUES ('165', '19', 'Artemis Running Short-29-Orange', 'childern', 'WSH04-29-Orange', 'WSH04', '44', 'Orange', '29', '2');

INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('1', '1', '0', 'wj01-red_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('2', '1', '1', 'wj01-blue_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('3', '1', '2', 'wj01-yellow_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('4', '2', '0', 'wj06-purple_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('5', '2', '1', 'wj06-blue_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('6', '2', '2', 'wj06-green_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('7', '3', '0', 'wj07-red_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('8', '3', '1', 'wj07-orange_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('9', '3', '2', 'wj07-purple_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('10', '4', '0', 'wj05-brown_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('11', '4', '1', 'wj05-green_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('12', '4', '2', 'wj05-red_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('13', '5', '0', 'wh01-green_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('14', '5', '1', 'wh01-orange_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('15', '5', '2', 'wh01-purple_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('16', '6', '0', 'wh09-purple_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('17', '6', '1', 'wh09-green_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('18', '6', '2', 'wh09-red_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('19', '7', '0', 'wh05-white_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('20', '7', '1', 'wh05-orange_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('21', '7', '2', 'wh05-purple_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('22', '8', '0', 'ws02-green_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('23', '8', '1', 'ws02-blue_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('24', '8', '2', 'ws02-red_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('25', '9', '0', 'ws06-purple_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('26', '9', '1', 'ws06-gray_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('27', '9', '2', 'ws06-red_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('28', '10', '0', 'ws11-green_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('29', '10', '1', 'ws11-orange_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('30', '10', '2', 'ws11-yellow_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('31', '11', '0', 'ws01-black_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('32', '11', '1', 'ws01-green_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('33', '11', '2', 'ws01-yellow_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('34', '12', '0', 'wp09-black_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('35', '12', '1', 'wp09-blue_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('36', '12', '2', 'wp09-purple_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('37', '13', '0', 'wp08-black_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('38', '13', '1', 'wp08-green_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('39', '13', '2', 'wp08-red_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('40', '14', '0', 'wp07-black_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('41', '14', '1', 'wp07-blue_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('42', '14', '2', 'wp07-orange_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('43', '15', '0', 'wp06-black_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('44', '15', '1', 'wp06-blue_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('45', '15', '2', 'wp06-orange_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('46', '16', '0', 'wsh06-gray_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('47', '16', '1', 'wsh06-orange_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('48', '16', '2', 'wsh06-purple_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('49', '17', '0', 'wsh09-gray_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('50', '17', '1', 'wsh09-green_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('51', '17', '2', 'wsh09-white_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('52', '18', '0', 'wsh08-purple_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('53', '18', '1', 'wsh08-purple_back.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('54', '19', '0', 'wsh04-black_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('55', '19', '1', 'wsh04-green_main.jpg');
INSERT INTO `lovefashion1`.`product_gallery_entity` (`value_id`, `entity_id`, `position`, `value`) VALUES ('56', '19', '2', 'wsh04-orange_main.jpg');


INSERT INTO `lovefashion1`.`product_relation` (`parent_id`, `child_id`) VALUES ('1', '11');
INSERT INTO `lovefashion1`.`product_relation` (`parent_id`, `child_id`) VALUES ('1', '21');
INSERT INTO `lovefashion1`.`product_relation` (`parent_id`, `child_id`) VALUES ('1', '31');
INSERT INTO `lovefashion1`.`product_relation` (`parent_id`, `child_id`) VALUES ('11', '11');
INSERT INTO `lovefashion1`.`product_relation` (`parent_id`, `child_id`) VALUES ('11', '21');
INSERT INTO `lovefashion1`.`product_relation` (`parent_id`, `child_id`) VALUES ('11', '31');
INSERT INTO `lovefashion1`.`product_relation` (`parent_id`, `child_id`) VALUES ('21', '41');
INSERT INTO `lovefashion1`.`product_relation` (`parent_id`, `child_id`) VALUES ('21', '51');
INSERT INTO `lovefashion1`.`product_relation` (`parent_id`, `child_id`) VALUES ('21', '61');
INSERT INTO `lovefashion1`.`product_relation` (`parent_id`, `child_id`) VALUES ('21', '71');
INSERT INTO `lovefashion1`.`product_relation` (`parent_id`, `child_id`) VALUES ('21', '81');
INSERT INTO `lovefashion1`.`product_relation` (`parent_id`, `child_id`) VALUES ('21', '91');


INSERT INTO `lovefashion1`.`inventory_stock` (`stock_id`, `stock_name`) VALUES ('1', 'HCM1');
INSERT INTO `lovefashion1`.`inventory_stock` (`stock_id`, `stock_name`) VALUES ('2', 'HCM2');


INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('1', '2', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('2', '3', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('3', '4', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('4', '5', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('5', '6', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('6', '7', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('7', '8', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('8', '9', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('9', '10', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('10', '12', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('11', '13', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('12', '14', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('13', '15', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('14', '16', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('15', '17', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('16', '18', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('17', '19', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('18', '20', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('19', '22', '1', '100', '100', '100', '100', '1', '20');

INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('20', '23', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('21', '24', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('22', '25', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('23', '26', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('24', '27', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('25', '28', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('26', '29', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('27', '30', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('28', '32', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('29', '33', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('30', '34', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('31', '35', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('32', '36', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('33', '37', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('34', '38', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('35', '39', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('36', '40', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('37', '42', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('38', '43', '1', '100', '100', '100', '100', '1', '20');


INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('39', '44', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('40', '45', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('41', '46', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('42', '47', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('43', '48', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('44', '49', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('45', '50', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('46', '52', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('47', '53', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('48', '54', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('49', '55', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('50', '56', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('51', '57', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('52', '58', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('53', '59', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('54', '60', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('55', '62', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('56', '63', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('57', '64', '1', '100', '100', '100', '100', '1', '20');

INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('58', '65', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('59', '66', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('60', '67', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('61', '68', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('62', '69', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('63', '70', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('64', '72', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('65', '73', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('66', '74', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('67', '75', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('68', '76', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('69', '77', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('70', '78', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('71', '79', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('72', '80', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('73', '82', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('74', '83', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('75', '84', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('76', '85', '1', '100', '100', '100', '100', '1', '20');

INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('77', '86', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('78', '87', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('79', '88', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('80', '89', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('81', '90', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('82', '92', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('83', '93', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('84', '94', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('85', '95', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('86', '96', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('87', '97', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('88', '98', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('90', '99', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('91', '100', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('92', '102', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('93', '103', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('94', '104', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('95', '105', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('96', '106', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('97', '107', '1', '100', '100', '100', '100', '1', '20');


INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('98', '108', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('99', '109', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('100', '110', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('101', '112', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('102', '113', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('103', '114', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('104', '115', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('105', '116', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('106', '117', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('107', '119', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('108', '120', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('109', '121', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('110', '122', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('111', '123', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('112', '124', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('113', '126', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('114', '127', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('115', '128', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('116', '129', '1', '100', '100', '100', '100', '1', '20');


INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('117', '130', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('118', '131', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('119', '133', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('120', '134', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('121', '135', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('122', '136', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('123', '137', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('124', '138', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('125', '140', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('126', '141', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('127', '142', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('128', '143', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('129', '144', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('130', '145', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('131', '147', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('132', '148', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('133', '149', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('134', '150', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('135', '151', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('136', '152', '1', '100', '100', '100', '100', '1', '20');

INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('137', '154', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('138', '155', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('139', '156', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('140', '157', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('141', '158', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('142', '160', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('143', '161', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('144', '162', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('145', '163', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('146', '164', '1', '100', '100', '100', '100', '1', '20');
INSERT INTO `lovefashion1`.`inventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `min_sale_qty`, `max_sale_qty`, `is_in_stock`, `notify_stock_qty`) VALUES ('147', '165', '1', '100', '100', '100', '100', '1', '20');

INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('2', '1');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('4', '1');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('5', '1');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('2', '11');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('4', '11');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('5', '11');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('2', '21');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('4', '21');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('5', '21');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('2', '31');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('4', '31');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('5', '31');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('2', '41');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('4', '41');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('7', '41');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('2', '51');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('4', '51');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('7', '51');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('2', '61');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('4', '61');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('7', '61');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('2', '71');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('4', '71');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('7', '71');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('2', '81');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('4', '81');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('6', '81');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('2', '91');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('4', '91');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('6', '91');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('2', '101');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('4', '101');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('6', '101');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('2', '111');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('8', '111');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('9', '111');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('2', '118');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('8', '118');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('9', '118');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('2', '125');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('8', '125');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('9', '125');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('2', '132');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('8', '132');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('9', '132');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('2', '139');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('8', '139');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('10', '139');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('2', '146');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('8', '146');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('10', '146');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('2', '153');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('8', '153');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('10', '153');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('2', '159');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('8', '159');
INSERT INTO `lovefashion1`.`category_product` (`category_id`, `product_id`) VALUES ('10', '159');

INSERT INTO `lovefashion1`.`email_template` (`template_id`, `template_code`, `template_text`, `template_type`, `template_subject`, `template_sender_email`, `add_at`) VALUES ('1', 'register', 'Hi %s!\n\nTo complete the account registration process, please activate your account at the following link: %s. Time to activate your account is valid only within 7 days from the time the registration. If the deadline on you please click on the following link to system resend your activation link: %s\n\nAs a member of the website, customers will receive promotional information, the love details from our website.\n\nThank you!', '0', 'Resgister account', 'Resgister account', '2015-12-23 21:48:21');
INSERT INTO `lovefashion1`.`email_template` (`template_id`, `template_code`, `template_text`, `template_type`, `template_subject`, `template_sender_email`, `add_at`) VALUES ('2', 'forgot', 'Hello %s!\n\nTo change the current password. Please click the following link: %s.\n\nTime change password force within 7 days from the time the send mail.\n\nThank you!', '0', 'Forgot Password', 'Forgot Password', '2015-12-23 21:48:21');
INSERT INTO `lovefashion1`.`email_template` (`template_id`, `template_code`, `template_text`, `template_type`, `template_subject`, `template_sender_email`, `add_at`) VALUES ('3', 'cancle', 'Hi %s!\n\nOrders coded as %d bills have been canceled at the request of a friend. Thank you for ordering at our store.\n\nThank you!', '0', 'Cancle Orders', 'Cancle Orders', '2015-12-23 21:48:21');