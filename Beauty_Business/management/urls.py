from django.urls import path
from . import views


app_name = "management"
urlpatterns = [
    path("", views.index, name="index"),
    path("sales_record/", views.sales_record, name="sales_record"),
    path("purchases/", views.purchases, name="purchases"),
    path("mark_register/", views.mark_register, name="mark_register"),
    path("category_register/", views.category_register, name="category_register"),
    path("provider_register/", views.provider_register, name="provider_register"),
    path("product_register/", views.product_register, name="product_register"),
    path("stock_register/", views.stock_register, name="stock_register"),
    path("confirmation/", views.confirmation, name="confirmation"),
    path("error_handling/", views.error_handling, name="error_handling")
]
