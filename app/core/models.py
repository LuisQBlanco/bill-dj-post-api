from django.db import models
# from django.conf  import settings


class Customer(models.Model):
    """Customers to be used in a bill"""
    firstname = models.CharField(max_length=200)
    lastname = models.CharField(max_length=200)
    email = models.EmailField(max_length=200)
    birthday = models.DateField()
    address = models.CharField(max_length=255)
    postalcode = models.CharField(max_length=10)
    province = models.CharField(max_length=10)

    def __str__(self):
        return self.firstname+self.lastname+self.email

class Subscription(models.Model):
    """Subscriptions to be used with the customer in a bill"""
    SubscriptionID = models.AutoField(primary_key=True)
    SubscriptionCard = models.CharField(max_length=200)
    CreateDate = models.DateField()
    ExpDate = models.DateField()

    def __str__(self):
        return self.SubscriptionID+self.SubscriptionCard+self.CreateDate+self.ExpDate
    
class Product(models.Model):
    """Products to be used in a bills detail"""
    ProductID = models.AutoField(primary_key=True)
    NameProduct = models.CharField(max_length=200)
    PriceProduct = models.DecimalField(max_digits=8,decimal_places=2)

    def __str__(self):
        return self.ProductID+self.NameProduct+self.PriceProduct

class TaxType(models.Model):
    """Type of Taxes for each product to be used in a bill details"""
    TaxTypeID = models.AutoField(primary_key=True)
    TaxType = models.CharField(max_length=200)    
    TaxPercentage = models.DecimalField(max_digits=4,decimal_places=2)

    def __str__(self):
        return self.TaxType+self.TaxType+self.TaxPercentage
    
class HeadBill(models.Model):
    """HeadBill to be used in a bill"""
    HeadBillID = models.AutoField(primary_key=True)
    CustomerID = models.IntegerField()
    BillDate = models.DateField()
    BillNumber = models.CharField(max_length=45)

    def __str__(self):
        return self.HeadBillID+self.CustomerID+self.BillDate+self.BillNumber
    
