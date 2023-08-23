
--drop table if exists "acc_core_budget_categories" cascade;
CREATE TABLE IF NOT EXISTS "acc_core_budget_categories"(
	"id" serial,
	"uid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
    "wid" varchar(255) not null default '',
	"company_id" integer not null default 0 ,
	"name" varchar(255) not null default '' , --auto-generated name, for example JAN, 2022
	"period" integer not null default 0, -- 1, 2, 6, 12
	is_active smallint DEFAULT 0 NOT NULL,
    is_synced smallint DEFAULT 0 NOT NULL,
    "created_at" timestamp,
	"updated_at" timestamp,
	"deleted_at" timestamp,
	PRIMARY KEY (id)
);

--drop table if exists "acc_core_budgets" cascade;
CREATE TABLE IF NOT EXISTS "acc_core_budgets"(
	"id" serial,
	"uid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
    "wid" varchar(255) not null default '',
	"company_id" integer not null default 0 ,
	"category_id" integer not null default 0 ,
	"name" varchar(255) not null default '' ,
	"description" varchar(255) not null default '' ,
	is_active smallint DEFAULT 0 NOT NULL,
    is_synced smallint DEFAULT 0 NOT NULL,
    "created_at" timestamp,
	"updated_at" timestamp,
	"deleted_at" timestamp,
	PRIMARY KEY (id)
);

--drop table if exists "acc_core_budget_items" cascade;
CREATE TABLE IF NOT EXISTS "acc_core_budget_items"(
	"id" serial,
	"uid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
    "wid" varchar(255) not null default '',
	"company_id" integer not null default 0 ,
	"budget_id"  integer not null default 0,
	"account_id" integer not null default 0,
	"account_type" varchar(255) not null default '' , -- income, expense, asset, liability, equity
	"budget" decimal not null default 0.00 ,-- buget-actual=balance
	"actual" decimal not null default 0.00 ,
	"balance" decimal not null default 0.00,
	"notes" varchar(255) not null default '',
	is_active smallint DEFAULT 0 NOT NULL,
    is_synced smallint DEFAULT 0 NOT NULL,
    "created_at" timestamp,
	"updated_at" timestamp,
	"deleted_at" timestamp,
	PRIMARY KEY (id)
);