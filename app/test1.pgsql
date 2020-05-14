-- SELECT * FROM core_headbill, core_customer, core_product;

-- SELECT * FROM core_headbill 
-- where "HeadBillID" >= 2 and "HeadBillID" <=5 
-- order by "HeadBillID";

-- SELECT * FROM core_headbill INNER JOIN core_customer 
-- ON (core_headbill."CustomerID_id"=core_customer."CustomerID")
-- WHERE core_headbill."BillNumber"='1';

-- SELECT * FROM core_headbill WHERE coreBillNumber='1';
-- ON (core_headbill.CustomersID_id=core_customer.CustomerID) WHERE BillNumber=1;



-- SELECT "core_headbill"."HeadBillID", "core_headbill"."CustomerID_id",
--  "core_headbill"."BillDate", "core_headbill"."BillNumber" 
--  FROM "core_headbill" INNER JOIN "core_customer" 
--  ON ("core_headbill"."CustomerID_id" = "core_customer"."CustomerID") 
--  INNER JOIN "core_headbill" T3 
--  ON ("core_customer"."CustomerID" = T3."CustomerID_id") 
--  WHERE T3."BillNumber" = '1'


-- SELECT "core_headbill"."HeadBillID", "core_headbill"."CustomerID_id",
--     "core_headbill"."BillDate", "core_headbill"."BillNumber" 
--     FROM "core_headbill" 
--     INNER JOIN "core_customer" 
--     ON ("core_headbill"."CustomerID_id" = "core_customer"."CustomerID") 
--     INNER JOIN "core_headbill" T3 
--     ON ("core_customer"."CustomerID" = T3."CustomerID_id") 
--     WHERE ("core_headbill"."BillNumber" = '1' AND T3."HeadBillID" = 1)


-- SELECT "core_headbill"."BillNumber", bill01."FirstName" 
-- FROM "core_headbill" 
-- INNER JOIN "core_customer" bill01 
-- ON ("core_headbill"."CustomerID_id" = bill01."CustomerID" 
-- AND ("core_headbill"."BillNumber" = '1'))

-- SELECT "core_customer"."CustomerID", "core_customer"."FirstName", "core_customer"."LastName",
--  "core_customer"."Email", "core_customer"."Birthday", "core_customer"."Address",
--   "core_customer"."PostalCode", "core_customer"."Province" 
--   FROM "core_customer" 
--   INNER JOIN "core_headbill" 
--   ON ("core_customer"."CustomerID" = "core_headbill"."CustomerID_id") 
--   WHERE "core_headbill"."BillNumber" = '1' 
--   ORDER BY "core_customer"."LastName" DESC


-- SELECT "core_headbill"."HeadBillID", "core_headbill"."CustomerID_id",
--   "core_headbill"."BillDate", "core_headbill"."BillNumber" 
--   FROM "core_headbill" 
--   INNER JOIN "core_customer" bill01 
--   ON ("core_headbill"."CustomerID_id" = bill01."CustomerID" 
--   AND ("core_headbill"."BillNumber" = '1'))


-- SELECT "core_headbill"."BillNumber", bill01."FirstName" 
-- FROM "core_headbill" INNER JOIN "core_customer" bill01 
-- ON ("core_headbill"."CustomerID_id" = bill01."CustomerID" 
-- AND ("core_headbill"."BillNumber" = '1'))


-- SELECT "core_headbill"."BillNumber", bill."FirstName",
-- bill."LastName", bill."Address", bill."PostalCode" 
-- FROM "core_headbill" 
-- INNER JOIN "core_customer" bill 
-- ON ("core_headbill"."CustomerID_id" = bill."CustomerID" 
-- AND ("core_headbill"."BillNumber" = '1'))


-- **** Get custumer relate to the bill **** 
-- pk=1
-- headbill = HeadBill.objects.annotate(bill=FilteredRelation('CustomerID_id',\
--             condition=Q(BillNumber=str(pk)))).values('BillNumber', 'bill__FirstName',\
--             'bill__LastName', 'bill__Address', 'bill__PostalCode')

