
--drop table if exists "acc_expenses" cascade;
CREATE TABLE IF NOT EXISTS "acc_expenses"(
	"id" serial,
  	"sid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
	"iid" integer not null default 0,
	"uid" integer not null default 0,
	"company_id" integer not null default 0 ,
	"account_id" integer not null default 0,
	"vendor_id" integer not null default 0,
	"client_id" integer not null default 0,
	"receipt_number" varchar(255) not null default '' ,
	"reference" varchar(255) not null default '' ,
	"note" varchar(255) not null default '' ,
	"status" varchar(255) not null default '' ,
	"total" decimal not null default 0.00 ,
	"amount_due" decimal not null default 0.00 ,
	"amount_paid" decimal not null default 0.00 ,
	"payment_due_date" timestamp,
	"is_active" bool NOT NULL DEFAULT true,
	"is_synced" bool NOT NULL DEFAULT false,
	"created_at" timestamp,
	"updated_at" timestamp,
	"deleted_at" timestamp,
	PRIMARY KEY (id)	
);

--drop table if exists "acc_expense_items" cascade;
CREATE TABLE IF NOT EXISTS "acc_expense_items"(
	"id" serial,
  	"sid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
	"iid" integer not null default 0,
	"uid" integer not null default 0,
	"company_id" integer not null default 0 ,
	"expense_id"  integer not null default 0,
	"description" varchar(255) not null default '' ,
	"unit_amount" decimal not null default 0.00 ,
	"account_code" varchar(255) not null default '' ,
	"quantity" integer not null default 0 ,
	"tax_id" integer not null default 0,
	"amount" decimal not null default 0.00 ,
	"discount_rate" decimal not null default 0.00 ,
	"is_active" bool NOT NULL DEFAULT true,
	"is_synced" bool NOT NULL DEFAULT false,
	"created_at" timestamp,
	"updated_at" timestamp,
	"deleted_at" timestamp,
	PRIMARY KEY (id)	
);

--drop table if exists "acc_expense_files" cascade;
CREATE TABLE IF NOT EXISTS "acc_expense_files"(
	"id" serial,
  	"sid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
	"iid" integer not null default 0,
	"uid" integer not null default 0,
	"company_id" integer not null default 0 ,
	"expense_id" integer not null default 0 ,
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

--drop table if exists "acc_expense_claims" cascade;
CREATE TABLE IF NOT EXISTS "acc_expense_claims"(
	"id" serial,
  	"sid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
	"iid" integer not null default 0,
	"uid" integer not null default 0,
	"company_id" integer not null default 0 ,
	"account_id" integer not null default 0,
	"contact_id" integer not null default 0,
	"expense_id" integer not null default 0,
	"status" varchar(255) not null default '' ,
	"total" decimal not null default 0.00 ,
	"amount_due" decimal not null default 0.00 ,
	"amount_paid" decimal not null default 0.00 ,
	"payment_due_date" timestamp,
	"reporting_date" timestamp,
	"is_active" bool NOT NULL DEFAULT true,
	"is_synced" bool NOT NULL DEFAULT false,
	"created_at" timestamp,
	"updated_at" timestamp,
	"deleted_at" timestamp,
	PRIMARY KEY (id)	
);

--drop table if exists "acc_expense_claim_files" cascade;
CREATE TABLE IF NOT EXISTS "acc_expense_claim_files"(
	"id" serial,
  	"sid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
	"iid" integer not null default 0,
	"uid" integer not null default 0,
	"company_id" integer not null default 0 ,
	"expense_claim_id" integer not null default 0 ,
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