-- select * from core_headbill WHERE "HeadBillID" =1 ORDER BY "HeadBillID";
SELECT * from core_headbill INNER join core_customer ON core_customer."CustomerID" = core_headbill."CustomerID_id" WHERE core_headbill."BillNumber"='1'

 