-- SELECT "core_headbill"."HeadBillID", "core_headbill"."CustomerID_id",
--  "core_headbill"."BillDate", "core_headbill"."BillNumber" 
--  FROM "core_headbill" 
--  INNER JOIN "core_customer" bill 
--  ON ("core_headbill"."CustomerID_id" = bill."CustomerID" 
--  AND ("core_headbill"."BillNumber" = '1'))




-- SELECT * FROM core_headbill
-- INNER JOIN core_customer 
-- ON (core_headbill."CustomerID_id"=core_customer."CustomerID")
-- INNER JOIN core_billdetail 
-- ON(core_headbill."HeadBillID" = core_billdetail."BillID_id")
-- INNER JOIN core_product 
-- ON (core_billdetail."ProductID_id"= core_product."ProductID")

-- WHERE core_headbill."BillNumber"='1'
-- ;


-- SELECT "core_product"."ProductID", "core_product"."NameProduct", "core_product"."PriceProduct" FROM "core_product" INNER JOIN "core_billdetail" ON ("core_product"."ProductID" = "core_billdetail"."ProductID_id") WHERE "core_billdetail"."BillID_id" = 1 ORDER BY "core_product"."NameProduct" ASC

-- SELECT "core_product"."ProductID", "core_product"."NameProduct", "core_product"."PriceProduct" FROM "core_product" INNER JOIN "core_relationshiptaxproduct" ON ("core_product"."ProductID" = "core_relationshiptaxproduct"."ProductsID_id") WHERE "core_relationshiptaxproduct"."RelationshipTaxProductID" = 1 ORDER BY "core_product"."NameProduct" ASC

-- SELECT "core_product"."ProductID", "core_product"."NameProduct",
--  "core_product"."PriceProduct" 
--  FROM "core_product" 
--  INNER JOIN "core_billdetail" 
--  ON ("core_product"."ProductID" = "core_billdetail"."ProductID_id") 
--  INNER JOIN "core_relationshiptaxproduct" 
--  ON ("core_product"."ProductID" = "core_relationshiptaxproduct"."ProductsID_id") 
--  WHERE ("core_billdetail"."BillID_id" = 1 
--  AND "core_relationshiptaxproduct"."TaxesTypeID_id" = 1) 
--  ORDER BY "core_product"."NameProduct" ASC



-- SELECT *,((core_product."PriceProduct" * core_taxtype."TaxPercentage")/100) as "total_tax" FROM core_headbill
-- INNER JOIN core_customer ON (core_headbill."CustomerID_id"=core_customer."CustomerID")
-- INNER JOIN core_billdetail ON(core_headbill."HeadBillID" = core_billdetail."BillID_id")
-- INNER JOIN core_product ON (core_billdetail."ProductID_id"= core_product."ProductID")
-- INNER JOIN core_relationshiptaxproduct ON (core_product."ProductID" = core_relationshiptaxproduct."ProductsID_id")
-- INNER JOIN core_taxtype ON (core_relationshiptaxproduct."TaxesTypeID_id"=core_taxtype."TaxTypeID")
-- WHERE core_headbill."BillNumber"='1'


-- SELECT "core_product"."ProductID", "core_product"."NameProduct", "core_product"."PriceProduct", 
-- (SELECT U0."TaxType" FROM "core_taxtype" U0 INNER JOIN "core_relationshiptaxproduct" U1 
-- ON (U0."TaxTypeID" = U1."TaxesTypeID_id") 
-- WHERE U1."ProductsID_id" = ("core_product"."ProductID")  LIMIT 1) AS "tax" FROM "core_product" 
-- INNER JOIN "core_billdetail" ON ("core_product"."ProductID" = "core_billdetail"."ProductID_id") 
-- WHERE "core_billdetail"."BillID_id" = 1 ORDER BY "core_product"."NameProduct" ASC


-- SELECT "core_customer"."CustomerID", "core_customer"."FirstName",
--  "core_customer"."LastName" 
--  FROM core_customer;

SELECT * FROM core_headbill INNER JOIN core_customer ON (core_headbill."CustomerID_id"=core_customer."CustomerID");
