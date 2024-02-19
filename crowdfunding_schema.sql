-- Drop tables if exist
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS campaign;

-- Create tables
CREATE TABLE category (
    category_id VARCHAR(10)   NOT NULL,
    category VARCHAR(50)   NOT NULL,
    CONSTRAINT pk_category PRIMARY KEY (
        category_id
     )
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(10)   NOT NULL,
    subcategory VARCHAR(50)   NOT NULL,
    CONSTRAINT pk_subcategory PRIMARY KEY (
        subcategory_id
     )
);

CREATE TABLE contacts (
    contact_id INT   NOT NULL,
    first_name VARCHAR(50)   NOT NULL,
    last_name VARCHAR(50)   NOT NULL,
    email VARCHAR(50)   NOT NULL,
    CONSTRAINT pk_contacts PRIMARY KEY (
        contact_id
     )
);

CREATE TABLE campaign (
    cf_id INT   NOT NULL,
    contact_id INT   NOT NULL,
    company_name VARCHAR(50)   NOT NULL,
    description VARCHAR(70)   NOT NULL,
    goal FLOAT   NOT NULL,
    pledged FLOAT   NOT NULL,
    outcome VARCHAR(20)   NOT NULL,
    backers_count INT   NOT NULL,
    country VARCHAR(20)   NOT NULL,
    currency VARCHAR(10)   NOT NULL,
    launched_date DATE   NOT NULL,
    end_date DATE   NOT NULL,
    category_id VARCHAR(10)   NOT NULL,
    subcategory_id VARCHAR(10)   NOT NULL,
    CONSTRAINT pk_campaign PRIMARY KEY (
        cf_id
     )
);

-- Check the tables are created
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;
SELECT * FROM campaign;

