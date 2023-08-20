--drop table if exists "acc_vendor_credits" cascade;
CREATE TABLE IF NOT EXISTS "acc_vendor_credits"(
	"id" serial,
  	"sid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
	"iid" integer not null default 0,
	"uid" integer not null default 0,
	"company_id" integer not null default 0 ,
	"vendor_credit_number" varchar(255) not null default '' ,
	"order_number" varchar(255) not null default '' ,
	"contact_id"  integer not null default 0,
	"vendor_credit_date" timestamp,
	"status" varchar(255) not null default '' ,
	"sub_total" decimal not null default 0.00 ,
	"total_tax" decimal not null default 0.00 ,
	"total" decimal not null default 0.00 ,
	"currency_code" integer not null default 0,
	"currency_rate" varchar(255) not null default '' ,
	"deduction" decimal not null default 0.00 ,
	"adjustment" decimal not null default 0.00 ,
	"reference" varchar(255) not null default '' ,
	"notes" varchar(255) not null default '' ,
	"terms_conditions" text ,
	"sent_to_contact" smallint not null default 0 ,
	"remaining_credit" decimal not null default 0.00 ,
	"allocations" decimal not null default 0.00 ,
	"is_active" bool NOT NULL DEFAULT true,
	"is_synced" bool NOT NULL DEFAULT false,
	"created_at" timestamp,
	"updated_at" timestamp,
	"deleted_at" timestamp,
	PRIMARY KEY (id)	
);

--drop table if exists "acc_vendor_credit_items" cascade;
CREATE TABLE IF NOT EXISTS "acc_vendor_credit_items"(
	"id" serial,
  	"sid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
	"iid" integer not null default 0,
	"uid" integer not null default 0,
	"company_id" integer not null default 0 ,
	"vendor_credit_id"  integer not null default 0,
	"description" varchar(255) not null default '' ,
	"quantity" integer not null default 0,
	"unit_amount" decimal not null default 0.00,
	"account_code" integer not null default 0,
	"tax_type" integer not null default 0,
	"tax_amount" decimal not null default 0.00,
	"line_amount" decimal not null default 0.00,
	"is_active" bool NOT NULL DEFAULT true,
	"is_synced" bool NOT NULL DEFAULT false,
	"created_at" timestamp,
	"updated_at" timestamp,
	"deleted_at" timestamp,
	PRIMARY KEY (id)	
);

--drop table if exists "acc_vendor_credit_files" cascade;
CREATE TABLE IF NOT EXISTS "acc_vendor_credit_files"(
	"id" serial,
  	"sid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
	"iid" integer not null default 0,
	"uid" integer not null default 0,
	"company_id" integer not null default 0 ,
	"vendor_credit_id" integer not null default 0 ,
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
