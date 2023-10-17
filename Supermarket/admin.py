from django.contrib import admin
from Supermarket.models import *
from Supermarket.forms import *

# Register your models here

admin.site.register(Products)
admin.site.register(ProductCategory)
admin.site.register(ProductType)
admin.site.register(Supplier)
admin.site.register(Customer)
admin.site.register(Sales)
admin.site.register(SalesList)
admin.site.register(Transactions)

admin.site.register(ProcurementList)
admin.site.register(Procurement)
admin.site.register(Invoice)
