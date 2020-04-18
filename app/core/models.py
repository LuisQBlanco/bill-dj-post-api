from django.db import models
# from django.conf  import settings


class Customer(models.Model,):
    """Customers to be used in a bill"""
    firstname = models.CharField(max_length=200)
    lastname = models.CharField(max_length=200)
    email = models.EmailField(max_length=200)
    birthday = models.DateField()
    address = models.CharField(max_length=255)
    postalcode = models.CharField(max_length=10)
    province = models.CharField(max_length=10)

    def __str__(self):
        return self.firstname