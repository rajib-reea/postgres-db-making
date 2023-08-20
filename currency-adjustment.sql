--drop table if exists "acc_currency_adjustments" cascade;
CREATE TABLE IF NOT EXISTS "acc_currency_adjustments" (
	"id" serial,
	"sid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
	"iid" integer not null default 0,
	"uid" integer not null default 0,
	"company_id" integer not null default 0 ,
	"currency_id" integer not null default 0,
	"rate" decimal not null default 0,
	"exchange_date" timestamp,
	"notes" varchar(255) not null default '',
	"is_active" bool NOT NULL DEFAULT true,
	"is_synced" bool NOT NULL DEFAULT false,
	"created_at" timestamp,
	"updated_at" timestamp,
	"deleted_at" timestamp,
	PRIMARY KEY (id)
);