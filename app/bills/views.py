from django.shortcuts import render
from django.http import HttpResponse
from rest_framework.response import Response
from rest_framework import viewsets, status
from rest_framework.parsers import JSONParser
from rest_framework.decorators import api_view

# For class with APIView
from rest_framework.views import APIView

# For Class with Mixin
# and with Generics
from rest_framework import generics,mixins

# For Class with Generic
from rest_framework import viewsets

# from rest_framework.generics import ListAPIView

from core.models import Customer, Subscription, Product, TaxType
from core.models import  HeadBill, RelationshipTaxProduct, BillDetail
from bills import serializers
from bills.serializers import CustomerSerializer,SubscriptionSerializer
from bills.serializers import ProductSerializer, TaxTypeSerializer, HeadBillSerializer, RelationshipTaxProductSerializer
from bills.serializers import BillSerializer, BillDetailSerializer

from django.db.models import Sum


# API with Class with Generics
# /customers/

class CustomerListView(generics.ListCreateAPIView):
    queryset = Customer.objects.all()
    # order_by('LastName').distinct('LastName')
    serializer_class = CustomerSerializer

class CustomerDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Customer.objects.all()
    serializer_class = CustomerSerializer

# API with Class with Generics
# /subscriptions/

class SubscriptionListView(generics.ListCreateAPIView):
    queryset = Subscription.objects.all()
    serializer_class = SubscriptionSerializer

class SubscriptionDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Subscription.objects.all()
    serializer_class = SubscriptionSerializer

"""
# API with decorators and function
# /customers/

@api_view(['GET','POST'])
def customer_list(request):

    if request.method == 'GET':
        customers = Customer.objects.all()
        customers_serializer = serializers.CustomerSerializer(customers, many=True)
        return Response(customers_serializer.data)

    elif request.method == 'POST':
        # customer_data = JSONParser().parse(request)
        # customer_serializer = serializers.CustomersSerializer(data=customer_data)

        customer_serializer = serializers.CustomerSerializer(data=request.data)
        if customer_serializer.is_valid():
            customer_serializer.save()
            return Response(customer_serializer.data, status=status.HTTP_201_CREATED)
        return Response(customer_serializer.errors, status=status.HTTP_400_BAD_REQUEST)


@api_view(['GET','PUT','DELETE'])
def customer_detail(request, pk):
    try:
        customer = Customer.objects.get(pk=pk)
    except Customer.DoesNotExist:
        return HttpResponse(status=status.HTTP_404_NOT_FOUND)

    # Retrive one Customer record
    if request.method == 'GET':
        customer_serializer = serializers.CustomerSerializer(customer)
        return Response(customer_serializer.data)

    elif request.method == 'PUT':
        customer_serializer = serializers.CustomerSerializer(customer,data=request.data)
        if customer_serializer.is_valid():
            customer_serializer.save()
            return Response(customer_serializer.data)
        return Response(customer_serializer.errors,status=status.HTTP_400_BAD_REQUEST)

    elif request.method == 'DELETE':
        customer.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)

# API with Class with APIView
# /Subscriptions/


class SubscriptionList(APIView):

    def get(self,request):
        subscriptions = Subscription.objects.all()
        serializer = SubscriptionSerializer(subscriptions,many=True)
        return Response(serializer.data)

    def post(self,request):
        serializer = SubscriptionSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data,status=status.HTTP_201_CREATED)
        return Response(serializer.errors,status=status.HTTP_400_BAD_REQUEST)

class SubscriptionDetail(APIView):
    def get_object(self,pk):
        try:
            return Subscription.objects.get(pk=pk)
        except Subscription.DoesNotExist:
            raise Http404

    def get(self,request,pk):
        subscription = self.get_object(pk)
        serializer = SubscriptionSerializer(subscription)
        return Response(serializer.data)

    def put(self,request,pk):
        subscription  = self.get_object(pk)
        serializer = SubscriptionSerializer(subscription,data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        
    def delete(self,request,pk):
        subscription = self.get_object(pk)
        subscription.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)

"""

# API with Class with Mixin
# /products/

