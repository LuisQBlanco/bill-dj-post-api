-- -----------------------------------------------------
-- Table `mydbbills`.`Customers`
-- -----------------------------------------------------

CREATE TABLE "Customers" (
  "CustomerID" INTEGER NOT NULL,
  "FirstName" VARCHAR(200) NOT NULL,
  "LastName" VARCHAR(200) NOT NULL,
  "Email" VARCHAR(200) NULL DEFAULT 'Null',
  "Birthday" DATE NULL,
  "Address" VARCHAR(45) NULL,
  "PostalCode" VARCHAR(10) NULL,
  "Province" VARCHAR(45) NULL,
  PRIMARY KEY ("CustomerID"));
  CREATE UNIQUE INDEX "CustomersID_UNIQUE" ON "Customers" ("CustomerID");


-- -----------------------------------------------------
-- Table "mydbbills"."Subscriptions"
-- -----------------------------------------------------
CREATE TABLE "Subscriptions" (
  "SubscriptionID" INTEGER NOT NULL ,
  "SubscriptionCard" VARCHAR(20) NOT NULL,
  "CreateDate" DATE NOT NULL,
  "ExpDate" DATE NOT NULL,
  "Customers_CustomerID" INTEGER NOT NULL,
  CONSTRAINT "fk_Subscriptions_Customers"
    PRIMARY KEY ("SubscriptionID"),
    FOREIGN KEY ("Customers_CustomerID")
    REFERENCES "Customers" ("CustomerID")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
CREATE UNIQUE INDEX "SubscriptionID_UNIQUE" ON "Subscriptions" ("SubscriptionID");
CREATE INDEX "fk_Subscriptions_Customers_idx" ON "Subscriptions" ("Customers_CustomerID");


-- -----------------------------------------------------
-- Table "mydbbills"."Products"
-- -----------------------------------------------------
CREATE TABLE "Products" (
  "ProductID" INTEGER NOT NULL ,
  "NameProduct" VARCHAR(200) NOT NULL,
  "PriceProduct" FLOAT NOT NULL,
PRIMARY KEY ("ProductID"));
CREATE UNIQUE INDEX "ProductsID_UNIQUE" ON "Products" ("ProductID");


-- -----------------------------------------------------
-- Table "mydbbills"."TaxesType"
-- -----------------------------------------------------
CREATE TABLE "TaxesType" (
  "TaxTypeID" INTEGER NOT NULL ,
  "TaxType" VARCHAR(20) NOT NULL,
  "TaxPercentage" DECIMAL NOT NULL,
  PRIMARY KEY ("TaxTypeID"));
CREATE UNIQUE INDEX "TaxesTypeID_UNIQUE" ON "TaxesType" ("TaxTypeID");


-- -----------------------------------------------------
-- Table "mydbbills"."HeadBills"
-- -----------------------------------------------------
CREATE TABLE "HeadBills" (
  "HeadBillID" INTEGER NOT NULL ,
  "CustomerID" INTEGER NOT NULL,
  "BillDate" DATE NOT NULL,
  "BillNumber" VARCHAR(45) NOT NULL,
  PRIMARY KEY ("HeadBillID"),
  CONSTRAINT "fk_HeadBills_Customers1"
    FOREIGN KEY ("CustomerID")
    REFERENCES "Customers" ("CustomerID")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
CREATE UNIQUE INDEX "BillID_UNIQUE" ON "HeadBills" ("HeadBillID");
CREATE INDEX "fk_HeadBills_Customers1_idx" on "HeadBills" ("CustomerID");


-- -----------------------------------------------------
-- Table "mydbbills"."RelationshipTaxesProduct"
-- -----------------------------------------------------
CREATE TABLE "RelationshipTaxesProduct" (
  "RelationshipTaxProductID" INTEGER NOT NULL ,
  "ProductID" INTEGER NOT NULL,
  "TaxTypeID" INTEGER NOT NULL,
  PRIMARY KEY ("RelationshipTaxProductID"),
  CONSTRAINT "fk_RelationshipTaxesProduct_Products1"
    FOREIGN KEY ("ProductID")
    REFERENCES "Products" ("ProductID")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_RelationshipTaxesProduct_TaxesType1"
    FOREIGN KEY ("TaxTypeID")
    REFERENCES "TaxesType" ("TaxTypeID")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
CREATE UNIQUE INDEX "RelationshipTaxProductID_UNIQUE" ON "RelationshipTaxesProduct" ("RelationshipTaxProductID");
CREATE INDEX "fk_RelationshipTaxesProduct_Products1_idx" ON "RelationshipTaxesProduct" ("ProductID");
CREATE INDEX "fk_RelationshipTaxesProduct_TaxesType1_idx" ON "RelationshipTaxesProduct" ("TaxTypeID");



-- -----------------------------------------------------
-- Table "mydbbills"."BillDetails"
-- -----------------------------------------------------
CREATE TABLE "BillDetails" (
  "HeadBills_HeadBillID" INTEGER NOT NULL,
  "ProductsStatic_ProductStaticID" INTEGER NOT NULL,
  "ProductName" VARCHAR(45) NULL,
  "Price" VARCHAR(45) NULL,
  "HeadBills_HeadBillID1" INTEGER NOT NULL,
  PRIMARY KEY ("HeadBills_HeadBillID"),
  CONSTRAINT "fk_BillDetails_HeadBills1"
    FOREIGN KEY ("HeadBills_HeadBillID1")
    REFERENCES "HeadBills" ("HeadBillID")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
CREATE INDEX "fk_BillDetails_HeadBills1_idx" ON "BillDetails" ("HeadBills_HeadBillID1");


-- -----------------------------------------------------
-- Table "mydbbills"."TaxesStatic"
-- -----------------------------------------------------
CREATE TABLE "TaxesStatic" (
  "TaxStaticID" INTEGER NOT NULL,
  "TaxTypeStatic" VARCHAR(45) NOT NULL,
  "TaxPercentageStatic" VARCHAR(45) NOT NULL,
  "BillDetails_HeadBills_HeadBillID" INTEGER NOT NULL,
  PRIMARY KEY ("TaxStaticID"),
  CONSTRAINT "fk_TaxesStatic_BillDetails1"
    FOREIGN KEY ("BillDetails_HeadBills_HeadBillID")
    REFERENCES "BillDetails" ("HeadBills_HeadBillID")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
CREATE INDEX "fk_TaxesStatic_BillDetails1_idx" ON "TaxesStatic" ("BillDetails_HeadBills_HeadBillID");