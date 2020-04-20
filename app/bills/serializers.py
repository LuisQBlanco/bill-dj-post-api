from rest_framework import serializers

from core.models import Customer, Subscription, Product, TaxType, HeadBill


class CustomerSerializer(serializers.ModelSerializer):

    """Serializer for a customer objects"""

    class Meta:
        model = Customer
        fields = [  'id',
                    'firstname',
                    'lastname',
                    'email',
                    'birthday',
                    'address',
                    'postalcode',
                    'province' ]
        # read_only_fields = ('id',)

class SubscriptionSerializer(serializers.ModelSerializer):

    class Meta:
        model = Subscription
        fields = [  'SubscriptionID',
                    'SubscriptionCard',
                    'CreateDate',
                    'ExpDate']

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

class HeadBillSerializer(serializers.ModelSerializer):

    class Meta:
        model = HeadBill
        # fields = [  'HeadBillID',
        #             'CustomerID',
        #             'BillDate',
        #             'BillNumber']
        fields = '__all__'