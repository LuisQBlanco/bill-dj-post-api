from django.db import models
# from django.conf  import settings
from datetime import date


class Customer(models.Model):
    """Customers to be used in a bill"""
    CustomerID = models.AutoField(primary_key=True)
    FirstName = models.CharField(max_length=200)
    LastName = models.CharField(max_length=200)
    Email = models.EmailField(max_length=200)
    Birthday = models.DateField()
    Address = models.CharField(max_length=255)
    PostalCode = models.CharField(max_length=10)
    Province = models.CharField(max_length=10)

    class Meta:
        ordering = ["-LastName"]

    def __str__(self):
        return str(self.CustomerID)+' - '+self.FirstName+' '+self.LastName

class Subscription(models.Model):
    """Subscriptions to be used with the customer in a bill"""
    SubscriptionID = models.AutoField(primary_key=True)
    SubscriptionCard = models.CharField(max_length=200, unique=True)
    CreateDate = models.DateField(default=date.today)
    ExpDate = models.DateField()
    CustomersID = models.ForeignKey(Customer, related_name='customersID', on_delete=models.CASCADE)

    class Meta:
        ordering = ["SubscriptionID"]

    def __str__(self):
        return self.SubscriptionID
    

class HeadBill(models.Model):
    """HeadBill to be used in a bill"""
    HeadBillID = models.AutoField(primary_key=True)
    CustomerID = models.ForeignKey(Customer, related_name='customerID', on_delete=models.CASCADE)
    BillDate = models.DateField(default=date.today)
    BillNumber = models.CharField(max_length=45, unique=True)

    def __str__(self):
        return str(self.HeadBillID)+' '+str(self.CustomerID)+' ' +str(self.BillDate)+' '+str(self.BillNumber)

class Product(models.Model):
    """Products to be used in a bills detail"""
    ProductID = models.AutoField(primary_key=True)
    NameProduct = models.CharField(max_length=200)
    PriceProduct = models.DecimalField(max_digits=8,decimal_places=2)

    class Meta:
        ordering = ["NameProduct"]

    def __str__(self):
        return str(self.ProductID)+' '+self.NameProduct+' '+str(self.PriceProduct)


class BillDetail(models.Model):
    """BillDetail to be used for contain all the products in a bill"""
    BillDetailID = models.AutoField(primary_key=True)
    BillID = models.ForeignKey(HeadBill, related_name = 'billID', on_delete= models.CASCADE)
    ProductID = models.ForeignKey(Product, related_name= 'productID', on_delete= models.DO_NOTHING)
    # Static_ProductID = models.IntegerField()
    # Static_NameProduct = models.CharField(max_length=200)
    # Static_PriceProduct = models.DecimalField(max_digits=8,decimal_places=2)

    # @property
    # def total_price(self):
    #     qs = self.ProductID.objects.all().aggregate(total_price=models.Sum(product__priceproduct))
    #     return qs['total_price']



class TaxType(models.Model):
    """Type of Taxes for each product to be used in a bill details"""
    TaxTypeID = models.AutoField(primary_key=True)
    TaxType = models.CharField(max_length=200)    
    TaxPercentage = models.DecimalField(max_digits=4,decimal_places=2)

    def __str__(self):
        return str(self.TaxTypeID)+' '+self.TaxType+'  %'+str(self.TaxPercentage)

class RelationshipTaxProduct(models.Model):
    """Relationships between taxes and products """
    RelationshipTaxProductID =models.AutoField(primary_key=True)
    ProductsID = models.ForeignKey(Product, related_name='productsID', on_delete=models.DO_NOTHING)
    TaxesTypeID = models.ForeignKey(TaxType, related_name='taxestypeID',on_delete=models.DO_NOTHING)

class TaxStatic(models.Model):
    """TaxStatic to be used for kepp the value of taxes product"""
    TaxStaticID = models.AutoField(primary_key=True)
    BillDetailID = models.ForeignKey(BillDetail, related_name='billdetailID', on_delete=models.CASCADE)
    TaxTypeStatic = models.CharField(max_length=200)
    TaxPercentageStatic = models.DecimalField(max_digits=4, decimal_places=2)
