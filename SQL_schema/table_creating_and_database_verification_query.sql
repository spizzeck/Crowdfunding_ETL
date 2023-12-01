CREATE TABLE "campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" varchar   NOT NULL,
    "company_name" varchar   NOT NULL,
    "description" varchar   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" varchar   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(2)   NOT NULL,
    "currency" varchar(3)   NOT NULL,
    "launched_date" varchar   NOT NULL,
    "end_date" varchar   NOT NULL,
    "category_id" varchar(5)   NOT NULL,
    "subcategory_id" varchar(15)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY ("cf_id")
);

CREATE TABLE "category" (
    "category_id" varchar(6)   NOT NULL,
    "category" varchar(20)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" varchar(15)   NOT NULL,
    "subcategory" varchar(30)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" varchar   NOT NULL,
    "first_name" varchar(15)   NOT NULL,
    "last_name" varchar(15)   NOT NULL,
    "email" varchar   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");

select campaign.company_name as "Company Name", campaign.outcome as "Outcome", contacts.contact_id as "Contact ID"
from campaign
	join contacts on contacts.contact_id=campaign.contact_id
where campaign.outcome= 'successful' or campaign.outcome= 'failed'
limit 100;