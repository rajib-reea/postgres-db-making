--drop table if exists "acc_core_contacts" cascade;
CREATE TABLE IF NOT EXISTS "acc_core_contacts" (
     "id" serial,
     "uid" varchar(255) not null default '',
    "udid" varchar(255) not null default '',
    "wid" varchar(255) not null default '',
	"company_id" int4 NOT NULL DEFAULT 0,
	"contact_status" varchar(255) not null default '' , --are they in business or not
	"enabled_for_doing_business"  smallint not null default 1 , --do we do business with this party?
	"first_name" varchar(255) not null default '' ,
	"last_name" varchar(255) not null default '' ,
	"name" varchar(255) not null default '' ,  --derived
	"email" varchar(255) not null default '' ,
	"phone" varchar(255) not null default '' ,
	"website" varchar(255) not null default '' ,
	"country_code" varchar(255) not null default '' ,
	"state_name" varchar(255) not null default '' ,
	"zip_code" varchar(255) not null default '' ,
	"city" varchar(255) not null default '' ,
	"reference" varchar(255) not null default '' , --is there any personal who refers this contact?
	"is_supplier" smallint not null default 0 ,  --vendor
	"is_customer" smallint not null default 0 , --customer
	"tracking_category_name" varchar(255) not null default '' ,
	"tracking_option_name" varchar(255) not null default '' ,
	is_active smallint DEFAULT 0 NOT NULL,
    is_synced smallint DEFAULT 0 NOT NULL,
    "created_at" timestamp,
	"updated_at" timestamp,
	"deleted_at" timestamp,
	PRIMARY KEY ("id")
);

--drop table if exists "acc_core_contact_contact_persons" cascade;
CREATE TABLE IF NOT EXISTS "acc_core_contact_contact_persons"(
     "id" serial,
    "uid" varchar(255) not null default '',
    "udid" varchar(255) not null default '',
    "wid" varchar(255) not null default '',
	"company_id" int4 NOT NULL DEFAULT 0,
	"contact_id"  bigint not null default 0,
	"first_name" varchar(255) not null default '' ,
	"last_name" boolean not null default  false ,
	"email" varchar(255) not null default '' ,
	"phone" varchar(255) not null default '' ,
	"include_in_emails" smallint not null default 0 ,
	is_active smallint DEFAULT 0 NOT NULL,
    is_synced smallint DEFAULT 0 NOT NULL,
    "created_at" timestamp,
	"updated_at" timestamp,
	"deleted_at" timestamp,
	PRIMARY KEY ("id")
);

--drop table if exists "acc_core_contact_financial_details" cascade;
CREATE TABLE IF NOT EXISTS "acc_core_contact_financial_details"(
     "id" serial,
    "uid" varchar(255) not null default '',
    "udid" varchar(255) not null default '',
    "wid" varchar(255) not null default '',
	"company_id" int4 NOT NULL DEFAULT 0,
	"contact_id" int4 NOT NULL DEFAULT 0,
	"bin" varchar(255) not null default '' ,
	"currency_code" varchar(255) not null default '' ,
	"tax_number" varchar(255) not null default '' ,
	"default_sales_tax" smallint not null default 0 , --tax-rate-id
	"default_purchase_tax" smallint not null default 0 , --tax-rate-id
	"accounts_receivable_tax_type" smallint not null default 0 , --tax-rate-id
	"accounts_payable_tax_type" smallint not null default 0 , ----tax-rate-id
	"sales_default_account_code" smallint not null default 0 ,
	"purchases_default_account_code" smallint not null default 0 ,
	"sales_default_line_amount_type" varchar(255) not null default '' , --for example a dozen or a one.
	"purchases_default_line_amount_type" varchar(255) not null default '' , ----for example a dozen or a one.
	"batch_payment_enabled" smallint not null default 0 ,
	"batch_bank_account_no"  varchar(255) not null default '' ,
	"batch_bank_account_name"  varchar(255) not null default '' ,
	"batch_bank_details"  varchar(255) not null default '' ,
	"balance" decimal not null default 0.00 , --calculated on every transaction
	"credit_limit" decimal not null default 0.00 ,
	"block_after_credit_limit" smallint not null default 0 ,
	"discount_enabled" smallint not null default 0 ,
	"sales_dicount_pct" decimal not null default 0.00 ,
	"purchase_dicount_pct" decimal not null default 0.00 ,
	"bill_due_date_type" smallint not null default 0 , --payment-term-id
	"invoice_due_date_type" smallint not null default 0 , --payment-term-id
	is_active smallint DEFAULT 0 NOT NULL,
    is_synced smallint DEFAULT 0 NOT NULL,
    "created_at" timestamp,
	"updated_at" timestamp,
	"deleted_at" timestamp,
	PRIMARY KEY ("id")
);