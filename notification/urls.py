from django.urls import path
from .views import *

app_name = 'notify'


urlpatterns = [
    path('supermarket/alert/', showNotificationsSupermarket,
         name='super_notification'),
]
