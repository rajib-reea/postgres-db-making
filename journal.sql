--drop table if exists "acc_core_journals" cascade;
CREATE TABLE IF NOT EXISTS "acc_core_journals"(
	"id" serial,
	"uid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
    "wid" varchar(255) not null default '',
	"company_id" integer not null default 0 ,
	"journal_date" timestamp,
	"journal_number" varchar(255) not null default '' ,
	"reference" varchar(255) not null default '' ,
	"notes" varchar(255) not null default '' ,
	"journal_type" varchar(255) not null default '' , --cash based or credit based
	"currency_id" integer not null default 0,
	"total" decimal not null default 0.00,
	"difference" decimal not null default 0.00,
	"is_active" smallint not null default 1 ,
	"created_at" timestamp,
	"updated_at" timestamp,
	"deleted_at" timestamp,
	PRIMARY KEY (id)
);

--drop table if exists "acc_core_journal_items" cascade;
CREATE TABLE IF NOT EXISTS "acc_core_journal_items"(
	"id" serial,
	"uid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
    "wid" varchar(255) not null default '',
	"company_id" integer not null default 0 ,
	"journal_id"  integer not null default 0,
	"account_id" integer not null default 0,
	"contact_id" integer not null default 0,
	"description" varchar(255) not null default '' ,
	"debit_amount" decimal not null default 0.0 ,
	"credit_amount" decimal not null default 0.0 ,
	"tax_id" integer not null default 0,
	"tax_amount" decimal not null default 0.0 ,
	"is_active" bool NOT NULL DEFAULT true,
	"is_synced" bool NOT NULL DEFAULT false,
	"created_at" timestamp,
	"updated_at" timestamp,
	"deleted_at" timestamp,
	PRIMARY KEY (id)
);

--drop table if exists "acc_core_journal_files" cascade;
CREATE TABLE IF NOT EXISTS "acc_core_journal_files"(
	"id" serial,
	"uid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
    "wid" varchar(255) not null default '',
	"company_id" integer not null default 0 ,
	"organization_id" int4 NOT NULL DEFAULT 0,
	"journal_id" INTEGER NOT NULL DEFAULT 0,
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


--drop table if exists "acc_core_recurring_journals" cascade;
CREATE TABLE IF NOT EXISTS "acc_core_recurring_journals"(
	"id" serial,
	"uid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
    "wid" varchar(255) not null default '',
	"company_id" integer not null default 0 ,
	"profile_name" varchar(255) not null default '' ,
	"repeat_on" varchar(255) not null default '' ,--15, 30, 60, 90, 180, 360, 720
	"starts_on" timestamp,
	"ends_on" timestamp,
	"reference" varchar(255) not null default '' ,
	"notes" varchar(255) not null default '' ,
	"journal_type" varchar(255) not null default '' , --cash based or credit based
	"currency_id" integer not null default 0,
	"total" decimal not null default 0.00,
	"difference" decimal not null default 0.00,
	"is_active" bool NOT NULL DEFAULT true,
	"is_synced" bool NOT NULL DEFAULT false,
	"created_at" timestamp,
	"updated_at" timestamp,
	"deleted_at" timestamp,
	PRIMARY KEY (id)
);

--drop table if exists "acc_core_recurring_journal_items" cascade;
CREATE TABLE IF NOT EXISTS "acc_core_recurring_journal_items"(
	"id" serial,
	"uid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
    "wid" varchar(255) not null default '',
	"company_id" integer not null default 0 ,
	"journal_id"  integer not null default 0,
	"account_id" integer not null default 0,
	"contact_id" integer not null default 0,
	"description" varchar(255) not null default '' ,
	"debit_amount" decimal not null default 0.0 ,
	"credit_amount" decimal not null default 0.0 ,
	"tax_id" integer not null default 0,
	"tax_amount" decimal not null default 0.0 ,
	"is_active" bool NOT NULL DEFAULT true,
	"is_synced" bool NOT NULL DEFAULT false,
	"created_at" timestamp,
	"updated_at" timestamp,
	"deleted_at" timestamp,
	PRIMARY KEY (id)
);