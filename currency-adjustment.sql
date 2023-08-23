--drop table if exists "acc_core_currency_adjustments" cascade;
CREATE TABLE IF NOT EXISTS "acc_core_currency_adjustments" (
	"id" serial,
	"uid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
    "wid" varchar(255) not null default '',
	"company_id" integer not null default 0 ,
	"currency_id" integer not null default 0,
	"rate" decimal not null default 0,
	"exchange_date" timestamp,
	"notes" varchar(255) not null default '',
	is_active smallint DEFAULT 0 NOT NULL,
    is_synced smallint DEFAULT 0 NOT NULL,
    "created_at" timestamp,
	"updated_at" timestamp,
	"deleted_at" timestamp,
	PRIMARY KEY (id)
);