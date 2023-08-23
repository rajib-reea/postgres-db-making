
--drop table if exists "acc_core_recurring_expenses" cascade;
CREATE TABLE IF NOT EXISTS "acc_core_recurring_expenses"(
	"id" serial,
  	"uid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
    "wid" varchar(255) not null default '',
	"company_id" integer not null default 0 ,
	"profile_name" varchar(255) not null default '' ,
	"starts_at" timestamp,
	"ends_at" timestamp,
	"repeat_on" integer not null default 0,
	"payment_term_id" integer not null default 0,
	"account_id" integer not null default 0,
	"vendor_id" integer not null default 0,
	"client_id" integer not null default 0,
	"reference" varchar(255) not null default '' ,
	"note" varchar(255) not null default '' ,
	"status" varchar(255) not null default '' ,
	"total" decimal not null default 0.00 ,
	"amount_due" decimal not null default 0.00 ,
	"amount_paid" decimal not null default 0.00 ,
	"payment_due_date" timestamp,
	is_active smallint DEFAULT 0 NOT NULL,
    is_synced smallint DEFAULT 0 NOT NULL,
    "created_at" timestamp,
	"updated_at" timestamp,
	"deleted_at" timestamp,
	PRIMARY KEY (id)
);

--drop table if exists "acc_core_recurring_expense_items" cascade;
CREATE TABLE IF NOT EXISTS "acc_core_recurring_expense_items"(
	"id" serial,
  	"uid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
    "wid" varchar(255) not null default '',
	"company_id" integer not null default 0 ,
	"recurring_expense_id"  integer not null default 0,
	"description" varchar(255) not null default '' ,
	"unit_amount" decimal not null default 0.00 ,
	"account_code" varchar(255) not null default '' ,
	"quantity" integer not null default 0 ,
	"tax_id" integer not null default 0,
	"amount" decimal not null default 0.00 ,
	"discount_rate" decimal not null default 0.00 ,
	is_active smallint DEFAULT 0 NOT NULL,
    is_synced smallint DEFAULT 0 NOT NULL,
    "created_at" timestamp,
	"updated_at" timestamp,
	"deleted_at" timestamp,
	PRIMARY KEY (id)
);