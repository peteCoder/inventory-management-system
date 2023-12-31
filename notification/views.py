from django.shortcuts import render
from django.template import loader
from django.http import HttpResponse
from .models import SupermarketNotification


# Create your views here.


def showNotificationsSupermarket(request):
    notifications = SupermarketNotification.objects.all().order_by(
        '-pk')[:5]
    notification_count = SupermarketNotification.objects.filter(
        is_seen=False).all().count()
    notification = SupermarketNotification.objects.filter(is_seen=False).all()

    for notify in notification:
        if notify.is_seen == False:
            notify.is_seen = True
        notify.save()

    template = loader.get_template('Supermarket/alert.html')
    context = {
        'notification_count': notification_count,
        'notifications': notifications,
    }

    return HttpResponse(template.render(context, request))
