--drop table if exists "acc_core_bills" cascade;
CREATE TABLE IF NOT EXISTS "acc_core_bills" (
	"id" serial,
  	"uid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
    "wid" varchar(255) not null default '',
	"company_id" integer not null default 0 ,
	"bill_number" varchar(255) not null default '' ,
	"order_number" varchar(255) not null default '' ,
	"status" varchar(255) not null default '' ,
	"billed_at" timestamp,
	"due_at" timestamp,
	"amount" decimal not null default 0.00,
	"tax_amount" decimal not null default 0.00,
	"adjustment_amount" decimal not null default 0.00,
	"currency_code"  integer not null default 0,
	"currency_rate" decimal not null default 0.00,
	"contact_id"  integer not null default 0,
	"notes"  varchar(255) not null default '',
	"is_active" bool NOT NULL DEFAULT true,
	"is_synced" bool NOT NULL DEFAULT false,
	"created_at" timestamp,
	"updated_at" timestamp,
	"deleted_at" timestamp,
	PRIMARY KEY (id)
);

--drop table if exists "acc_core_bill_items" cascade;
CREATE TABLE IF NOT EXISTS "acc_core_bill_items" (
	"id" serial,
  	"uid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
    "wid" varchar(255) not null default '',
	"company_id" integer not null default 0 ,
	"bill_id" integer not null default 0,
	"item_id" integer not null default 0,
	"service_id" integer not null default 0,
	"name" varchar(255) not null default '' ,
	"sku" varchar(255) not null default '' ,
	"quantity" integer not null default 0,
	"price" decimal not null default 0.00,
	"total" decimal not null default 0.00,
	"tax_id"  integer not null default 0,
	"tax_amount" decimal not null default  0.00,
	"discount_rate" decimal not null default 0.00,
	"discount_type" varchar(255) not null default '' ,
	"is_active" bool NOT NULL DEFAULT true,
	"is_synced" bool NOT NULL DEFAULT false,
	"created_at" timestamp,
	"updated_at" timestamp,
	"deleted_at" timestamp,
	PRIMARY KEY (id)
);

--drop table if exists "acc_core_bill_histories" cascade;
CREATE TABLE IF NOT EXISTS "acc_core_bill_histories" (
	"id" serial,
  	"uid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
    "wid" varchar(255) not null default '',
	"company_id" integer not null default 0 ,
	"bill_id" integer not null default 0,
	"status" varchar(255) not null default '' ,
	"notify" smallint not null default 0 ,
	"description" varchar(255) not null default '',
	"is_active" bool NOT NULL DEFAULT true,
	"is_synced" bool NOT NULL DEFAULT false,
	"created_at" timestamp,
	"updated_at" timestamp,
	"deleted_at" timestamp,
	PRIMARY KEY (id)
);

--drop table if exists "acc_core_bill_files" cascade;
CREATE TABLE IF NOT EXISTS "acc_core_bill_files"(
	"id" serial,
  	"uid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
    "wid" varchar(255) not null default '',
	"company_id" integer not null default 0 ,
	"bill_id" integer not null default 0 ,
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
	"is_active" bool NOT NULL DEFAULT true,
	"is_synced" bool NOT NULL DEFAULT false,
	"created_at" timestamp,
	"updated_at" timestamp,
	"deleted_at" timestamp,
	PRIMARY KEY (id)
);