class ProductList(mixins.ListModelMixin,mixins.CreateModelMixin,generics.GenericAPIView):
    queryset = Product.objects.all()
    serializer_class = ProductSerializer

    def get(self,request):
        return self.list(request)
    
    def post(self,request):
        return self.create(request)

class ProductDetail(mixins.RetrieveModelMixin,mixins.UpdateModelMixin,mixins.DestroyModelMixin,generics.GenericAPIView):
    queryset = Product.objects.all()
    serializer_class = ProductSerializer

    def get(self,request,pk):
        return self.retrieve(request,pk)

    def put(self,request,pk):
        return self.update(request,pk)
    
    def delete(self,request,pk):
        return self.destroy(request,pk)

# API with Class with Generics
# /taxestype/

class TaxTypeList(generics.ListCreateAPIView):
    queryset = TaxType.objects.all()
    serializer_class = TaxTypeSerializer

class TaxTypeDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = TaxType.objects.all()
    serializer_class = TaxTypeSerializer

# API with Class with ViewSets
# api2/relationshipTaxProduct/

class RelationshipTaxProductViewSet(viewsets.ModelViewSet):
    queryset = RelationshipTaxProduct.objects.all()
    serializer_class = RelationshipTaxProductSerializer


# API with Class with Viewsets
# /headbill/

class HeadBillViewSet(viewsets.ModelViewSet):
    queryset = HeadBill.objects.all()
    serializer_class = HeadBillSerializer

# API with Class with Viewsets
# /billdetail/

class BillDetailViewSet(viewsets.ModelViewSet):
    queryset = BillDetail.objects.all()
    serializer_class = BillDetailSerializer

# API with decorators and function
# /bill/

@api_view(['GET'])
def BillDetail_list(request, pk):

    try:
        headbill = HeadBill.objects.get(pk=pk)
    except HeadBill.DoesNotExist:
        return HttpResponse(status=status.HTTP_404_NOT_FOUND)
    

    # Retrive one Bill record
    if request.method == 'GET':
        billdata ={}
        headbill_serializer = serializers.HeadBillSerializer(headbill)    
        # data=headbill_serializer.data.get('HeadBillID')
        billidnow = headbill_serializer.data.get('HeadBillID')        
        billdata['HeadBillID'] = billidnow
        billdata['BillDate'] = headbill_serializer.data.get('BillDate')
        customerid = headbill_serializer.data.get('CustomerID')
        try:
            customer = Customer.objects.get(pk=customerid)
        except Customer.DoesNotExist:
            return HttpResponse(status=status.HTTP_404_NOT_FOUND)
        customer_serializer = serializers.CustomerSerializer(customer)
        billdata['FirstName'] = customer_serializer.data.get('FirstName')
        billdata['LastName'] = customer_serializer.data.get('LastName')
        billdata['Address'] = customer_serializer.data.get('Address')
        billdata['PostalCode'] = customer_serializer.data.get('PostalCode')

        billproductsid = BillDetail.objects.filter(BillID=1)
        serializer_billprodid = serializers.BillDetailSerializer(billproductsid, many=True)
    


        # test1 = BillDetail.objects.filter(productID__)
        billproductsid2 = Product.objects.filter(productID__BillID=billidnow).values('NameProduct', 'PriceProduct')
        # billprodList_serializer = serializers.ProductSerializer(billproductsid2, many=True)

        # billdata['Products'] = billprodList_serializer
        billdata['Products'] = billproductsid2

        # billproductsid = BillDetail.objects.filter(BillID=1).values('ProductID')
        # serializer_billprodid = serializers.BillDetailSerializer(billproductsid, many=True)
        # billprodid_list = serializer_billprodid.data
        

        # billdata['NameProduct'] = billproductsid2
        total_price = Product.objects.filter(productID__BillID=billidnow).aggregate(total_price=Sum('PriceProduct'))

        billdata['TotalPrice'] = total_price['total_price'] 
        

        billdata1=BillSerializer() 


        bill_serializer = serializers.BillSerializer(billdata)
        return Response(billdata)
