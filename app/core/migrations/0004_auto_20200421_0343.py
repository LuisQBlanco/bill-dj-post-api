# Generated by Django 2.1.15 on 2020-04-21 03:43

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0003_auto_20200421_0327'),
    ]

    operations = [
        migrations.AlterField(
            model_name='subscription',
            name='SubscriptionCard',
            field=models.CharField(max_length=200, unique=True),
        ),
    ]
