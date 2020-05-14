
``` bash
    python manage.py shell_plus --ipython
```

## Expression in raw SQL to find in Python 

```sql
SELECT * FROM core_headbill
INNER JOIN core_customer 
ON (core_headbill."CustomerID_id"=core_customer."CustomerID")
INNER JOIN core_billdetail 
ON(core_headbill."HeadBillID" = core_billdetail."BillID_id")
INNER JOIN core_product 
ON (core_billdetail."ProductID_id"= core_product."ProductID")

WHERE core_headbill."BillNumber"='1'
;
```

```python


```


```sql
SELECT "core_product"."ProductID", "core_product"."NameProduct", "core_product"."PriceProduct" FROM "core_product" INNER JOIN "core_billdetail" ON ("core_product"."ProductID" = "core_billdetail"."ProductID_id") WHERE "core_billdetail"."BillID_id" = 1 ORDER BY "core_product"."NameProduct" ASC
```