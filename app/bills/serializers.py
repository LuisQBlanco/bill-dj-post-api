from rest_framework import serializers
from rest_framework.fields import   CharField,\
                                    IntegerField

import datetime

from core.models import Customer, Subscription, Product, TaxType, HeadBill
from core.models import RelationshipTaxProduct, BillDetail

class CustomerSerializer(serializers.ModelSerializer):

    """Serializer for a customer objects"""

    class Meta:
        model = Customer
        fields = '__all__'

class SubscriptionSerializer(serializers.ModelSerializer):

    customersID = CustomerSerializer(read_only=True,many=True)
    # CreateDate = datetime.date.today

    class Meta:
        model = Subscription
        # fields = [  'SubscriptionID',
        #             'SubscriptionCard',
        #             'CreateDate',
        #             'ExpDate',
        #             'CustomersID']
        fields = '__all__'

class HeadBillSerializer(serializers.ModelSerializer):

    customerID = CustomerSerializer(read_only=True, many=True)

    class Meta:
        
        model = HeadBill
        fields = '__all__'
        # [  'HeadBillID',
        #             'CustomerID',
        #             'BillDate',
        #             'BillNumber']




class ProductSerializer(serializers.ModelSerializer): 

    class Meta:
        model = Product
        fields = [  'ProductID',
                    'NameProduct',
                    'PriceProduct']

class TaxTypeSerializer(serializers.ModelSerializer):

    class Meta:
        model = TaxType
        fields = [  'TaxTypeID',
                    'TaxType',
                    'TaxPercentage']

class RelationshipTaxProductSerializer(serializers.ModelSerializer):

    productsID = ProductSerializer(read_only=True,many=True)
    taxestypeID = TaxTypeSerializer(read_only=True,many=True)

    class Meta:
        model = RelationshipTaxProduct
        fields = '__all__'

class BillDetailSerializer(serializers.ModelSerializer):

    billID = HeadBillSerializer(read_only=True,many=True)
    productsID = ProductSerializer(read_only=True,many=True)

    class Meta:
        model = BillDetail
        fields = '__all__'
        # fields = [  'BillDetailID',
        #             'BillID',
        #             'ProductID',
        #             'total_price']
 

class BillSerializer(serializers.ModelSerializer):

    BillID = IntegerField()
    BCFirstName = CharField(max_length=45)
    BCLastName = CharField(max_length=45)

    class Meta:
        fields = []