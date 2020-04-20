from django.urls import path, include
from rest_framework.routers import DefaultRouter

from bills import views

from django.conf.urls import url

router = DefaultRouter()
router.register('headbills', views.HeadBillViewSet)

app_name = 'bills'

urlpatterns = [
    # url(r'^customer/$', views.customer_list),
    # url(r'^customer/(?P<pk>[0-9]+)$', views.customer_detail)
    path('customers/',views.customer_list),
    path('customers/<int:pk>',views.customer_detail),
    path('subscriptions/',views.SubscriptionList.as_view()),
    path('subscriptions/<int:pk>',views.SubscriptionDetail.as_view()),
    path("products/", views.ProductList.as_view()),
    path("products/<int:pk>", views.ProductDetail.as_view()),
    path("taxestype/", views.TaxTypeList.as_view()),
    path("taxestype/<int:pk>", views.TaxTypeDetail.as_view()),
    path('api/', include(router.urls))

]
