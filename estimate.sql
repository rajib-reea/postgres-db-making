--drop table if exists "acc_core_estimates" cascade;
CREATE TABLE IF NOT EXISTS "acc_core_estimates"(
	"id" serial,
  	"uid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
    "wid" varchar(255) not null default '',
	"company_id" integer not null default 0 ,
	"title" varchar(255) not null default '' ,
	"contact_id" integer not null default 0,
	"estimate_date" timestamp,
	"expiry_date" timestamp,
	"status" varchar(255) not null default '' ,
	"sub_total" decimal not null default 0.00 ,
	"total_tax" decimal not null default 0.00 ,
	"total" decimal not null default 0.00 ,
	"discount" decimal not null default 0.00 ,
	"adjustment"decimal not null default 0.00 ,
	"shipping_charge" decimal not null default 0.00 ,
	"currency_code" integer not null default 0,
	"currency_rate" decimal not null default 0.00 ,
	"qoute_number" varchar(255) not null default '' ,
	"sale_person" varchar(255) not null default '' ,
	"project_name" varchar(255) not null default '' ,
	"reference" varchar(255) not null default '' ,
	"notes" varchar(255) not null default '' ,
	"terms_conditions" varchar(255) not null default '',
	is_active smallint DEFAULT 0 NOT NULL,
    is_synced smallint DEFAULT 0 NOT NULL,
    "created_at" timestamp,
	"updated_at" timestamp,
	"deleted_at" timestamp,
	PRIMARY KEY (id)
);

--drop table if exists "acc_core_estimate_items" cascade;
CREATE TABLE IF NOT EXISTS "acc_core_estimate_items"(
	"id" serial,
  	"uid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
    "wid" varchar(255) not null default '',
	"company_id" integer not null default 0 ,
	"estimate_id"  integer not null default 0,
	"description" varchar(255) not null default '' ,
	"quantity" integer not null default 0,
	"unit_amount" decimal not null default 0.00,
	"item_code" integer not null default 0,
	"tax_type" integer not null default 0,
	"tax_amount" decimal not null default 0.00,
	"line_amount" decimal not null default 0.00,
	"discount" decimal not null default 0.00,
	"tracking" varchar(255) not null default '',
	is_active smallint DEFAULT 0 NOT NULL,
    is_synced smallint DEFAULT 0 NOT NULL,
    "created_at" timestamp,
	"updated_at" timestamp,
	"deleted_at" timestamp,
	PRIMARY KEY (id)
);

--drop table if exists "acc_core_estimate_files" cascade;
CREATE TABLE IF NOT EXISTS "acc_core_estimate_files"(
	"id" serial,
  	"uid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
    "wid" varchar(255) not null default '',
	"company_id" integer not null default 0 ,
	"estimate_id" integer not null default 0 ,
	"name" varchar(255) not null default '',
	"type" varchar(255) not null default '',
	"path" varchar(255) not null default '',
	"filename" varchar(255) not null default '',
	"extension" varchar(255) not null default '',
	"timestamp" varchar(255) not null default '',
	"mimetype" varchar(255) not null default '',
	"size" varchar(255) not null default '',
	"dirname" varchar(255) not null default '',
	"basename" varchar(255) not null default '',
	is_active smallint DEFAULT 0 NOT NULL,
    is_synced smallint DEFAULT 0 NOT NULL,
    "created_at" timestamp,
	"updated_at" timestamp,
	"deleted_at" timestamp,
	PRIMARY KEY (id)
);