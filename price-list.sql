--drop table if exists "acc_price_lists" cascade;
CREATE TABLE IF NOT EXISTS "acc_price_lists"(
	"id" serial,
	"sid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
	"iid" integer not null default 0,
	"uid" integer not null default 0,
	"company_id" integer not null default 0 ,
	"name" varchar(255) not null default '' ,
	"type" smallint not null default 0, --purchase or sale
	"item_rate_markup" smallint not null default 0,
	"item_rate_individual" smallint not null default 0,
	"percentage" decimal not null default 0.00,
	"roundoff" integer not null default 2,
	"description" varchar(255) not null default '' ,
	"is_active" bool NOT NULL DEFAULT true,
	"is_synced" bool NOT NULL DEFAULT false,
	"created_at" timestamp,
	"updated_at" timestamp,
	"deleted_at" timestamp,
	PRIMARY KEY ("id")
);