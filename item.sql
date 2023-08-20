--drop table if exists "acc_items" cascade;
CREATE TABLE IF NOT EXISTS "acc_items" (
	id serial4 NOT NULL,
	sid varchar(255) NOT NULL DEFAULT ''::character varying,
	udid varchar(255) NOT NULL DEFAULT ''::character varying,
	iid int4 NOT NULL DEFAULT 0,
	uid int4 NOT NULL DEFAULT 0,
	"company_id" int4 NOT NULL DEFAULT 0,
	"item_type" varchar(255) not null default '' , --goods or service
	"name" varchar(255) not null default '' ,
	"sku" varchar(255) not null default '' ,
	"unit" varchar(255) not null default '' , --
	"quantity" integer  not null default 1,
	"purchase_description" varchar(255) not null default '' ,
	"purchase_details" varchar(255) not null default '' ,
	"sales_description" varchar(255) not null default '' ,
	"sales_details" varchar(255) not null default '' ,
	"category_id" integer not null default 0,
	"tax_type"  varchar(255) not null default '' ,
	"enabled" smallint not null default 1,
	"bundled_from" integer  not null default 1,
	"is_tracked_as_inventory" bool NOT NULL DEFAULT false,
	"inventory_asset_account_code" varchar(255) not null default '' ,
	"total_cost_pool" decimal  not null default 0.00,
	"quantity_on_hand" inetger  not null default 0,
	"is_sold" bool NOT NULL DEFAULT false,
	"is_purchased" bool NOT NULL DEFAULT false,
	"is_active" bool NOT NULL DEFAULT true,
	"is_synced" bool NOT NULL DEFAULT false,
	"created_at" timestamp,
	"updated_at" timestamp,
	"deleted_at" timestamp,
	PRIMARY KEY (id)
);

--drop table if exists "acc_item_purchases" cascade;
CREATE TABLE IF NOT EXISTS "acc_item_purchases"(
	id serial4 NOT NULL,
	sid varchar(255) NOT NULL DEFAULT ''::character varying,
	udid varchar(255) NOT NULL DEFAULT ''::character varying,
	iid int4 NOT NULL DEFAULT 0,
	uid int4 NOT NULL DEFAULT 0,
	"company_id" int4 NOT NULL DEFAULT 0,
	"item_id"  integer not null default 0,
	"unit_price" decimal not null default 0.00,
	"account_code" integer not null default 0,
	"gl_account_code" integer not null default 0,
	"tax_type" varchar(255) not null default '',
	"is_active" bool NOT NULL DEFAULT true,
	"is_synced" bool NOT NULL DEFAULT false,
	"created_at" timestamp,
	"updated_at" timestamp,
	"deleted_at" timestamp,
	PRIMARY KEY (id)
);

--drop table if exists "acc_item_sales" cascade;
CREATE TABLE IF NOT EXISTS "acc_item_sales"(
	id serial4 NOT NULL,
	sid varchar(255) NOT NULL DEFAULT ''::character varying,
	udid varchar(255) NOT NULL DEFAULT ''::character varying,
	iid int4 NOT NULL DEFAULT 0,
	uid int4 NOT NULL DEFAULT 0,
	"company_id" int4 NOT NULL DEFAULT 0,
	"item_id"  integer not null default 0,
	"unit_price" decimal  not null default 0.00,
	"account_code" integer not null default 0,
	"gl_account_code" integer not null default 0,
	"tax_type" varchar(255) not null default '',
	"is_active" bool NOT NULL DEFAULT true,
	"is_synced" bool NOT NULL DEFAULT false,
	"created_at" timestamp,
	"updated_at" timestamp,
	"deleted_at" timestamp,
	PRIMARY KEY (id)
);