from rest_framework import serializers

from core.models import Customer

# class CustomersSerializer(serializers.ModelSerializer):
class CustomersSerializer(serializers.HyperlinkedModelSerializer):

    """Serializer for a customer objects"""

    class Meta:
        model = Customer
        fields = (  'id',
                    'firstname',
                    'lastname',
                     'email', 'birthday', 'address',
                'postalcode', 'province' )
        # read_only_fields = ('id',)