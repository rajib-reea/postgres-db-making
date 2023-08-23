--drop table if exists "acc_core_bank_transactions" cascade;
CREATE TABLE IF NOT EXISTS "acc_core_bank_transactions"(
	"id" serial,
  	"uid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
    "wid" varchar(255) not null default '',
	"company_id" integer not null default 0 ,
	"contact_id" varchar(255) not null default '' ,
	"type" varchar(255) not null default '' , --debit or credit
	"date" timestamp,
	"reference" varchar(255) not null default '' ,
	"currency_code" integer not null default 0 ,
	"currency_rate" decimal not null default 0.00 ,
	"status" varchar(255) not null default '' ,
	"total" decimal not null default 0.00 ,
	"total_tax" decimal not null default 0.00 ,
	"prepayment_id" integer not null default 0, --what does it mean by prepayment?
	"overpayment_id" integer not null default 0,--what does it mean by overpayment?
	"description" varchar(255) not null default '' ,
	"is_active" bool NOT NULL DEFAULT true,
	"is_synced" bool NOT NULL DEFAULT false,
	"created_at" timestamp,
	"updated_at" timestamp,
	"deleted_at" timestamp,
	PRIMARY KEY (id)
);

--drop table if exists "acc_core_bank_transaction_files" cascade;
CREATE TABLE IF NOT EXISTS "acc_core_bank_transaction_files"(
	"id" serial,
  	"uid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
    "wid" varchar(255) not null default '',
	"company_id" integer not null default 0 ,
	"bank_transaction_id" integer not null default 0 ,
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

--drop table if exists "acc_core_bank_transfers" cascade;
CREATE TABLE IF NOT EXISTS "acc_core_bank_transfers"(
	"id" serial,
  	"uid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
    "wid" varchar(255) not null default '',
	"company_id" integer not null default 0 ,
	"from_bank_account" integer not null default 0,
	"to_bank_account" integer not null default 0,
	"amount" decimal not null default 0.00,
	"date" timestamp,
	"currency_code" integer not null default 0,
	"currency_rate" decimal not null default 0.00,
	"from_bank_transaction_id" integer not null default 0,
	"to_bank_transaction_id" integer not null default 0,
	"from_is_reconciled" smallint not null default 0 ,
	"to_is_reconciled" smallint not null default 0 ,
	"reference" varchar(255) not null default '' ,
	"is_active" bool NOT NULL DEFAULT true,
	"is_synced" bool NOT NULL DEFAULT false,
	"created_at" timestamp,
	"updated_at" timestamp,
	"deleted_at" timestamp,
	PRIMARY KEY (id)
);

--drop table if exists "acc_core_bank_transfer_files" cascade;
CREATE TABLE IF NOT EXISTS "acc_core_bank_transfer_files"(
	"id" serial,
  	"uid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
    "wid" varchar(255) not null default '',
	"company_id" integer not null default 0 ,
	"bank_transfer_id" integer not null default 0 ,
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

--drop table if exists "acc_core_bank_adjustments" cascade;
CREATE TABLE IF NOT EXISTS "acc_core_bank_adjustments"(
	"id" serial,
  	"uid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
    "wid" varchar(255) not null default '',
	"company_id" integer not null default 0 ,
	"account_code" integer not null default 0,
	"amount" decimal not null default 0.00,
	"date" timestamp,
	"currency_code" integer not null default 0,
	"currency_rate" decimal not null default 0.00,
	"bank_statement_id" integer not null default 0,
	"reference" varchar(255) not null default '' ,
	"is_active" bool NOT NULL DEFAULT true,
	"is_synced" bool NOT NULL DEFAULT false,
	"created_at" timestamp,
	"updated_at" timestamp,
	"deleted_at" timestamp,
	PRIMARY KEY (id)
);

--drop table if exists "acc_core_bank_adjustment_files" cascade;
CREATE TABLE IF NOT EXISTS "acc_core_bank_adjustment_files"(
	"id" serial,
  	"uid" varchar(255) not null default '',
  	"udid" varchar(255) not null default '',
    "wid" varchar(255) not null default '',
	"company_id" integer not null default 0 ,
	"bank_adjustment_id" integer not null default 0,
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