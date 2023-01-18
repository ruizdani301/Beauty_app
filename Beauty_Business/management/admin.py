from django.contrib import admin
from .models import Category, Mark, Products, Providers, Purchases, Stock, Sales
# Register your models here.

admin.site.register(Stock)
admin.site.register(Sales)
admin.site.register(Category)
admin.site.register(Mark)
admin.site.register(Products)
admin.site.register(Providers)
admin.site.register(Purchases)