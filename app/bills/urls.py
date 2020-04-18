from django.urls import path, include
from rest_framework.routers import DefaultRouter

from bills import views

from django.conf.urls import url

# router = DefaultRouter()
# router.register('customers', views.customer_list)

# app_name = 'bills'

urlpatterns = [
    # path('', include(router.urls))
    url(r'^customer/$', views.customer_list),
    url(r'^customer/(?P<pk>[0-9]+)$', views.customer_detail)
]
