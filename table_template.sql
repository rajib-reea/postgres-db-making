-drop table if exists "acc_core_usr_general_preferences" cascade;
CREATE TABLE IF NOT EXISTS "acc_core_usr_company_operation_preferences"(
     "id" serial,
     "uid" varchar(255) not null default '',
    "udid" varchar(255) not null default '',
    "wid" integer not null default 0,
    "company_id" integer not null default 0 ,
    "work_week" varchar(255) not null default '' , --monday for example
    "discount_level" smallint not null default 0, --transaction(2), line(1) or no(0)
    "adjustments_included" smallint not null default 0,
    "shiping_charges_included" smallint not null default 0,
    "billable_bill_expense_account_id" smallint not null default 0,
    "default_markup_pct" decimal not null default 0.00,
    "description" varchar(255) not null default '' ,
    "is_active" bool NOT NULL DEFAULT true,
    "is_synced" bool NOT NULL DEFAULT false,
    "created_at" timestamp,
    "updated_at" timestamp,
    "deleted_at" timestamp,
    PRIMARY KEY ("id")
    );
