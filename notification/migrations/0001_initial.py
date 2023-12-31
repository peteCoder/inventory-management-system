# Generated by Django 4.2.5 on 2023-10-14 12:39

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):
    initial = True

    dependencies = [
        ("Supermarket", "0001_initial"),
    ]

    operations = [
        migrations.CreateModel(
            name="SupermarketNotification",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                (
                    "notification_type",
                    models.IntegerField(choices=[(1, "Expired"), (2, "Out Of Stock")]),
                ),
                ("text_preview", models.CharField(blank=True, max_length=1000)),
                ("date", models.DateTimeField(auto_now_add=True)),
                ("date_of_action", models.DateTimeField(blank=True, null=True)),
                ("is_seen", models.BooleanField(default=False)),
                ("ordered_date", models.DateTimeField(auto_now_add=True)),
                (
                    "product",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE,
                        related_name="product_notify",
                        to="Supermarket.products",
                    ),
                ),
            ],
            options={
                "verbose_name": "Supermarket Notification",
                "verbose_name_plural": "Supermarket Notifications",
            },
        ),
    ]
