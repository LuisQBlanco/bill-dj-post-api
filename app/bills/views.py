from django.shortcuts import render
from django.http import HttpResponse
from rest_framework import viewsets, status
from rest_framework.parsers import JSONParser
from django.http.response import JsonResponse
from django.views.decorators.csrf import csrf_exempt

# from rest_framework.generics import ListAPIView

from core.models import Customer
from bills import serializers

# API
# /customers/

@csrf_exempt
def customer_list(request):

    if request.method == 'GET':
        customers = Customer.objects.all()
        customers_serializer = serializers.CustomersSerializer(customers, many=True)
        return JsonResponse(customers_serializer.data, safe=False)

    if request.method == 'POST':
        customer_data = JSONParser().parse(request)
        customer_serializer = serializers.CustomersSerializer(data=customer_serializer)


@csrf_exempt
def customer_detail(request, pk):
    try:
        customer = Customer.objects.get(pk=pk)
    except Customer.DoesNotExist:
        return HttpResponse(status=status.HTTP_404_NOT_FOUND)

    # Retrive one Customer record
    if request.method == 'GET':
        customer_serializer = serializers.CustomersSerializer(customer)
        return JsonResponse(customer_serializer.data)



# class CustomersList(ListAPIView):
#     queryset = Customers.objects.all()
#     serializer_class = serializers.CustomersSerializer



# class CustomersViewSet(viewsets.GenericViewSet,
#                         mixins.ListModelMixin,
#                         mixins.CreateModelMixin):
#     """Manage Customers in the data base"""
#     queryset = Customers.objects.all()
#     serializer_class = serializers.CustomersSerializer

#     def get_queryset(self):
#         """Return objects"""
#         return self.queryset().order_by('-firstname')
    
#     def perform_create(self, serializer):
#         """Create a new Customer"""
#         serializer.save()